#include "applicationui.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <bb/cascades/Page>
#include <bb/cascades/NavigationPane>
#include <bb/cascades/LocaleHandler>
#include <bb/cascades/ListView>
#include <bb/cascades/ArrayDataModel>

#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QUrl>
#include <bb/data/JsonDataAccess>
#include <bb/cascades/QListDataModel>
#include <QStringList>


using namespace bb::cascades;
using namespace bb::data;



ApplicationUI::ApplicationUI(bb::cascades::Application *app) :
        QObject(app)
	, m_succeeded(false)
    , m_active(false)
{
    // prepare the localization
    m_pTranslator = new QTranslator(this);
    m_pLocaleHandler = new LocaleHandler(this);
    if(!QObject::connect(m_pLocaleHandler, SIGNAL(systemLanguageChanged()), this, SLOT(onSystemLanguageChanged()))) {
        // This is an abnormal situation! Something went wrong!
        // Add own code to recover here
        qWarning() << "Recovering from a failed connect()";
    }
    // initial load
    onSystemLanguageChanged();





    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
        qml->setContextProperty("app", this);
        //qml->setContextProperty("second", m_pane);

        m_root = qml->createRootObject<AbstractPane>();

        m_pane = new NavigationPane;


        app->setScene(m_root);




}

void ApplicationUI::onSystemLanguageChanged()
{
    QCoreApplication::instance()->removeTranslator(m_pTranslator);
    // Initiate, load and install the application translation files.
    QString locale_string = QLocale().name();
    QString file_name = QString("ers2page_%1").arg(locale_string);
    if (m_pTranslator->load(file_name, "app/native/qm")) {
        QCoreApplication::instance()->installTranslator(m_pTranslator);
    }
}

void ApplicationUI::clickedButton(const QString &company, const QString &hr, const QString &emailid, const QString &address, const QString &phoneno, const QString &password, const QString &vnumber, const QString &vmodel, const QString &urllink)
{



		 m_company=company;
	     m_hr=hr;
	     m_emailid=emailid;
	     m_address=address;
	     m_phoneno=phoneno;
	     m_password=password;
	     m_vnumber=vnumber;
	     m_vmodel=vmodel;
	     m_urllink=urllink;

	     	 	emit companynameChanged();
	     	 	emit hrChanged();
	     	 	emit emailidChanged();
	     	 	emit addressChanged();
	     	 	emit phonenoChanged();
	     	 	emit passwordChanged();
	     	 	emit vnumberChanged();
	     	 	emit vmodelChanged();
	     	 	emit urllinkChanged();

	     	 	void sendRequest();
	     	 	void onFinished();


}



bool ApplicationUI::succeeded() const
{
    return m_succeeded;
}

bool ApplicationUI::active() const
{
    return m_active;
}






void ApplicationUI::setcompanyname(const QString &company)
{
    if (m_company == company)
        return;

    m_company = company;
    emit companynameChanged();
}

QString ApplicationUI::companyname() const
{
    return m_company;
}


void ApplicationUI::sethr(const QString &hr)
{
    if (m_hr == hr)
        return;

    m_hr = hr;
    emit hrChanged();
}
QString ApplicationUI::hr() const
{
    return m_hr;
}

void ApplicationUI::setemailid(const QString &emailid)
{
    if (m_emailid == emailid)
        return;

    m_emailid = emailid;
    emit emailidChanged();
}
QString ApplicationUI::emailid() const
{
    return m_emailid;
}

void ApplicationUI::setaddress(const QString &address)
{
    if (m_address == address)
        return;

    m_address = address;
    emit addressChanged();
}
QString ApplicationUI::address() const
{
    return m_address;
}

void ApplicationUI::setphoneno(const QString &phoneno)
{
    if (m_phoneno == phoneno)
        return;

    m_phoneno = phoneno;
    emit phonenoChanged();
}
QString ApplicationUI::phoneno() const
{
    return m_phoneno;
}

void ApplicationUI::setpassword(const QString &password)
{
    if (m_password == password)
        return;

    m_password = password;
    emit passwordChanged();
}
QString ApplicationUI::password() const
{
    return m_password;
}

void ApplicationUI::setvnumber(const QString &vnumber)
{
    if (m_vnumber == vnumber)
        return;

    m_vnumber = vnumber;
    emit vnumberChanged();
}
QString ApplicationUI::vnumber() const
{
    return m_vnumber;
}

