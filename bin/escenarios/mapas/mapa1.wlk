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
}


    object mapa2 inherits Mapa{
        const laberinto = [        
            [m,m,m,m,m,m,m,_,m,m,m,m,m],
            [m,h,h,b,m,h,h,h,m,h,h,h,m],
            [m,h,m,h,m,h,m,h,m,h,m,h,m],
            [m,h,m,h,m,h,m,h,m,h,m,h,m],
            [m,h,m,h,m,h,pr,h,m,h,m,h,m],
            [m,h,m,h,fb,h,m,h,m,h,m,h,m],
            [m,p,m,h,h,h,m,h,h,c,m,h,m],
            [m,m,m,m,m,m,m,ft,m,m,m,m,m]
                ].reverse() 
    override method laberinto(){
        return laberinto
    }
    }

object mapa3 inherits Mapa{
        const laberinto = [        
            [m,m,m,m,m,m,m,m,m,m,m,m,m],
            [_,ft,m,m,m,fb,m,pr,_,_,m,ft,_],
            [m,h,h,h,c,m,m,m,m,m,_,m,m],
            [m,h,m,m,m,m,m,m,m,m,_,m,m],
            [_,h,_,_,_,m,p,_,_,_,_,h,_],
            [m,h,_,m,m,m,m,m,m,m,m,m,m],
            [m,_,_,m,m,m,m,pr,m,m,m,m,m],
            [m,fb,m,m,ft,_,_,h,h,h,h,fb,m],
            [m,m,m,m,m,m,m,m,m,m,m,m,m]
                ].reverse() 
    override method laberinto(){
        return laberinto
    }
}



