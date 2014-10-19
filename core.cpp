#include<iostream>
#include "core.hpp"

using namespace std;

QString Core::getName(){
    return QString::fromStdString(this->name);
}

void Core::setName(QString name){
    this->name = name.toStdString();
}

void Core::execute(void){
        cout << "Chamou execute() usando o QT" << endl;
        this->main.execute();
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

