#include<iostream>
#include "core.hpp"

using namespace std;

void Core::execute(){
        this->main.execute(this, "/home/priscila/BDs_imagens_de_digitais/2004/DB1/103_1.tif");
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

void Core::stagesScreenRequest(){
    emit signalStagesScreenRequest();
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

float Core::getMinutiaeExtractionTime2(void){
    return this->main.getVInterfaceDTO().getMinutiaeExtractionTime2();
}

float Core::getMatchingTime2(void){
    return this->main.getVInterfaceDTO().getMatchingTime2();
}

float Core::getEqualizationTim2(void){
    return this->main.getVInterfaceDTO().getEqualizationTime2();
}

float Core::getBinarizationTime2(void){
    return this->main.getVInterfaceDTO().getBinarizationTime2();
}

float Core::getMinutiaeExtractionTime3(void){
    return this->main.getVInterfaceDTO().getMinutiaeExtractionTime3();
}
float Core::getMatchingTime31(void){
    return this->main.getVInterfaceDTO().getMatchingTime3();
}

float Core::getMatchingTime32(void){
    return this->main.getVInterfaceDTO().getMatchingTime3();
}
float Core::getMatchingTime33(void){
    return this->main.getVInterfaceDTO().getMatchingTime3();
}
float Core::getWindowingTime3(void){
    return this->main.getVInterfaceDTO().getWindowingTime3();
}
float Core::getEqualizationTim3(void){
    return this->main.getVInterfaceDTO().getEqualizationTime3();
}
float Core::getGaborFilterTime3(void){
    return this->main.getVInterfaceDTO().getGaborFilterTime3();
}
float Core::getBinarizationTim3(void){
    return this->main.getVInterfaceDTO().getBinarizationTime3();
}

void Core::callback(void){
    emit executionComplete();
}
