import src.Colision.Colision

class Muro inherits Colision{

    const property position

    method image() {
        return "muro.png"
    }

    override method solida() {
      return true
	}

    override method colisionarConPacman(){
        
    }
    override method colisionarConSombra(){

    }
}