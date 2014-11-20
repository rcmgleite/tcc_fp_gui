#include<iostream>
#include "core.hpp"

using namespace std;

void Core::execute(){
    //this->main.execute(this, "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/fingerprints/original.tif");
    this->callback();
}

void Core::setFeedback(bool feedback){
    this->main.updateMetrics(feedback, this);
}

void Core::metricsScreenRequest(){
    emit signalMetricsScreenRequest();
}

void Core::algorithmScreenRequest(){
    emit signalAlgorithmScreenRequest();
}

void Core::stagesScreenRequest(){
    emit signalStagesScreenRequest();
}

void Core::windowingStepRequest(){
    emit signalWindowingStepRequest();
}

void Core::equalizationStepRequest(){
    emit signalEqualizationStepRequest();
}
void Core::gaborStepRequest(){
    emit signalGaborStepRequest();
}
void Core::binarizationStepRequest(){
    emit signalBinarizationStepRequest();
}
void Core::minutiaExtractionStepRequest(){
    emit signalMinutiaExtractionStepRequest();
}
void Core::matchingStepRequest(){
    emit signalMatchingStepRequest();
}

float Core::getMatchingTime31(void){
    return this->main.getVInterfaceDTO().getMatchingTime31();
}
float Core::getMatchingTime32(void){
    return this->main.getVInterfaceDTO().getMatchingTime32();
}
float Core::getMatchingTime33(void){
    return this->main.getVInterfaceDTO().getMatchingTime33();
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

float Core::getMatchingTime1(void){
    return this->main.getVInterfaceDTO().getMatchingTime1();
}

float Core::getMinutiaeExtractionTime1(void){
    return this->main.getVInterfaceDTO().getMinutiaeExtractionTime1();
}

float Core::getMinutiaeExtractionTime2(void){
    return this->main.getVInterfaceDTO().getMinutiaeExtractionTime2();
}

float Core::getMatchingTime2(void){
    return this->main.getVInterfaceDTO().getMatchingTime2();
}

float Core::getEqualizationTime2(void){
    return this->main.getVInterfaceDTO().getEqualizationTime2();
}

float Core::getBinarizationTime2(void){
    return this->main.getVInterfaceDTO().getBinarizationTime2();
}

float Core::getMinutiaeExtractionTime3(void){
    return this->main.getVInterfaceDTO().getMinutiaeExtractionTime3();
}
float Core::getWindowingTime3(void){
    return this->main.getVInterfaceDTO().getWindowingTime3();
}
float Core::getEqualizationTime3(void){
    return this->main.getVInterfaceDTO().getEqualizationTime3();
}
float Core::getGaborFilterTime3(void){
    return this->main.getVInterfaceDTO().getGaborFilterTime3();
}
float Core::getBinarizationTime3(void){
    return this->main.getVInterfaceDTO().getBinarizationTime3();
}

float Core::getTotalTime1(void){
    return this->main.getVInterfaceDTO().getTotalTime1();
}

float Core::getTotalTime2(void){
    return this->main.getVInterfaceDTO().getTotalTime2();
}

float Core::getTotalTime31(void){
    return this->main.getVInterfaceDTO().getTotalTime31();
}

float Core::getTotalTime32(void){
    return this->main.getVInterfaceDTO().getTotalTime32();
}

float Core::getTotalTime33(void){
    return this->main.getVInterfaceDTO().getTotalTime33();
}

int Core::getMinutiaeQuantity1(void){
    return this->main.getVInterfaceDTO().getMinutiaeQuantity1();
}

int Core::getMinutiaeQuantity2(void){
    return this->main.getVInterfaceDTO().getMinutiaeQuantity2();
}

int Core::getMinutiaeQuantity3(void){
    return this->main.getVInterfaceDTO().getMinutiaeQuantity3();
}

float Core::getMinutiaeQuality1(void){
    return this->main.getVInterfaceDTO().getMinutiaeQuality1();
}

float Core::getMinutiaeQuality2(void){
    return this->main.getVInterfaceDTO().getMinutiaeQuality2();
}

float Core::getMinutiaeQuality3(void){
    return this->main.getVInterfaceDTO().getMinutiaeQuality3();
}

void Core::callback(void){
    emit executionComplete();
}
