#ifndef HELPER_HPP
#define HELPER_HPP
#include <QObject>

class ConverterHelper {
public:
    enum UNIT{
      SECONDS, MILLSECONDS, PERCENTAGE, NONE
    };

    QString static convertFloatValue(float value, int nDecimals, UNIT _from = UNIT::NONE, UNIT _to = UNIT::NONE){
        string aux;
        if(_from == UNIT::SECONDS && _to == UNIT::MILLSECONDS){
            aux = std::to_string(value * 1000);
        }
        else if(_from == UNIT::MILLSECONDS && _to == UNIT::SECONDS){
            aux = std::to_string(value/1000);
        }
        else if(_from == UNIT::NONE && _to == UNIT::PERCENTAGE){
            aux = std::to_string(value * 100);
        }
        else{
            aux = std::to_string(value);
        }

        int dot = aux.find_first_of(',');
        if(dot == -1){
            return QString::fromStdString(aux);
        }
        else{
            aux = aux.substr(0, dot + nDecimals + 1);
            return QString::fromStdString(aux);
        }

    }
};

#endif // HELPER_HPP
