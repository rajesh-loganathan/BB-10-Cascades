// Default empty project template
#ifndef CALCI_HPP_
#define CALCI_HPP_

#include <QObject>
#include <bb/cascades/QListDataModel>
#include <bb/cascades/GroupDataModel>
//#include <bb/cascades/ArrayDataModel>>


namespace bb { namespace cascades { class Application; }}

class controller : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bb::cascades::DataModel* model READ model CONSTANT)

    Q_PROPERTY(bool succeeded READ succeeded NOTIFY statusChanged)
    Q_PROPERTY(bool active READ active NOTIFY activeChanged)


public:
    controller(QObject *parent = 0);
    bool succeeded() const;
    bool active() const;

public Q_SLOTS:
    void sendRequest(const QString &CategoryName);

Q_SIGNALS:
	void statusChanged();
    void activeChanged();


private:
    bb::cascades::DataModel* model() const;

    bool m_succeeded;            // flag to determine whether request succeeded
	bool m_active;
	bb::cascades::GroupDataModel* m_model;
private Q_SLOTS:

    void onFinished();

};


#endif

