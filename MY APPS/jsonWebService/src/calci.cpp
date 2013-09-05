// Default empty project template
#include "calci.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkReply>
#include <QtNetwork/QNetworkRequest>
#include <QUrl>
#include <bb/data/JsonDataAccess>

using namespace bb::cascades;
using namespace bb::data;

controller::controller(bb::cascades::Application *app)
: QObject(app)
{

    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
    qml->setContextProperty("app", this);

    AbstractPane *root = qml->createRootObject<AbstractPane>();

    app->setScene(root);
}


void controller::sendRequest(const QString &countryID)
{

    QNetworkAccessManager* networkAccessManager = new QNetworkAccessManager(this);

    const QString queryUri = QString::fromLatin1("http://192.168.1.251:410/Mobile/Service1.svc/english/Category?CountryID=%1").arg(countryID);

    QNetworkRequest request(queryUri);

    QNetworkReply* reply = networkAccessManager->get(request);

    bool ok = connect(reply, SIGNAL(finished()), this, SLOT(onFinished()));
    Q_ASSERT(ok);
    Q_UNUSED(ok);
}


void controller::onFinished()
{
	QNetworkReply* reply = qobject_cast<QNetworkReply*>(sender());
	QString response;
	if (reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt() == 200)
	{
		    JsonDataAccess jda;
	        QVariantMap map = jda.loadFromBuffer(reply->readAll()).toMap();

	        QVariantList addresses = map["GetCategoryResult"].toList();

	        foreach(QVariant var, addresses) {
	            QVariantMap addressMap = var.toMap();

	            qDebug() << "CategoryName is " << addressMap["CategoryName"].toString();
	            qDebug() << "CategoryID is " << addressMap["CategoryID"].toString();
	        }
	    }
	    else {
	        qDebug() << "Server returned code " << reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt();
	    }
	}


