class ControleRemoto{
    int _volume = 0;                                                            


    void aumentarVolume(){
        if(_volume < 100){
            _volume++;
            print("Volume aumentado para: $_volume");
        else{
            print("Volume já está no máximo: $_volume");    

        }
    }
    }

    void diminuirVolume(){
        if(_volume > 0){
            _volume--;
            print("Volume diminuído para: $_volume");
        else{
            print("Volume já está no mínimo: $_volume");
        }
        }

    }
    
    get volume => _volume;

}

void main() {
    var controle = ControleRemoto();

    controle.aumentarVolume(); 
    controle.aumentarVolume(); 

    print("Volume atual: ${controle.volume}");

    controle.diminuirVolume();

    print("Volume final: ${controle.volume}");
}

