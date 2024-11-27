import fantasmaManager.*
import personajes.pacman.*
object tickManager {
    const onTicks = ["movimiento","movimiento fantasmas"]
    var velocidadPacman = 100
    var velocidadFantasmas = 200

    method addOnTicks(){
        game.onTick(velocidadPacman, self.referenciaMovPacman(), {pacman.moverse()})
        game.onTick(velocidadFantasmas, self.referenciaMovFantamas(), {fantasmaManager.mover()})
    }

    method removeOnTicks(){
        onTicks.forEach({ref => game.removeTickEvent(ref)})
    }


    method velocidadPacmanNormal (){
        return 100
    }

    method velocidadFantasmasNormal (){
        return 200
    }

    method velocidadFantasmas(){
        return velocidadFantasmas
    }

    method velocidadPacman(){
        return velocidadPacman
    }

    method referenciaMovPacman(){
        return onTicks.get(0)
    }

    method velocidadPacman(vel){
        self.validarVel(vel)
        velocidadPacman = vel
    }

    method velocidadFantasmas(vel){
        self.validarVel(vel)
        velocidadFantasmas = vel
    }

    method validarVel(vel){
        if(vel<0) self.error("La velocidad no puede ser velocidad")
    }

    method modificarVelocidad(velF, velP){
        self.removeOnTicks()
        self.velocidadFantasmas(velF)
        self.velocidadPacman(velP)
        self.addOnTicks()
    }


    method referenciaMovFantamas(){
        return onTicks.get(1)
    }
}