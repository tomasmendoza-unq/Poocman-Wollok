class PuntoReparicion {

    const property position

    method image() {
        return "puntoReaparicion.png"
    }

    method solida() {
		return false
	}
    method colisionarConPacman(){}

    method revivirFantasma(f){
        f.position(self.position())
        f.actualizarDireccion()
        game.addVisual(f)
    }

}