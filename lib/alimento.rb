re 'pry'
class Alimento
    attr_reader :titulo, :g0, :gi
	def initialize(titulo, g0, gi)
		@titulo = titulo
		@g0 = g0
		@gi = gi
	end
	
	#Se calcula las 24 ares trapezoidales 
	def areatrapezoide
		$dt = 5
		gi.each do |i|
			$S = (((i-g0) + ((gi[i - 1]) - g0)) /2 ) * dt
			Si.push(S)
		end 
		return Si
	end

	#El área incremental bajo la curva (aibc)
	def aibc
		for i in 0..23 
			area += Si.at(i)
		end
		return area
	end

	#Indice glucémico del individuo respecto de el alimento 
	def igind(area_alimento,area_gluco)
		indicegi = (area_alimento / area_gluco) * 100
		
		indicegi
	end
	
	#Este método recibe el valor de el indice glucémico de un alimento 
	#respecto a un individuo y la cantidad de inidividuos que se comparar 
	def ig(i_gi,n)
		i = 0;
		while i < i_gi.size
			ig += i_gi[i].size
			i + 1
		end 
		ig = ig / n 
		return ig 
	end
	
	def to_s
		s = ""
		s += "#{@titulo} "
		s += "#{@g0} "
		i = 0
		while i < @gi.size 
			s += "#{@gi[i]}, "
			i + 1
		end
		return s
	end
end
