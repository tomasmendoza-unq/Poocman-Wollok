
import personajes.pacman.*
import personajes.fantasmas.*
import comidas.helados.*
import escenarios.level1.*
import wollok.game.*
import managers.fantasmaManager.*
import managers.comidaManager.*

object _ {
    method dibujarEn(position) {

    }
}

object p {
    method dibujarEn(position) {
        pacman.position(position)

    }
}

object m {
    method dibujarEn(position) {
        game.addVisual(new Muro(position = position))
    }
}

object h {
    method dibujarEn(position) {
        const newHelado = new HeladoComun(position = position)
        game.addVisual(newHelado)
        comidaManager.agregarHc(newHelado)
    }
}

object c {
    method dibujarEn(position) {
        game.addVisual(new Superchocolate(position = position))
    }
}

object g {
    method dibujarEn(position) {
        const newFantasma = new Fantasma(position = position)
        game.addVisual(newFantasma)
        fantasmaManager.agregarFantasma(newFantasma)
    }
}


//FANTASMA BORRACHO
object fb {
    method dibujarEn(position) {
        const newFantasma = new FantasmaBorracho(position = position)
        game.addVisual(newFantasma)
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
      [m,h,_,h,h,h,h,m,h,h,h,h,h,h,h,h,h,m,h,h,h,h,h,h,m],
      [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
      [m,h,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
      [m,h,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
      [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
      [m,h,h,h,h,h,h,h,h,h,h,h,h,fb,h,h,h,h,h,h,h,h,h,h,m],
      [m,h,m,m,m,m,h,m,m,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
      [m,h,m,_,_,m,h,m,_,_,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
      [m,h,m,_,_,m,h,m,_,g,g,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
      [m,h,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,h,m],
      [m,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,h,m],
      [m,h,m,m,m,m,h,m,m,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
      [m,h,m,_,_,m,h,m,_,_,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
      [m,h,m,_,_,m,h,m,_,_,_,_,m,h,m,_,_,m,h,m,_,_,m,g,m],
      [m,h,m,m,m,m,h,m,m,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
      [m,b,h,b,h,h,h,h,h,h,h,h,g,h,h,h,h,h,h,h,h,h,h,h,m],
      [m,h,m,m,m,m,h,m,m,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
      [m,h,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
      [m,h,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
      [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
      [m,h,c,p,h,h,h,m,h,h,h,h,h,h,h,h,h,m,h,h,h,h,h,h,m],
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

    method removerHeladoComun(){
        tablero.removeAll([h])
    }



}
