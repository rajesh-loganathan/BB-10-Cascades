#include "applicationui.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <bb/cascades/LocaleHandler>

using namespace bb::cascades;

ApplicationUI::ApplicationUI(bb::cascades::Application *app) :
        QObject(app)
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

    // Create scene document from main.qml asset, the parent is set
    // to ensure the document gets destroyed properly at shut down.
    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
        qml->setContextProperty("app", this);

        AbstractPane *root = qml->createRootObject<AbstractPane>();

        app->setScene(root);
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

void ApplicationUI::clickedButton(const QString &company, const QString &hr, const QString &emailid, const QString &address, const QString &phoneno, const QString &password, const QString &vnumber, const QString &vmodel)
{



		 m_company=company;
	     m_hr=hr;
	     m_emailid=emailid;
	     m_address=address;
	     m_phoneno=phoneno;
	     m_password=password;
	     m_vnumber=vnumber;
	     m_vmodel=vmodel;

	     	 	emit companynameChanged();
	     	 	emit hrChanged();
	     	 	emit emailidChanged();
	     	 	emit addressChanged();
	     	 	emit phonenoChanged();
	     	 	emit passwordChanged();
	     	 	emit vnumberChanged();
	     	 	emit vmodelChanged();


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

/*
QString ApplicationUI::companyname1() const
{
	return m_company;
}
QString ApplicationUI::hrname() const
{
	return m_hr;
}
QString ApplicationUI::emailid() const
{
	return m_emailid;
}
QString ApplicationUI::address() const
{
	return m_address;
}
QString ApplicationUI::phoneno() const
{
	return m_phoneno;
}
QString ApplicationUI::password() const
{
	return m_password;
}
QString ApplicationUI::vnumber() const
{
	return m_vnumber;
}
QString ApplicationUI::vmodel() const
{
	return m_vmodel;
}
*/
