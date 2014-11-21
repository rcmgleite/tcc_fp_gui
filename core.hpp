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

    //STATES
    Q_INVOKABLE void windowingStepRequest();
    Q_INVOKABLE void equalizationStepRequest();
    Q_INVOKABLE void gaborStepRequest();
    Q_INVOKABLE void binarizationStepRequest();
    Q_INVOKABLE void minutiaExtractionStepRequest();
    Q_INVOKABLE void matchingStepRequest();

    Q_INVOKABLE bool getAccepted1(void);
    Q_INVOKABLE bool getAccepted2(void);
    Q_INVOKABLE bool getAccepted31(void);
    Q_INVOKABLE bool getAccepted32(void);
    Q_INVOKABLE bool getAccepted33(void);
    Q_INVOKABLE void setFeedback(bool feedback);


    Q_INVOKABLE QString getMatchingTime1(void);
    Q_INVOKABLE QString getMinutiaeExtractionTime1(void);
    Q_INVOKABLE QString getMinutiaeExtractionTime2(void);
    Q_INVOKABLE QString getMatchingTime2(void);
    Q_INVOKABLE QString getEqualizationTime2(void);
    Q_INVOKABLE QString getBinarizationTime2(void);

    Q_INVOKABLE QString getMinutiaeExtractionTime3(void);
    Q_INVOKABLE QString getMatchingTime31(void);
    Q_INVOKABLE QString getMatchingTime32(void);
    Q_INVOKABLE QString getMatchingTime33(void);
    Q_INVOKABLE QString getWindowingTime3(void);
    Q_INVOKABLE QString getEqualizationTime3(void);
    Q_INVOKABLE QString getGaborFilterTime3(void);
    Q_INVOKABLE QString getBinarizationTime3(void);

    Q_INVOKABLE QString getTotalTime1(void);
    Q_INVOKABLE QString getTotalTime2(void);
    Q_INVOKABLE QString getTotalTime31(void);
    Q_INVOKABLE QString getTotalTime32(void);
    Q_INVOKABLE QString getTotalTime33(void);

    Q_INVOKABLE int getMinutiaeQuantity1(void);
    Q_INVOKABLE int getMinutiaeQuantity2(void);
    Q_INVOKABLE int getMinutiaeQuantity3(void);

    Q_INVOKABLE QString getMinutiaeQuality1(void);
    Q_INVOKABLE QString getMinutiaeQuality2(void);
    Q_INVOKABLE QString getMinutiaeQuality3(void);

    Q_INVOKABLE QString getFar1(void);
    Q_INVOKABLE QString getFar2(void);
    Q_INVOKABLE QString getFar31(void);
    Q_INVOKABLE QString getFar32(void);
    Q_INVOKABLE QString getFar33(void);

    Q_INVOKABLE QString getFrr1(void);
    Q_INVOKABLE QString getFrr2(void);
    Q_INVOKABLE QString getFrr31(void);
    Q_INVOKABLE QString getFrr32(void);
    Q_INVOKABLE QString getFrr33(void);

    Q_INVOKABLE QString getTar1(void);
    Q_INVOKABLE QString getTar2(void);
    Q_INVOKABLE QString getTar31(void);
    Q_INVOKABLE QString getTar32(void);
    Q_INVOKABLE QString getTar33(void);

    Q_INVOKABLE QString getTrr1(void);
    Q_INVOKABLE QString getTrr2(void);
    Q_INVOKABLE QString getTrr31(void);
    Q_INVOKABLE QString getTrr32(void);
    Q_INVOKABLE QString getTrr33(void);

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
