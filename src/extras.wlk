import pepita.*
import wollok.game.*

object nido {
	var property position = game.at(7,6)
	var property image = ("nido.png")
}

object silvestre {

	method position() = game.at(pepita.position().x().max(3),0)
	var property image = ("silvestre.png")
	
	
}

