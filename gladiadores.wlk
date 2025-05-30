import armamento.*
import coliseo.*
class GladiadorMirmilon{
    var puntosVida = 100
    var property arma //espada o gladius, 1 sola
    var property armadura //escudo o casco, 1 solo 
    var property fuerza 
    
    method atacar(unGladiador) =  unGladiador.recibirDanio(self.poderAtaque() - unGladiador.defensa())

    method destreza() = 15

    method puntosArmadura() = arma.aportarPuntosArmadura(self)

    method recibirDanio(danio){
        puntosVida = (puntosVida - danio).max(0)
    }

    method poderAtaque() = arma.valorAtaque() + fuerza

    method defensa() = self.puntosArmadura() + self.destreza()

    method puedeCombatir() = puntosVida > 0

    method crearGrupo(unGladiador){
        return new GrupoGladiadores(nombre = "mirmillolandia", gladiadores = [self, unGladiador])
    }
}

class GladiadorDimachaerus{
    var puntosVida = 100
    const property armas //lista
    var property destreza 
    
    method atacar(unGladiador){
        unGladiador.recibirDanio(self.poderAtaque() - unGladiador.defensa())
        destreza += 1
    }

    method fuerza() = 10

    method recibirDanio(danio){
        puntosVida = (puntosVida - danio).max(0)
    }

    method poderAtaque() = self.fuerza() + armas.sum({a => a.valorAtaque()})

    method defensa() = destreza / 2

    method puedeCombatir() = puntosVida > 0

    method crearGrupo(unGladiador){
        return new GrupoGladiadores(nombre = self.generarNombreGrupo(unGladiador), gladiadores = [self, unGladiador])
    }

    method generarNombreGrupo(unGladiador){
        var sumaPoderes = self.poderAtaque() + unGladiador.poderAtaque()
        return "D -" + sumaPoderes.toString()
    }
}