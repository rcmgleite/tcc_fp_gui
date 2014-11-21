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

    QString currState = "default";
    bool hasExecuted = false;

    Q_INVOKABLE void setCurrState(QString state){
        this->currState = state;
    }

    Q_INVOKABLE QString getCurrState(){
        return this->currState;
    }

    Q_INVOKABLE void setHasExecuted(bool hasExecuted){
        this->hasExecuted = hasExecuted;
    }

    Q_INVOKABLE bool getHasExecuted(void){
        return this->hasExecuted;
    }

    void callback(void);
    /*
    *   Todo o método C++ que vai ser chamado no QML tem q ser Q_INVOKABLE
    */
    Q_INVOKABLE void execute();
    //SCREENS
    Q_INVOKABLE void metricsScreenRequest();
    Q_INVOKABLE void algorithmScreenRequest();
    Q_INVOKABLE void stagesScreenRequest();

    Q_INVOKABLE bool getAccepted1(void);
    Q_INVOKABLE bool getAccepted2(void);
    Q_INVOKABLE bool getAccepted31(void);
    Q_INVOKABLE bool getAccepted32(void);
    Q_INVOKABLE bool getAccepted33(void);
    Q_INVOKABLE void setFeedback(bool feedback);


    Q_INVOKABLE float getMatchingTime1(void);
    Q_INVOKABLE float getMinutiaeExtractionTime1(void);
    Q_INVOKABLE float getMinutiaeExtractionTime2(void);
    Q_INVOKABLE float getMatchingTime2(void);
    Q_INVOKABLE float getEqualizationTime2(void);
    Q_INVOKABLE float getBinarizationTime2(void);

    Q_INVOKABLE float getMinutiaeExtractionTime3(void);
    Q_INVOKABLE float getMatchingTime31(void);
    Q_INVOKABLE float getMatchingTime32(void);
    Q_INVOKABLE float getMatchingTime33(void);
    Q_INVOKABLE float getWindowingTime3(void);
    Q_INVOKABLE float getEqualizationTime3(void);
    Q_INVOKABLE float getGaborFilterTime3(void);
    Q_INVOKABLE float getBinarizationTime3(void);

    Q_INVOKABLE float getTotalTime1(void);
    Q_INVOKABLE float getTotalTime2(void);
    Q_INVOKABLE float getTotalTime31(void);
    Q_INVOKABLE float getTotalTime32(void);
    Q_INVOKABLE float getTotalTime33(void);

    Q_INVOKABLE int getMinutiaeQuantity1(void);
    Q_INVOKABLE int getMinutiaeQuantity2(void);
    Q_INVOKABLE int getMinutiaeQuantity3(void);

    Q_INVOKABLE float getMinutiaeQuality1(void);
    Q_INVOKABLE float getMinutiaeQuality2(void);
    Q_INVOKABLE float getMinutiaeQuality3(void);

    Q_INVOKABLE float getFar1(void);
    Q_INVOKABLE float getFar2(void);
    Q_INVOKABLE float getFar31(void);
    Q_INVOKABLE float getFar32(void);
    Q_INVOKABLE float getFar33(void);

    Q_INVOKABLE float getFrr1(void);
    Q_INVOKABLE float getFrr2(void);
    Q_INVOKABLE float getFrr31(void);
    Q_INVOKABLE float getFrr32(void);
    Q_INVOKABLE float getFrr33(void);

    Q_INVOKABLE float getTar1(void);
    Q_INVOKABLE float getTar2(void);
    Q_INVOKABLE float getTar31(void);
    Q_INVOKABLE float getTar32(void);
    Q_INVOKABLE float getTar33(void);

    Q_INVOKABLE float getTrr1(void);
    Q_INVOKABLE float getTrr2(void);
    Q_INVOKABLE float getTrr31(void);
    Q_INVOKABLE float getTrr32(void);
    Q_INVOKABLE float getTrr33(void);

signals:
    void executionComplete();
    void signalMetricsScreenRequest();
    void signalAlgorithmScreenRequest();
    void signalStagesScreenRequest();

    //STEPS
    void signalWindowingStepRequest();
    void signalEqualizationStepRequest();
    void signalGaborStepRequest();
    void signalBinarizationStepRequest();
    void signalMinutiaExtractionStepRequest();
    void signalMatchingStepRequest();
};

#endif // TEST_HPP
