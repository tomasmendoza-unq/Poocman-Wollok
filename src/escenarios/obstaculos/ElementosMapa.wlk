import personajes.pacman.*
import personajes.fantasmas.*
import comidas.helados.*
import wollok.game.*
import managers.fantasmaManager.*
import managers.heladoManager.*
import managers.portalManager.*
import obstaculos.Muro.*
import obstaculos.PuntoDeReaparicion.*
import obstaculos.Portal.*

object _ {
    method dibujarEn(position) {

    }
}

object p {
    method dibujarEn(position) {
        pacman.position(position)
        pacman.dibujarSombra()
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

object bh {
    method dibujarEn(position){
        const bh = new BaldeDeHelado(position = position)
        game.addVisual(bh)
        heladoManager.agregarHelado(bh)

    }
}

object g {
    method dibujarEn(position) {
        const newFantasma = new Fantasma(position = position)
        game.addVisual(newFantasma)
        fantasmaManager.agregarFantasma(newFantasma)
    }
}

object pr {
    method dibujarEn(position){
        const newPunto = new PuntoReparicion(position = position)
        game.addVisual(newPunto)
        fantasmaManager.agregarPunto(newPunto)
    }
}

object t{
    method dibujarEn(position) {
      const newPortal = new Portal (position = position)
      game.addVisual(newPortal)
      portalManager.agregarPortal(newPortal)
    }
}

//FANTASMA BORRACHO

object ft {
    method dibujarEn(position) {
        const newFantasma = new FantasmaTiburon(position = position)
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