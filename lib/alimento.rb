re 'pry'
class Alimento
    attr_reader :titulo, :g0, :gi
	def initialize(titulo, g0, gi)
		@titulo = titulo
		@g0 = g0
		@gi = gi
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
