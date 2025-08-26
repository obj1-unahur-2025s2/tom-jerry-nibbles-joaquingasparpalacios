object tom {
  var energia = 50
  var ultimoRatonComido = null
  var metrosRecorridos = 0

  method ultimoRatonComido() = ultimoRatonComido
  method metrosRecorridos() = metrosRecorridos

  method correr(metros) {
    energia = energia - (metros/2)
    metrosRecorridos = metros
  }
  method comer(raton) {
    energia = energia + (12 + raton.peso())
    ultimoRatonComido = raton
  }
  method velocidadMaxima() = 5 + energia/10 

  //PARTE DOS

  method puedeCazarA(distancia) = energia - (distancia/2) > 0 
  method cazarA(raton, distancia) {
      self.correr(distancia)
      self.comer(raton)
  }
  method cazarA_SiPuede(raton, distancia) {
    if (self.puedeCazarA(distancia)){
        self.cazarA(raton, distancia)
    }
      
  }
}

object jerry {
  
  var edad = 2
  method peso() = edad * 20 
  method cumplirAños() {
    edad = edad + 1
  }
}

object nibbles {
  method peso() = 35
}

//Parte 3
// Inventar otro ratón

object perez {
  var peso = 10
  method peso() = peso
  method comerQuesos(cantidadDeQuesos) {
    peso += cantidadDeQuesos*20
  }
}