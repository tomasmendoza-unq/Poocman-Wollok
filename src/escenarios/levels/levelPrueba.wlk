import mapas.mapaDePrueba.*
import levels.Level.*
import levels.level1.*

object levelPrueba inherits Level{
    var property mapa = mapaPrueba

    override method mapa(){
        return mapa
    }

    override method siguienteNivel(){
        return level1
    }

}
