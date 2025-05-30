import armamento.* 
import gladiadores.*

class Coliseo{
    var grupos = []
    
    method efectuarPelea(unGladiador, otroGlaDiador){
        unGladiador.atacar(otroGlaDiador)
        otroGlaDiador.atacar(unGladiador)
    }
}

class GrupoGladiadores{
    var property gladiadores

    var property nombre
    
    var cantPeleasRealizadas = 0

    method agregarGladiador(unGladiador) = gladiadores.add(unGladiador)

    method quitarGladiador(unGladiador) = gladiadores.remove(unGladiador)

    method elegirCampeon() = gladiadores.max({glad => glad.fuerza() && glad.puedeCombatir()})


}