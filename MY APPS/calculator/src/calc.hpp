// Default empty project template
#ifndef CALC_HPP_
#define CALC_HPP_

#include <QObject>


namespace bb { namespace cascades { class Application; }}


class calculator : public QObject
{
    Q_OBJECT
public:
    calculator(bb::cascades::Application *app);



    virtual ~calculator() {}
};


#endif /* ApplicationUI_HPP_ */
