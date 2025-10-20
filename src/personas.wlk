import gimnasia.*

// Superclase: Personas ----------------------------------------------------------------------------

class Personas {
    var peso

    method tiempoDeEjercicio()

    method kilosPorCaloria()

    method pesoPerdidoAlEjercitar(rutina) {
        return rutina.caloriasQuemadas(self.tiempoDeEjercicio()) / self.kilosPorCaloria()
    }

    method bajarPesoSiCorresponde(rutina) {
        peso -= self.pesoPerdidoAlEjercitar(rutina)
    }
}

// Clase: Personas sedentarias

class PersonasSedentarias inherits Personas {
    const tiempoDeEjercicio

    override method tiempoDeEjercicio() {
        return tiempoDeEjercicio
    }

    override method kilosPorCaloria() {
        return 7000
    }

    override method pesoPerdidoAlEjercitar(rutina) {
        if (peso > 50) {
            return super(rutina)
        }
        else return 0
    }
}

// Clase: Personas atletas

class PersonasAtletas inherits Personas {

    override method tiempoDeEjercicio() {
        return 90
    }
    
    override method kilosPorCaloria() {
        return 8000
    }
    
    override method pesoPerdidoAlEjercitar(rutina) {
        if (rutina.caloriasQuemadas(self.tiempoDeEjercicio()) > 10000) {
            return super(rutina) - 1
        }
        else return 0
    }
}