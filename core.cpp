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

void Core::metricsScreenRequest(){
    emit signalMetricsScreenRequest();
}

void Core::initalScreenRequest(){
    emit signalInitialScreenRequest();
}

void Core::stagesScreenRequest(){
    emit signalStagesScreenRequest();
}

float Core::getWindowingTime(void){
    return this->main.getVInterfaceDTO().getWindowingTime();
}
float Core::getEqualizationTime(void){
    return this->main.getVInterfaceDTO().getEqualizationTime();
}
float Core::getGaborFilterTime(void){
    return this->main.getVInterfaceDTO().getGaborFilterTime();
}
float Core::getBinarizationTime(void){
    return this->main.getVInterfaceDTO().getBinarizationTime();
}
float Core::getMinutiaeExtractionTime(void){
    return this->main.getVInterfaceDTO().getMinutiaeExtractionTime();
}
float Core::getMatchingTime(void){
    return this->main.getVInterfaceDTO().getMatchingTime();
}
bool Core::getAccepted(void){
    return this->main.getVInterfaceDTO().getAccepted();
}

void Core::callback(void){
    emit executionComplete();
}
