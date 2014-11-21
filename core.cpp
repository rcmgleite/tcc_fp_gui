#include<iostream>
#include "core.hpp"

using namespace std;

void Core::execute(){
    this->main.execute(this, "/home/priscila/tcc_fp_gui/resources/images/fingerprints/original.tif");
    this->callback();
}

void Core::setFeedback(bool feedback){
    this->main.updateMetrics(feedback, this);
}

void Core::metricsScreenRequest(){
    this->main.getMetrics(this);
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

float Core::getFar1(void){
    return this->main.getVInterfaceDTO().getFar1();
}

float Core::getFar2(void){
    return this->main.getVInterfaceDTO().getFar2();
}

float Core::getFar31(void){
    return this->main.getVInterfaceDTO().getFar31();
}

float Core::getFar32(void){
    return this->main.getVInterfaceDTO().getFar32();
}

float Core::getFar33(void){
    return this->main.getVInterfaceDTO().getFar33();
}

float Core::getFrr1(void){
    return this->main.getVInterfaceDTO().getFrr1();
}

float Core::getFrr2(void){
    return this->main.getVInterfaceDTO().getFrr2();
}

float Core::getFrr31(void){
    return this->main.getVInterfaceDTO().getFrr31();
}

float Core::getFrr32(void){
    return this->main.getVInterfaceDTO().getFrr32();
}

float Core::getFrr33(void){
    return this->main.getVInterfaceDTO().getFrr33();
}

float Core::getTar1(void){
    return this->main.getVInterfaceDTO().getTar1();
}

float Core::getTar2(void){
    return this->main.getVInterfaceDTO().getTar2();
}

float Core::getTar31(void){
    return this->main.getVInterfaceDTO().getTar31();
}

float Core::getTar32(void){
    return this->main.getVInterfaceDTO().getTar32();
}

float Core::getTar33(void){
    return this->main.getVInterfaceDTO().getTar33();
}

float Core::getTrr1(void){
    return this->main.getVInterfaceDTO().getTrr1();
}

float Core::getTrr2(void){
    return this->main.getVInterfaceDTO().getTrr2();
}

float Core::getTrr31(void){
    return this->main.getVInterfaceDTO().getTrr31();
}

float Core::getTrr32(void){
    return this->main.getVInterfaceDTO().getTrr32();
}

float Core::getTrr33(void){
    return this->main.getVInterfaceDTO().getTrr33();
}

void Core::callback(void){
    emit executionComplete();
}
