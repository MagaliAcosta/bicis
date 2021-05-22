class Farolito {
	
	method peso() = 0.5
	
	method carga() = 0
	
	method esLuminoso() = true
	
}

class Canasto {
	var property volumen
	
	method peso() = volumen / 10
	
	method carga() = volumen * 2
	
	method esLuminoso() = false
	
}

class MorralBici {
	var property largo
	var property ojoDeGato
	
	method peso() = 1.2
	
	method carga() = largo / 3
	
	method esLuminoso() = ojoDeGato
	
}

/*
 Para agregar un nuevo tipo de accesorio lo que se deberia hacer es agregar a todos los
 accesorios nuevos los metodos peso(), carga() y esLuminoso() para que sean polimorficos
 */