import src.Colision.Colision
class PuntoReparicion inherits Colision{

    const property position

    method image() {
        return "puntoReaparicion.png"
    }

    override method solida() {
		return false
	}
    override method colisionarConPacman(){}
    
    override method colisionarConSombra(){}

    method revivirFantasma(f){
        f.position(self.position())
        f.actualizarDireccion()
        game.addVisual(f)
    }

}