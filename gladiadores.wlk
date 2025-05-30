import armamento.*
class GladiadorMirmilon{
    var puntosVida = 100
    var property arma //espada o gladius, 1 sola
    var property armadura //escudo o casco, 1 solo 
    var property fuerza 
    var puntosArmadura = 0
    
    method atacar(unGladiador) =  unGladiador.recibirDanio(self.poderAtaque() - unGladiador.defensa())

    // method defenderse() =

    method destreza() = 15

    method puntosArmadura(puntos){
        puntosArmadura = puntos
    }

    method recibirDanio(danio){
        puntosVida = (puntosVida - danio).max(0)
    }

    method poderAtaque() = arma.valorAtaque() + fuerza

    method defensa() = 
}

class GladiadorDimachaerus{
    var puntosVida = 100
    const property armas //en principio lista
    var property destreza 
    
    method atacar(unGladiador){
        unGladiador.recibirDanio(self.poderAtaque() - unGladiador.defensa())
        destreza += 1
    }
    // method defenderse() =

    method fuerza() = 10

    method recibirDanio(danio){
        puntosVida = (puntosVida - danio).max(0)
    }

    method poderAtaque() = self.fuerza() + armas.sum({a => a.valorAtaque()})

    method defensa() = 
}