
import personajes.pacman.*
import personajes.fantasmas.*
import comidas.helados.*
import escenarios.level1.*
import wollok.game.*
import managers.fantasmaManager.*
import managers.personajeManager.*

object _ {
    method dibujarEn(position) {

    }
}

object p {
    method dibujarEn(position) {
        pacman.position(position)
        personajeManager.agregarPersonaje(pacman)
    }
}

object m {
    method dibujarEn(position) {
        game.addVisual(new Muro(position = position))
    }
}

    //Aca voy a modelar los fantasmas usando un factory para los fantasmas
object f {
    method dibujarEn(position) {
        game.addVisual(new Bolita(position = position))
    }
}

object h {
    method dibujarEn(position) {
        game.addVisual(new Superchocolate(position = position))
    }
}

object g {
    method dibujarEn(position) {
        const newFantasma = new Fantasma(position = position)
        game.addVisual(newFantasma)
        personajeManager.agregarPersonaje(newFantasma)
        fantasmaManager.agregarFantasma(newFantasma)
    }
}


//FANTASMA BORRACHO
object fb {
    method dibujarEn(position) {
        const newFantasma = new FantasmaBorracho(position = position)
        game.addVisual(newFantasma)
        personajeManager.agregarPersonaje(newFantasma)
        fantasmaManager.agregarFantasma(newFantasma)
    }
}

object b {
    method dibujarEn(position) {
        game.addVisual(new BebidaHelada(position = position))
    }
}
object mapa {

    const tablero = 
[
  [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m],
  [m,f,_,f,f,f,_,_,f,f,f,f,g,f,f,f,f,_,f,f,f,f,f,f,m],
  [m,f,_,_,_,_,fb,_,f,_,_,_,_,p,_,_,_,_,f,_,_,_,_,f,m],
  [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m]
].reverse()

    
    method dibujar() {
        game.height(tablero.size())
        game.width(tablero.get(0).size())

        (0..game.width() - 1).forEach({ x =>
            (0..game.height() -1).forEach({y =>
                tablero.get(y).get(x).dibujarEn(game.at(x,y))
            })
        })
        game.addVisual(pacman) //Lo pongo aca por el eje z


    }






}


