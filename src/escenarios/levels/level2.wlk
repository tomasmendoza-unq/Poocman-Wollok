import mapas.mapaDePrueba.*
import levels.Level.*
import escenarios.pantallaFin.*

object level2 inherits Level{
    override method mapa(){
        return mapaPrueba
    }

    override method siguienteNivel(){
        return gameOver
    }


}