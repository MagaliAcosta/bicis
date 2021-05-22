import accesorios.*

class Bicicleta {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura() = rodado * 2.5 + 15
	
	method velocidad() = if (largo > 120) rodado + 6 else rodado + 2
	
	method carga() = accesorios.sum({ acc => acc.carga() })
	
	method peso() = accesorios.sum({ acc => acc.peso() }) + rodado / 2
	
	method tieneLuz() = accesorios.any({ acc => acc.esLuminoso() })
	
	method cantAccLivianos() = accesorios.count({ acc => acc.peso() < 1 })
		
}
