import mapas.Mapa.*
import obstaculos.ElementosMapa.*

object mapaPrueba inherits Mapa {

    const laberinto = [
        [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m],
        [m,g,c,_,_,t,_,_,_,_,_,pr,_,_,_,_,b,_,_,_,_,_,_,fb,m],
        [m,m,p,h,_,_,_,_,_,_,_,_,ft,b,_,_,_,_,_,_,_,t,_,m,m],
        [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m] 
    ].reverse()

    override method laberinto(){
        return laberinto
    }
}


