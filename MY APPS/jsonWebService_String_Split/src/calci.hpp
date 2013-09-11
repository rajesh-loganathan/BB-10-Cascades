// Default empty project template
#ifndef CALCI_HPP_
#define CALCI_HPP_

#include <QObject>
#include <bb/cascades/QListDataModel>
#include <bb/cascades/GroupDataModel>
#include <bb/cascades/AbstractPane>
//#include <bb/cascades/ArrayDataModel>>


namespace bb { namespace cascades { class Application; }}

class controller : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bb::cascades::DataModel* model READ model CONSTANT)
    Q_PROPERTY(bool succeeded READ succeeded NOTIFY statusChanged)
    Q_PROPERTY(bool active READ active NOTIFY activeChanged)

    Q_PROPERTY(QString temperature READ temperature NOTIFY temperatureChanged)
	Q_PROPERTY(QString description READ description NOTIFY descriptionChanged)


public:
    controller(QObject *parent = 0);
    bool succeeded() const;
    bool active() const;

    QString temperature() const;
 	QString description() const;

public Q_SLOTS:
    void sendRequest(const QString &CategoryName);

Q_SIGNALS:
	void statusChanged();
    void activeChanged();

    void temperatureChanged();
	void descriptionChanged();

private:
    bb::cascades::DataModel* model() const;
   // QString m_name;
    bool m_succeeded;            // flag to determine whether request succeeded
	bool m_active;
	bb::cascades::GroupDataModel* m_model;
	bb::cascades::AbstractPane* m_root;

	QString m_temperature;
	QString m_description;

private Q_SLOTS:

    void onFinished();
protected:

};


#endif

