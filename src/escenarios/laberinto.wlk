import personajes.pacman.*
import personajes.fantasmas.*
import comidas.helados.*
import escenarios.level1.*
import wollok.game.*

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

    //Aca voy a modelar los fantasmas usando un factory para los fantasmas
    object f {
        method dibujarEn(position) {
        game.addVisual(new Bolita(position = position))
    }
    }

    //Aca modelar la comida (bolita)
    object g {
        method dibujarEn(position) {
        game.addVisual(new Fantasma(position = position))
    }
    }

//    object f {
//        method dibujarEn(position) {
//            game.addVisual(fantasma)
//        }
//    }

// object n {
//     method dibujarEn(position) {
//         nido.position(position)
//         game.addVisual(nido)
//     }
// }

object n {}
object mapa {

    const tablero = 
[
  [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m],
  [m,f,_,f,f,f,f,m,f,f,f,f,f,f,f,f,f,m,f,f,f,f,f,f,m],
  [m,f,m,m,m,m,f,m,f,m,m,m,m,f,m,m,m,m,f,m,m,m,m,f,m],
  [m,f,m,_,_,m,f,m,f,m,_,_,m,f,m,_,_,m,f,m,_,_,m,f,m],
  [m,f,m,_,_,m,f,m,f,m,_,_,m,f,m,_,_,m,f,m,_,_,m,f,m],
  [m,f,m,m,m,m,f,m,f,m,m,m,m,f,m,m,m,m,f,m,m,m,m,f,m],
  [m,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,m],
  [m,f,m,m,m,m,f,m,m,m,m,m,m,f,m,m,m,m,f,m,m,m,m,f,m],
  [m,f,m,_,_,m,f,m,_,_,_,_,m,f,m,_,_,m,f,m,_,_,m,f,m],
  [m,f,m,_,_,m,f,m,_,g,g,_,m,f,m,_,_,m,f,m,_,_,m,f,m],
  [m,f,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,f,m],
  [m,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,m],
  [m,f,m,m,m,m,f,m,m,m,m,m,m,f,m,m,m,m,f,m,m,m,m,f,m],
  [m,f,m,_,_,m,f,m,_,_,_,_,m,f,m,_,_,m,f,m,_,_,m,f,m],
  [m,f,m,_,_,m,f,m,_,_,_,_,m,f,m,_,_,m,f,m,_,_,m,g,m],
  [m,f,m,m,m,m,f,m,m,m,m,m,m,f,m,m,m,m,f,m,m,m,m,f,m],
  [m,f,f,f,f,f,f,f,f,f,f,f,g,f,f,f,f,f,f,f,f,f,f,f,m],
  [m,f,m,m,m,m,f,m,m,m,m,m,m,f,m,m,m,m,f,m,m,m,m,f,m],
  [m,f,m,_,_,m,f,m,f,m,_,_,m,f,m,_,_,m,f,m,_,_,m,f,m],
  [m,f,m,_,_,m,f,m,f,m,_,_,m,f,m,_,_,m,f,m,_,_,m,f,m],
  [m,f,m,m,m,m,f,m,f,m,m,m,m,f,m,m,m,m,f,m,m,m,m,f,m],
  [m,f,f,p,f,f,f,m,f,f,f,f,f,f,f,f,f,m,f,f,f,f,f,f,m],
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
