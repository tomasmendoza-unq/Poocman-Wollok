import wollok.game.*

class Fantasma {
    var property position = game.at(0,0) 

    method image(){
        return "pepita.png"
    }

    method colisionarConPoocman(poocman){
        poocman.asesinado()
    }
}