/** First Wollok example */
import wollok.game.*

object lionel {
	var camiseta = titular
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}
	method cambiarCamiseta() {
		self.validarCambiarCamiseta()
		camiseta = camiseta.cambiar()
	}
	method validarCambiarCamiseta() {
		if (self.position().x() != 0) {
			self.error("no puede cambiarse la camiseta")
		}
	}
	method camiseta() {
		return camiseta
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}

object titular {

	method image() {
		return "lionel-titular.png"
	}
	method cambiar() {
		return suplente
	}
}

object suplente {

	method image() {
		return "lionel-suplente.png"
	}
	method cambiar() {
		return titular
	}
}
