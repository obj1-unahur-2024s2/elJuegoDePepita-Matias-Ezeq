import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var position = game.origin()

	method image() {
		return "pepita" + if (self.estaEnElNido()) "-grande.png" else ".png"
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method position(arg){
		position = arg
	}

	method position(){
		return position
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
	}

	method estaCansada() {
		return energia <= 0

	}

	method estaEnElNido() {
		
		return position == nido.position()
	}

}

