import obstaculos.ElementosMapa.*
import mapas.Mapa.*

object mapa1 inherits Mapa{
    const laberinto = [        
            [m,m,m,m,m,m,m,_,m,m,m,m,m],
            [m,h,h,b,m,h,h,h,m,h,h,h,m],
            [m,h,m,h,m,h,h,h,m,h,m,h,m],
            [m,h,m,h,m,h,h,h,m,h,h,h,m],
            [m,h,m,h,m,h,pr,h,m,h,m,h,m],
            [m,h,m,h,_,h,h,h,m,h,m,h,m],
            [m,p,m,h,h,h,m,h,ft,c,h,h,m],
            [m,m,m,m,m,m,m,_,m,m,m,m,m]
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
            [m,h,m,h,_,h,m,h,m,h,m,h,m],
            [m,p,m,h,h,h,m,h,ft,c,m,h,m],
            [m,m,m,m,m,m,m,_,m,m,m,m,m]
                ].reverse() 
    override method laberinto(){
        return laberinto
    }
    }

object mapa3 inherits Mapa{
        const laberinto = [        
            [m,m,m,m,m,m,m,m,m,m,m,m,m],
            [_,ft,m,m,m,_,m,pr,_,_,m,ft,_],
            [m,h,h,h,c,m,m,m,m,m,_,m,m],
            [m,h,m,m,m,m,m,m,m,m,_,m,m],
            [_,h,_,_,_,m,p,_,_,_,_,h,_],
            [m,h,_,m,m,m,m,m,m,m,m,m,m],
            [m,_,_,m,m,m,m,pr,m,m,m,m,m],
            [m,_,m,m,ft,_,_,h,h,h,h,_,m],
            [m,m,m,m,m,m,m,m,m,m,m,m,m]
                ].reverse() 
    override method laberinto(){
        return laberinto
    }
}



