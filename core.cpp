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

