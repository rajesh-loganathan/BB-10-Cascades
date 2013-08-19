/*
 * second.hpp
 *
 *  Created on: Aug 8, 2013
 *      Author: Blaze
 */

#ifndef SECOND_HPP_
#define SECOND_HPP_

#include <QtCore/QObject>





class controller : public QObject
{
    Q_OBJECT

public:
    controller(QObject *parent = 0);
    Q_INVOKABLE double addbtn(int no1, int no2);
    virtual ~controller() {}

private:
    int m_result;

};





#endif /* SECOND_HPP_ */
