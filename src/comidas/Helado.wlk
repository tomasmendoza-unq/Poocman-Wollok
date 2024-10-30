
import managers.comidaManager.*
import managers.levelManager.*

class Helado {
    const property position  

    method puntos()

    
    method remove(){
        game.removeVisual(self)
    }

    method colisionarConPoocman(poocman){
        if(comidaManager.noHayMasHelado()){
            return levelManager.noHayMasHeladoComun()

        } else {
            self.remove()
            poocman.level().puntuacion(self)
        }
    }

    method solida() {
		return false
	}
}

