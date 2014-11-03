#include<iostream>
#include "core.hpp"

using namespace std;

void Core::execute(void){
        cout << "Chamou execute() usando o QT" << endl;
        this->main.execute(this);
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
void Core::callback(void){
    //TODO - chamar o método fetch data para colocar os dados no qml
    cout << "A C A B O U" << endl;
    emit executionComplete();
}
