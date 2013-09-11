#ifndef ApplicationUI_HPP_
#define ApplicationUI_HPP_

#include <QObject>

namespace bb
{
    namespace cascades
    {
        class Application;
        class LocaleHandler;
    }
}

class QTranslator;

/*!
 * @brief Application object
 *
 *
 */

class ApplicationUI : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString companyname READ companyname WRITE setcompanyname NOTIFY companynameChanged)
    Q_PROPERTY(QString hr READ hr WRITE sethr NOTIFY hrChanged)
    Q_PROPERTY(QString emailid READ emailid WRITE setemailid NOTIFY emailidChanged)
    Q_PROPERTY(QString address READ address WRITE setaddress NOTIFY addressChanged)
    Q_PROPERTY(QString phoneno READ phoneno WRITE setphoneno NOTIFY phonenoChanged)
    Q_PROPERTY(QString password READ password WRITE setpassword NOTIFY passwordChanged)
    Q_PROPERTY(QString vnumber READ vnumber WRITE setvnumber NOTIFY vnumberChanged)
    Q_PROPERTY(QString vmodel READ vmodel WRITE setvmodel NOTIFY vmodelChanged)
    Q_PROPERTY(QString urllink READ urllink WRITE seturllink NOTIFY urllinkChanged)


public:
    ApplicationUI(bb::cascades::Application *app);
    virtual ~ApplicationUI() { }
public slots:
    void onSystemLanguageChanged();
    void clickedButton(const QString &company, const QString &hr, const QString &emailid, const QString &address, const QString &phoneno, const QString &password, const QString &vnumber, const QString &vmodel, const QString &urllink);
    void sendRequest();
 Q_SIGNALS:
        // The change notification signals of the properties
        void companynameChanged();
        void hrChanged();
        void emailidChanged();
        void addressChanged();
        void phonenoChanged();
        void passwordChanged();
        void vnumberChanged();
        void vmodelChanged();
        void urllinkChanged();

private:
    QTranslator* m_pTranslator;
    bb::cascades::LocaleHandler* m_pLocaleHandler;



    void setcompanyname(const QString &company);
       QString companyname() const;

     void sethr(const QString &hr);
        QString hr() const;

      void setemailid(const QString &emailid);
          QString emailid() const;

      void setaddress(const QString &address);
           QString address() const;

       void setphoneno(const QString &phoneno);
             QString phoneno() const;

       void setpassword(const QString &password);
             QString password() const;

       void setvnumber(const QString &vnumber);
             QString vnumber() const;

       void setvmodel(const QString &vmodel);
             QString vmodel() const;

	 void seturllink(const QString &urllink);
		  QString urllink() const;







    	QString m_company;
        QString m_hr;
        QString m_emailid;
        QString m_address;
        QString m_phoneno;
        QString m_password;
        QString m_vnumber;
        QString m_vmodel;
        QString m_urllink;

        private Q_SLOTS:

                    void onFinished();
};

#endif /* ApplicationUI_HPP_ */
