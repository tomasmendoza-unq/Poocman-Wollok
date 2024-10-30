object comidaManager {
    const helados = []

    method agregarHc(h){
        helados.add(h)
    }

    method noHayMasHelado(){
        return helados.isEmpty()
    }
}