import mapas.mapaDePrueba.*
import levels.Level.*
object level2 inherits Level{
    override method mapa(){
        return mapas.anyOne()
    }

    override method siguienteNivel(){
        return null
    }


}