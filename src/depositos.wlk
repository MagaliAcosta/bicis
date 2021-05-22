import bicis.*
import accesorios.*

class Deposito {
	var property bicicletas = []
	
	method biciRapidas() = bicicletas.filter({ bici => bici.velocidad() > 25 })
	
	method bicisConMarca(marca) = bicicletas.filter({ bici => bici.marca() == marca }).asSet()
	
	method esNocturno() = bicicletas.all({ bici => bici.tieneLuz() })
	
	method tieneBiciParaCargaPesada(kilos) = bicicletas.any({ bici => bici.carga() > kilos })
	
	method marcaBiciMasRapida() = bicicletas.max({ bici => bici.velocidad() }).marca()
	
	method cargaDeBicisLargas() = bicicletas.filter({ bici => bici.largo() > 170 }).sum({ bici => bici.carga() })
	
	method bicisSinAcc() = bicicletas.filter({ bici => bici.accesorios() == [] })
	
	method bicisCompanierasDe(bicicleta) = bicicletas.filter({ bici => bici.marca() == bicicleta.marca()  and 
											(bici.largo().between(bicicleta.largo() - 10 , bicicleta.largo()) or
											bici.largo().between(bicicleta.largo(), bicicleta.largo() + 10)) and
											bici != bicicleta })
											
	method hayCompanieras() = bicicletas.any({ bici => not self.bicisCompanierasDe(bici).isEmpty() })
	
	
	method seHizoLaLuz() = if (self.hayLuz()) bicicletas.filter({ bici => not bici.tieneLuz() }) + bicicletas.filter({ bici =>  bici.tieneLuz() })
							== bicicletas else self.hayLuz()
							
	method hayLuz() = bicicletas.any({ bici => bici.tieneLuz() })
	
}
