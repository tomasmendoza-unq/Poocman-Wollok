import personajes.pacman.*
import personajes.fantasmas.*
import comidas.helados.*
import wollok.game.*
import managers.fantasmaManager.*
import managers.heladoManager.*
import obstaculos.Muro.*


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
        heladoManager.agregarHelado(newHelado)
        game.addVisual(newHelado)
    }
}

object c {
    method dibujarEn(position) {
        const c = new Superchocolate(position = position)
        game.addVisual(c)
        heladoManager.agregarHelado(c)
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
        const b = new BebidaHelada(position = position)
        game.addVisual(b)
        heladoManager.agregarHelado(b)
    }
}