// Default empty project template
#ifndef CALCI_HPP_
#define CALCI_HPP_

#include <QObject>


namespace bb { namespace cascades { class Application; }}



class controller : public QObject
{
    Q_OBJECT
public:
    controller(bb::cascades::Application *app);


public Q_SLOTS:
    void sendRequest(const QString &countryID);


private Q_SLOTS:

    void onFinished();

};


#endif

