// Default empty project template
#ifndef CALCI_HPP_
#define CALCI_HPP_

#include <QObject>





class controller : public QObject
{
    Q_OBJECT
public:
    controller(QObject *parent = 0);
    Q_INVOKABLE double clickedButton(int no1, int no2);
    virtual ~controller() {}

private:
    int m_result;

};


#endif

