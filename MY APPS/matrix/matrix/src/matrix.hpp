// Default empty project template
#ifndef MATRIX_HPP_
#define MATRIX_HPP_


#include <QObject>


namespace bb { namespace cascades { class Application; }}


class sudoku : public QObject
{
    Q_OBJECT
public:
    sudoku(bb::cascades::Application *app);

    virtual ~sudoku() {}
};




#endif /* ApplicationUI_HPP_ */
