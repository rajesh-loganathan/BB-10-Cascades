// Default empty project template
#ifndef Ebooks_HPP_
#define Ebooks_HPP_

#include <QObject>
#include <bb/cascades/Application>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class EbooksApp : public QObject
{
    Q_OBJECT


public:
    EbooksApp();

    ~EbooksApp();




private:
    void addAppCover();

};


#endif /* Ebooks_HPP_ */
