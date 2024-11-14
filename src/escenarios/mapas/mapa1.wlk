import obstaculos.ElementosMapa.*
import mapas.Mapa.*

object mapa1 inherits Mapa{
    const laberinto = [
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,_,m],
            [m,h,ft,h,h,h,h,m,h,h,t,h,h,h,h,h,h,m,h,h,h,h,h,h,m],
            [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
            [m,h,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,t,_,m,h,m],
            [m,h,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
            [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
            [m,h,h,bh,h,h,h,h,h,h,h,h,h,fb,h,h,h,h,h,h,h,h,h,h,m],
            [m,t,m,m,m,m,h,m,m,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
            [m,h,m,_,_,m,h,m,_,pr,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
            [m,p,m,_,_,m,h,m,_,g,g,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,_,m]
                          ].reverse() 
    override method laberinto(){
        return laberinto
    }

    /*
            
            ,
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
    override method laberinto(){
        return laberinto
    }
*/
}
