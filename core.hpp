#ifndef TEST_HPP
#define TEST_HPP
#include <QObject>
#include <iostream>
#include "TCC FP.hpp"

using namespace std;

/*
*   Classe exemplo.. como chamar funcoes de C++ no QML.
*/
#include <string>
class Core: public QObject{
    Q_OBJECT
private:
    std::string name;
    Main main;

public:
    Core(){
        this->name = "Rafael";
    }

    /*
    *   Todo o método C++ que vai ser chamado no QML tem q ser Q_INVOKABLE
    */
    Q_INVOKABLE QString getName();
    Q_INVOKABLE void setName(QString);
    Q_INVOKABLE void execute(void);

    Q_INVOKABLE float getWindowingTime(void);
    Q_INVOKABLE float getEqualizationTime(void);
    Q_INVOKABLE float getGaborFilterTime(void);
    Q_INVOKABLE float getBinarizationTime(void);
    Q_INVOKABLE float getMinutiaeExtractionTime(void);
    Q_INVOKABLE float getMatchingTime(void);
};

#endif // TEST_HPP
