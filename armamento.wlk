class ArmaFilo{ //espadas, dagas, hachas
    const property filoArma 
    const property longitud

    method valorAtaque() = filoArma * longitud
}

class ArmaContundente{ //mazas, martillos
    const property peso

    method valorAtaque() = peso
}

class ArmaduraCasco{
    // method valorArmadura() = 10

    method aportarPuntosArmadura(unGladiador){
        unGladiador.armadura(10)
    }
}

class ArmaduraEscudo{
    // method valorArmadura() = 5

    method aportarPuntosArmadura(unGladiador){
        unGladiador.armadura(5 + unGladiador.destreza() * 0.10)
    }
}