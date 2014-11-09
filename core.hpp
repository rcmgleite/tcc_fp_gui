#ifndef TEST_HPP
#define TEST_HPP
#include <QObject>
#include <iostream>
#include "TCC FP.hpp"
#include "HasCallbackClass.hpp"

using namespace std;

/*
*   Core implementa a interface HasCallbackClass para
*   No eclipse, possa chamar um callback ao final da execucao do main
*/
#include <string>
class Core: public QObject, public HasCallbackClass{
    Q_OBJECT
private:
    Main main;

public:
    Core(){

    }
    void callback(void);
    /*
    *   Todo o método C++ que vai ser chamado no QML tem q ser Q_INVOKABLE
    */
    Q_INVOKABLE void execute(int mode);
    Q_INVOKABLE void metricsScreenRequest();
    Q_INVOKABLE void initalScreenRequest();
    Q_INVOKABLE void stagesScreenRequest();

    Q_INVOKABLE float getWindowingTime(void);
    Q_INVOKABLE float getEqualizationTime(void);
    Q_INVOKABLE float getGaborFilterTime(void);
    Q_INVOKABLE float getBinarizationTime(void);
    Q_INVOKABLE float getMinutiaeExtractionTime(void);
    Q_INVOKABLE float getMatchingTime(void);
    Q_INVOKABLE bool getAccepted(void);

signals:
    void executionComplete();
    void signalMetricsScreenRequest();
    void signalInitialScreenRequest();
    void signalStagesScreenRequest();
};

#endif // TEST_HPP
