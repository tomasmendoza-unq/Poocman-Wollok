import obstaculos.ElementosMapa.*
import mapas.Mapa.*

object mapa1 inherits Mapa{
    const laberinto = [
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,_,m],
            [m,h,h,c,h,h,h,m,_,h,t,h,h,h,c,h,h,m,h,h,h,h,ft,h,m],
            [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
            [m,bh,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
            [m,h,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
            [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
            [_,_,h,h,h,h,h,h,_,h,h,h,h,_,h,h,h,h,bh,h,h,h,t,h,_],
            [m,_,m,m,m,m,h,m,m,m,_,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
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
            [m,m,m,m,m,_,_,_,m,m,m,m,m],
            [m,_,h,b,m,h,bh,h,m,h,h,h,m],
            [m,h,m,h,m,h,_,h,m,h,m,h,m],
            [m,h,m,h,m,h,m,h,m,h,m,h,m],
            [m,h,m,h,m,h,pr,h,m,_,m,_,m],
            [m,h,m,h,_,h,m,h,m,h,m,h,m],
            [m,p,_,h,h,h,_,h,ft,c,_,h,m],
            [m,m,m,m,m,_,g,_,m,m,m,m,m]
                ].reverse()
    override method laberinto(){
        return laberinto
    }
    }

object mapa3 inherits Mapa{
        const laberinto = [        
            [m,m,m,m,m,m,m,m,m,m,m,m,m],
            [_,h,m,m,m,_,_,pr,_,g,_,ft,_],
            [m,h,h,h,c,_,m,m,m,m,_,m,m],
            [m,h,m,m,m,m,m,m,m,m,h,m,m],
            [_,bh,_,_,_,m,p,_,h,_,_,h,_],
            [m,h,_,m,m,m,m,m,m,_,m,m,m],
            [m,h,_,m,m,m,m,pr,m,_,m,m,m],
            [m,h,h,m,_,_,_,h,h,h,h,_,m],
            [m,m,m,m,m,m,m,m,m,m,m,m,m]
                ].reverse()
    override method laberinto(){
        return laberinto
    }
}



