import wollok.game.*

object autoPrincipal {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoRojo.png"
	var position = game.at(0,0)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method posicion(nuevaPosicion) { position = nuevaPosicion }
	
	method estaBien(){
		return image == "autitoRojo.png"
	}
	
	
	method mover(dir){
		if ( self.estaBien() ){
			self.posicion(dir)}
	}		    
				   	    
				  
	method colision(obj){
			
			self.image("Colision.png")
			game.removeVisual(obj)

	}		
	
}	  

object auto1{

		method image() = "autitoAzul.png"
		method position() = game.at(7,5)
		method colision(){}
		
		}

object auto2{

		method image() = "autitoVerde.png"
		method position() = game.at(6,5)
		method colision(){}
		
		}

object auto3{

		method image() = "autitoAzul.png"
		method position() = game.at(9,5)
		method colision(){}
		
		}

object auto4{

		method image() = "autitoVerde.png"
		method position() = game.at(10,5)
		method colision(){}
		
		}

object pared1{
	
		method image() = "paredLadrillos3.jpg"
		method position() = game.at(11,4)
		method colision(){}
		
		}

object pared2{
		
		method image() = "paredLadrillos2.jpg"
		method position() = game.at(5,4)
		method colision(){}
		
	}

object parking{
	
		method image() = "parking.png"
		method position() = game.at(8,5)
		method colision(){
			game.removeVisual(self)
			autoPrincipal.image("autitoRojo.png")
			game.say(autoPrincipal, "llegué!")
		}
			
			
}
