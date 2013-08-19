// Default empty project template
#include "second.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;


controller::controller(QObject *parent)
: QObject(parent)
		, m_result(0)
{


}


double controller::addbtn(int no1,int no2)
{
	m_result = no1 + no2;
    return (m_result);
}
