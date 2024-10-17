class Helado {
    const property position  

    method puntos()

    
    method remove(){
        game.removeVisual(self)
    }

    method colisionarConPoocman(poocman){
        self.remove()
        poocman.level().puntuacion(self)
    }

    method solida() {
		return false
	}
}