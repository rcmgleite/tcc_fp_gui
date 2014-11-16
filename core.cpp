#include<iostream>
#include "core.hpp"

using namespace std;

void Core::execute(int mode){
        cout << "Chamou execute() usando o QT" << endl;
        SystemMode _mode;

        switch (mode){
            case SystemMode::DEFAULT:
                _mode = SystemMode::DEFAULT;
                break;

            case SystemMode::RIGID:
                _mode = SystemMode::RIGID;
                break;

            case SystemMode::TOLERANT:
                _mode = SystemMode::TOLERANT;
                break;
        }
        cout << "> Selected mode: " << _mode << endl;
        this->main.execute(_mode, this);
}

void Core::setFeedback(bool feedback){
    this->main.updateMetrics(feedback, this);
}

void Core::metricsScreenRequest(){
    emit signalMetricsScreenRequest();
}

void Core::initalScreenRequest(){
    emit signalInitialScreenRequest();
}

float Core::getWindowingTime(void){
    return this->main.getVInterfaceDTO().getWindowingTime3();
}
float Core::getEqualizationTime(void){
    return this->main.getVInterfaceDTO().getEqualizationTime3();
}
float Core::getGaborFilterTime(void){
    return this->main.getVInterfaceDTO().getGaborFilterTime3();
}
float Core::getBinarizationTime(void){
    return this->main.getVInterfaceDTO().getBinarizationTime3();
}
float Core::getMinutiaeExtractionTime(void){
    return this->main.getVInterfaceDTO().getMinutiaeExtractionTime3();
}
float Core::getMatchingTime(void){
    return this->main.getVInterfaceDTO().getMatchingTime3();
}
bool Core::getAccepted1(void){
    return this->main.getVInterfaceDTO().getAccepted1();
}
bool Core::getAccepted2(void){
    return this->main.getVInterfaceDTO().getAccepted2();
}
bool Core::getAccepted31(void){
    return this->main.getVInterfaceDTO().getAccepted31();
}
bool Core::getAccepted32(void){
    return this->main.getVInterfaceDTO().getAccepted32();
}
bool Core::getAccepted33(void){
    return this->main.getVInterfaceDTO().getAccepted33();
}

void Core::callback(void){
    emit executionComplete();
}
