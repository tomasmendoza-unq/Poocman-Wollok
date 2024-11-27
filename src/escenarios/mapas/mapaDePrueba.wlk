import mapas.Mapa.*
import obstaculos.ElementosMapa.*

object mapaPrueba inherits Mapa {

    const laberinto = [
        [m,m,m,m,m,m,_,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m],
        [m,m,m,m,m,m,_,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m],
        [m,g,c,b,_,_,_,_,_,_,_,pr,_,_,_,_,_,_,_,_,_,_,_,g,m],
        [m,m,p,h,_,t,_,m,_,_,_,_,ft,bh,i,_,_,_,_,_,_,t,_,m,m],
        [m,m,m,m,m,m,_,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m] 
    ].reverse()

    override method laberinto(){
        return laberinto
    }
}


