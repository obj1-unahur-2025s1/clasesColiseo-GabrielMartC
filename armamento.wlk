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

    method aportarPuntosArmadura(unGladiador) = 10
}

class ArmaduraEscudo{

    method aportarPuntosArmadura(unGladiador) = 5 + unGladiador.destreza() * 0.10
    
}