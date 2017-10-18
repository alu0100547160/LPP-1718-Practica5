#require './alimento'
require 'lib/alimento.rb'
require 'test/unit'


class TestAlimento < Test::Unit::TestCase
    
    
    def setup
        
         #Definimos los alimentos 
        @alimento1 = Alimento.new("Compota de Manzana",[6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9])    
        @alimento2 = Alimento.new("Yogurt",[6.1,6.6,6.3,6.3,6.1,6.9,6.8,6.5,6.4,6.9,6.8,6.5,6.3,6.2,6.7,6.2,5.9,5.8,5.8,5.8,5.8,5.8,5.9,6.2,6.4])
        @alimento3 = Alimento.new("Chocolate",[6.5,6.5,6.7,6.5,6.5,6.8,6.7,6.2,6.5,7.2,6.9,7.0,6.3,6.2,6.1,5.9,5.8,6.1,6.7,6.7,6.6,6.7,6.9,7.2,7.1])
        @glucosa1  = Alimento.new("Glucosa",[4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1])
        
        
    end
    
    def test_simple
        assert_equal("Compota de Manzana",@alimento1.titulo)
        assert_equal([6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3 ,7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9],@alimento1.gi)
        assert_equal("Yogurt",@alimento2.titulo)
        assert_equal([6.1,6.6,6.3,6.3,6.1,6.9,6.8,6.5,6.4,6.9,6.8,6.5,6.3,6.2,6.7,6.2,5.9,5.8,5.8,5.8,5.8,5.8,5.9,6.2,6.4],@alimento2.gi)
        assert_equal("Chocolate",@alimento3.titulo)
        assert_equal([6.5,6.5,6.7,6.5,6.5,6.8,6.7,6.2,6.5,7.2,6.9,7.0,6.3,6.2,6.1,5.9,5.8,6.1,6.7,6.7,6.6,6.7,6.9,7.2,7.1],@alimento3.gi)
        assert_equal("Glucosa",@glucosa1.titulo)
        assert_equal([4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1],@glucosa1.gi)
        
    end
    
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
end