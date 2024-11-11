import mapas.Mapa.*
import obstaculos.ElementosMapa.*

object mapaPrueba inherits Mapa {

    const laberinto = [
            [m,m,m,m,m,_,m,m,m,m,m,_,m,m,m,m,m,m,m,_,m,m,m,m,m],
            [_,_,_,_,_,t,_,_,_,_,_,pr,_,_,_,_,_,_,_,_,_,_,_,_,_],
            [_,_,_,_,p,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,t,_,_,_],
            [m,m,m,m,m,_,m,m,m,m,m,_,m,m,m,m,m,m,m,_,m,m,m,m,m]
        ].reverse()

    override method laberinto(){
        return laberinto
    }
}

