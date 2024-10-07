import wollok.game.*

class Fantasma {
    var property position = game.at(0,0) 

    method image(){
        return "pepita.png"
    }
    method remove() {
        game.removeVisual(self)
      
    }

    method colisionarConPoocman(poocman){
       if (poocman.estatransformado()){
        self.remove()
       }
       
       else { poocman.asesinado()
    }
}  
}