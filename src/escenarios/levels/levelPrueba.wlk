import mapas.mapaDePrueba.*
import levels.Level.*
import levels.level1.*

object levelPrueba inherits Level{
    override method mapa(){
        return mapaPrueba
    }

    override method siguienteNivel(){
        return level1
    }

}
