// Superclase: Rutina ----------------------------------------------------------------------------

class Rutina {
    
    method intensidad()

    method descanso(tiempo)

    method caloriasQuemadas(tiempo) {
        return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
    }
}

    // Clase: Running -----------------------------------------------------------------------------

class Running inherits Rutina {
    const intensidad

    override method descanso(tiempo) {
        if (tiempo > 20) {
            return 5
        }
        return 2
    }

    override method intensidad(){
        return intensidad
    }
}

        // Clase: Maraton -------------------------------------------------------------------------

class Maraton inherits Running {

    override method caloriasQuemadas(tiempo) {
        return super(tiempo) * 2
    }
}

    // Clase: Remo --------------------------------------------------------------------------------

class Remo inherits Rutina {

    override method intensidad(){
        return 1.3
    }

    override method descanso(tiempo) {
        return tiempo / 2
    }
}

        // Clase: Remo de Competicion -------------------------------------------------------------

class RemoDeCompeticion inherits Remo {
    
    override method intensidad(){
        return 1.7
    }

    override method descanso(tiempo) {
        return (super(tiempo) - 3).max(2)
    }
}