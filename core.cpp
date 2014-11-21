#include<iostream>
#include "core.hpp"
#include "ConverterHelper.hpp"

using namespace std;

void Core::execute(){
    this->main.execute(this, "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/original.tif");
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


QString Core::getMatchingTime31(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMatchingTime31(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}
QString Core::getMatchingTime32(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMatchingTime32(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}
QString Core::getMatchingTime33(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMatchingTime33(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
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

QString Core::getMatchingTime1(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMatchingTime1(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getMinutiaeExtractionTime1(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMinutiaeExtractionTime1(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getMinutiaeExtractionTime2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMinutiaeExtractionTime2(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getMatchingTime2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMatchingTime2(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getEqualizationTime2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getEqualizationTime2(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getBinarizationTime2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getBinarizationTime2(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getMinutiaeExtractionTime3(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMinutiaeExtractionTime3(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}
QString Core::getWindowingTime3(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getWindowingTime3(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}
QString Core::getEqualizationTime3(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getEqualizationTime3(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}
QString Core::getGaborFilterTime3(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getGaborFilterTime3(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}
QString Core::getBinarizationTime3(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getBinarizationTime3(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getTotalTime1(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTotalTime1(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getTotalTime2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTotalTime2(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getTotalTime31(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTotalTime31(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getTotalTime32(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTotalTime32(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
}

QString Core::getTotalTime33(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTotalTime33(), 2, ConverterHelper::SECONDS, ConverterHelper::MILLSECONDS) + " ms";
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

QString Core::getMinutiaeQuality1(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMinutiaeQuality1(), 2);
}

QString Core::getMinutiaeQuality2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMinutiaeQuality2(), 2);
//    return this->main.getVInterfaceDTO().getMinutiaeQuality2();
}

QString Core::getMinutiaeQuality3(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getMinutiaeQuality3(), 2);
//    return this->main.getVInterfaceDTO().getMinutiaeQuality3();
}

QString Core::getFar1(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFar1(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFar1();
}

QString Core::getFar2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFar2(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFar2();
}

QString Core::getFar31(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFar31(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFar31();
}

QString Core::getFar32(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFar32(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFar32();
}

QString Core::getFar33(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFar33(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFar33();
}

QString Core::getFrr1(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFrr1(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFrr1();
}

QString Core::getFrr2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFrr2(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFrr2();
}

QString Core::getFrr31(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFrr31(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFrr31();
}

QString Core::getFrr32(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFrr32(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFrr32();
}

QString Core::getFrr33(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getFrr33(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getFrr33();
}

QString Core::getTar1(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTar1(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTar1();
}

QString Core::getTar2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTar2(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTar2();
}

QString Core::getTar31(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTar31(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTar31();
}

QString Core::getTar32(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTar32(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTar32();
}

QString Core::getTar33(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTar33(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTar33();
}

QString Core::getTrr1(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTrr1(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTrr1();
}

QString Core::getTrr2(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTrr2(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTrr2();
}

QString Core::getTrr31(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTrr31(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTrr31();
}

QString Core::getTrr32(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTrr32(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTrr32();
}

QString Core::getTrr33(void){
    return ConverterHelper::convertFloatValue(this->main.getVInterfaceDTO().getTrr33(), 2, ConverterHelper::NONE, ConverterHelper::PERCENTAGE);
//    return this->main.getVInterfaceDTO().getTrr33();
}

void Core::callback(void){
    emit executionComplete();
}
