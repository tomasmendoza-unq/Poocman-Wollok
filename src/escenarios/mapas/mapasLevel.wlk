import obstaculos.ElementosMapa.*
import mapas.Mapa.*

object mapa1 inherits Mapa{
    const laberinto = [
            [m,m,m,m,m,m,m,m,m,m,m,_,m,m,m,m,m,m,m,m,m,m,m,_,m], 
            [m,h,h,c,h,h,h,m,_,h,t,h,h,h,c,h,h,m,h,h,h,h,ft,h,m], 
            [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m], 
            [m,bh,m,b,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m], 
            [m,h,m,t,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m], 
            [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m], 
            [_,_,h,h,h,h,h,h,_,h,h,h,h,_,h,h,h,h,b,g,h,h,t,h,_], 
            [m,_,m,m,m,m,h,m,m,_,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m], 
            [m,h,m,_,_,m,h,m,m,pr,m,m,m,h,m,_,_,m,h,m,_,c,m,h,m], 
            [m,p,m,_,_,m,h,m,m,m,m,m,m,h,m,_,_,m,h,m,t,_,m,h,m], 
            [m,h,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,h,m], 
            [m,h,m,m,m,m,m,m,m,b,_,m,m,m,m,m,m,m,t,_,m,m,m,h,m], 
            [m,h,m,h,h,h,_,m,m,t,_,m,m,m,pr,m,m,m,_,_,m,m,m,h,m], 
            [m,h,m,h,m,m,m,m,m,m,m,m,m,m,_,m,m,m,m,m,m,m,m,h,m], 
            [m,h,m,h,m,m,m,m,m,m,m,m,m,m,_,m,m,m,m,m,m,m,m,h,m], 
            [m,h,m,h,m,m,m,m,pr,m,m,m,m,m,_,m,m,m,m,m,m,m,m,h,m], 
            [m,h,h,h,h,h,h,t,h,b,h,h,h,h,ft,h,h,h,h,h,h,h,h,h,m], 
            [m,m,m,m,m,m,m,m,m,m,m,_,m,m,m,m,m,m,m,m,m,m,m,_,m]  
                            ]. reverse() 
    
    override method laberinto(){
        return laberinto
    }
}


object mapa2 inherits Mapa{
        const laberinto = [
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,_,m],
            [m,h,h,c,h,h,h,m,_,h,t,h,g,h,c,h,h,m,h,h,h,h,ft,h,m],
            [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
            [m,bh,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
            [m,h,m,_,_,m,h,m,h,m,_,_,m,h,m,_,_,m,h,m,_,_,m,h,m],
            [m,h,m,m,m,m,h,m,h,m,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
            [_,_,h,h,h,h,h,h,_,h,h,h,h,_,h,h,h,h,b,h,h,h,t,h,_],
            [m,_,m,m,m,m,h,m,m,_,m,m,m,h,m,m,m,m,h,m,m,m,m,h,m],
            [m,h,m,_,_,m,h,m,m,pr,m,m,m,h,m,_,_,m,h,m,_,_,m,h,m],
            [m,p,m,_,_,m,h,m,m,m,m,m,m,h,m,_,_,m,ft,m,_,_,m,g,m],
            [m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,m,_,m]
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
            [_,b,_,_,t,_,p,_,h,_,_,h,_],
            [m,h,_,m,m,m,m,m,m,_,m,m,m],
            [m,h,_,m,m,m,m,pr,m,_,m,m,m],
            [m,h,h,t,_,_,_,h,h,h,h,_,m],
            [m,m,m,m,m,m,m,m,m,m,m,m,m]
                ].reverse()
    override method laberinto(){
        return laberinto
    }
}