void ApplicationUI::setvmodel(const QString &vmodel)
{
    if (m_vmodel == vmodel)
        return;

    m_vmodel = vmodel;
    emit vmodelChanged();
}
QString ApplicationUI::vmodel() const
{
    return m_vmodel;
}



void ApplicationUI::seturllink(const QString &urllink)
{
    if (m_urllink == urllink)
        return;

    m_urllink = urllink;
    emit urllinkChanged();
}

QString ApplicationUI::urllink() const
{
    return m_urllink;
}



void ApplicationUI::seturlResult(const QString &result)
{
    if (m_urlResult == result)
    	qDebug()<<"\n\n url result 1.1."<<m_urlResult;
        return;

    m_urlResult = result;
    emit urlResultChanged();
    qDebug()<<"\n\n url result 1.2"<<m_urlResult;
}

QString ApplicationUI::urlResult() const
{
	qDebug()<<"\n\n url result 2.1"<<m_urlResult;
    return m_urlResult;

}






void ApplicationUI::sendRequest()
{

	if (m_active)
	        return;

	m_active = true;
		emit activeChanged();

	m_succeeded = false;


    QNetworkAccessManager* networkAccessManager = new QNetworkAccessManager(this);

    //const QString queryUri = QString::fromLatin1("http://livetracking.entermobileapps.com/Mobile/Service1.svc/Mobile/CompanyRegistration?CompanyName=%@&HRName=%@&Address=%@&Email=%@&Phoneno=%@&Password=%@&VehicleNumber=%@&VehicleModel=%@&DevicID=1282678").arg(m_company).arg(m_hr).arg(m_emailid).arg(m_address).arg(m_phoneno).arg(m_password).arg(m_vnumber).arg(m_vmodel);
   // const QString queryUri = QString::fromLatin1(m_urllink);

    QNetworkRequest request(m_urllink);

    QNetworkReply* reply = networkAccessManager->get(request);

    bool ok = connect(reply, SIGNAL(finished()), this, SLOT(onFinished()));
    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void ApplicationUI::onFinished()
{

	m_succeeded = true;

	QNetworkReply* reply = qobject_cast<QNetworkReply*>(sender());
	//ArrayDataModel *model = new ArrayDataModel();

	QString response;
	if (reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt() == 200)
	{
		    JsonDataAccess jda;

	        QVariantMap map = jda.loadFromBuffer(reply->readAll()).toMap();

	        QVariantList addresses = map["RegistrationResult"].toList();
	        qDebug()<<"\n\n\n\n";
	        qDebug() <<"Full Result is = "<<map["RegistrationResult"].toString();

	        QString m_temperature;
	        QString result;


	        result = map["RegistrationResult"].toString();
	        m_temperature=result.section(':', 0, 0);

	        m_urlResult = result;
	        emit urlResultChanged();
	        qDebug()<<m_urlResult;
	        qDebug()<<"\n\n\n";
	        if(result == "EMAIL ID ALREADY EXISTS")
	        {

	        	        qDebug() << " New Registration Result is " <<m_temperature;
	        	        qDebug() <<map["RegistrationResult"].toString();

	        }

	        else if(result != "EMAIL ID ALREADY EXISTS")
	        {

	        	        QString empid;
	        	        QString empid_no;
	        	        QString companyname;
	        	        QString::SectionFlag flag = QString::SectionSkipEmpty;

	        	        result = map["RegistrationResult"].toString();
	        	        //empid=m_temperature.section(':', 1, 1);
	        	        empid_no = map["RegistrationResult"].toString();;
	        	        empid_no=empid_no.section(':', 2, 2);
	        	        qDebug()<<"Emd ID = "<<empid_no;
	        	        qDebug()<<"Company ID"<<result.section(':', 4, 4);

	        	       QmlDocument *qml = QmlDocument::create("asset:///second.qml").parent(this);
	        	       Page *new_Page = qml->createRootObject<Page>();
	        	       m_pane->push(new_Page);


	        }

	       // QString result;
	        //result = map["RegistrationResult"].toList();
	        //qDebug()<<result.section(':', 1, 1)<<"  =  "<<result.section(':', 2, 2);


	    }
	    else {
	        qDebug() << "Server returned code " << reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt();
	    }

		emit statusChanged();

	   m_active = false;
	    	emit activeChanged();
	}
