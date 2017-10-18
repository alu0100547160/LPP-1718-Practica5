require 'pry'

class Alimento
    attr_reader :titulo, :gi
	def initialize(titulo, gi)
		@titulo = titulo
		@gi = gi
	end
	
	def get_titulo
		
		return @titulo
		
	end 
	
	#Se calcula las 24 ares trapezoidales 
	def areatrapezoide
		dt = 5
		si = []
		gi.each do |i|
			s = (((gi[i]-gi[0]) + ((gi[i - 1]) - gi[0])) /2 ) * dt
			si.push(s)
		end 
		return si
	end
	#El área incremental bajo la curva (aibc)
	def aibc(si)
		area = 0
		si.each do |number|
			area += number
		end
		area
	end
	#Indice glucémico del individuo respecto de el alimento 
	def igind(area_alimento,area_gluco)
		indicegi = (area_alimento / area_gluco) * 100
		
		indicegi
	end
	
	#Este método recibe el valor de el indice glucémico de un alimento 
	#respecto a un individuo y la cantidad de inidividuos que se comparar 
	def ig(i_gi,n)
		@ig = 0
		i_gi.each do |i|
			@ig += i
		end 
		@ig = @ig / n 
		return @ig 
	end
	
	#Método para imprimir por pantalla el objeto 
	def to_s
		s = "Alimento           IG\n"
		s += "#{@titulo}      "
		s += "#{@ig}"
		
		return s
	end
	

	
end 
