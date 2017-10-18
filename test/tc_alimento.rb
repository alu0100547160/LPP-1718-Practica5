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
        
        #Calculo de las áreas
        si_compota1 = @alimento1.areatrapezoide
        a_compota1  = @alimento1.aibc(si_compota1)
        si_yogurt1  = @alimento2.areatrapezoide
        a_yogurt1   = @alimento2.aibc(si_yogurt1)
        si_choco1   = @alimento3.areatrapezoide
        a_choco1    = @alimento3.aibc(si_choco1)
        si_glucosa1 = @glucosa1.areatrapezoide
        a_glucosa1  = @glucosa1.aibc(si_glucosa1)
        
        #Cálculo de los índices 
        igi_compota1= @alimento1.igind(a_compota1,a_glucosa1)
        igi_yogurt1 = @alimento2.igind(a_yogurt1,a_glucosa1)
        igi_choco1  = @alimento3.igind(a_choco1,a_glucosa1)
        
        
        
       
        @alimento4 = Alimento.new("Compota de Manzana",[4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9])
        @alimento5 = Alimento.new("Yogurt",[4.9,4.9,5.2,5.8,6.5,7.0,7.2,7.3,7.3,6.6,6.2,6.1,6.0,6.1,5.9,5.9,5.9,5.9,5.8,5.8,5.5,5.5,5.6,5.9,5.9])
        @alimento6 = Alimento.new("Chocolate",[4.6,4.6,4.7,4.7,4.8,4.7,4.8,4.8,4.6,4.4,4.7,4.7,4.8,4.7,5.2,5.9,5.9,5.7,5.4,5.3,5.1,4.8,4.8,4.9,5.9])
        @glucosa2  = Alimento.new("Glucosa",[6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5])
        si_compota2 = @alimento4.areatrapezoide
        a_compota2  = @alimento4.aibc(si_compota2)
        si_yogurt2  = @alimento5.areatrapezoide
        a_yogurt2   = @alimento5.aibc(si_yogurt2)
        si_choco2   = @alimento6.areatrapezoide
        a_choco2    = @alimento6.aibc(si_choco2)
        si_glucosa2 = @glucosa2.areatrapezoide
        a_glucosa2  = @glucosa2.aibc(si_glucosa2)
        
        #Cálculo de los índices 
        igi_compota2= @alimento4.igind(a_compota2,a_glucosa2)
        igi_yogurt2 = @alimento5.igind(a_yogurt2,a_glucosa2)
        igi_choco2  = @alimento6.igind(a_choco2,a_glucosa2)
       
        #Una vez tengo los indices de cada alimento los meto a un vector 
        compota = []
        yogurt  = []
        choco   = []
        compota.push(igi_compota1)
        compota.push(igi_compota2)
        yogurt.push(igi_yogurt1)
        yogurt.push(igi_yogurt2)
        choco.push(igi_choco1)
        choco.push(igi_choco2)
        
        #en estos vectores ya puedo calcular los ig de cada alimento
        @ig_compota = @alimento1.ig(compota,2)
        @ig_yogurt  = @alimento2.ig(yogurt,2)
        @ig_choco   = @alimento3.ig(choco,2)
        @ig_compota.to_i
        
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
    
    def test_simple2
        assert_equal(77.43094092501174,@ig_compota)
        assert_equal(87.5655106364575,@ig_yogurt)
        assert_equal(9.090046968612224,@ig_choco)
    end
    
    def test_type_check 
        assert_raise(NameError) {Alimento.new(Platano,[2.5,6.8,5.6,3.5])}
    end
        
    def teardown
    ## Nothing really
    end
    
    def test_to_s
        
        assert_equal("Alimento           IG\nCompota de Manzana      77.43094092501174", @alimento1.to_s)
    
    end
    
    def test_failure 
        assert_equal("Compota de Manzana", (@alimento1.get_titulo) , "Getter de atributo titulo")
    end
    
    
    
    
    
    
    
    
    
    
    
    
    
    

end