object levelManager {
    
    method noHayMasHeladoComun(){
        return true
    }

    method haySolido(_position) {
		return game.getObjectsIn(_position).any({cosa => cosa.solida()})
	}
}