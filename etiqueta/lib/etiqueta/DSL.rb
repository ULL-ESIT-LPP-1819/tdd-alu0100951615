class Menu
  attr_accessor :name, :ingredients, :instructions

  def initialize(name, &block)
    @desayuno_array = []
    @almuerzo = []
    @cena = []
    @titulo
    @ingesta = []
    @name = name
    @ingredients = []
    @instructions = []
    @valor_energetico = 0

    if block_given?  
      if block.arity == 1
        yield self
      else
       instance_eval(&block) 
      end
    end
  end

  def to_s
       
    output = @name
    output << "\t \t \t Composición nutricional"
    output << "\n#{'=' * @name.size*3}\n\n"
    output << "\t \t \t Grasa \t Carbohidratos \t Proteinas \t fibra \t sal \t valor energético \n \n "

    @valor_total = 0
    
    @desayuno_array.each do |elemento|
        if elemento[:descripcion] == nil
            elemento[:descripcion] = 0.00
        end
        if elemento[:fibra] == nil
            elemento[:fibra] = 0.00
        end
        if elemento[:grasas] == nil
            elemento[:grasas] = 0.00
        end
        if elemento[:carbohidratos] == nil
            elemento[:carbohidratos] = 0.00
        end
        if elemento[:proteinas] == nil
            elemento[:proteinas] = 0.00
        end
        if elemento[:sal] == nil
            elemento[:sal] = 0.00
        end
        puts elemento[:descripcion]
        puts elemento[:grasas]
        puts elemento[:carbohidratos]
        puts elemento[:proteinas]
        puts elemento[:fibra]
        puts elemento[:sal]
        puts @valor_energetico = (elemento[:grasas]*9 + elemento[:carbohidratos]*4 + elemento[:proteinas]*4 +elemento[:fibra]*2 + elemento[:sal]*6)/10
    end
    
    @almuerzo.each do |elemento|
        if elemento[:descripcion] == nil
            elemento[:descripcion] = 0.00
        end
        if elemento[:fibra] == nil
            elemento[:fibra] = 0.00
        end
        if elemento[:grasas] == nil
            elemento[:grasas] = 0.00
        end
        if elemento[:carbohidratos] == nil
            elemento[:carbohidratos] = 0.00
        end
        if elemento[:proteinas] == nil
            elemento[:proteinas] = 0.00
        end
        if elemento[:sal] == nil
            elemento[:sal] = 0.00
        end
        puts elemento[:descripcion]
        puts elemento[:grasas]
        puts elemento[:carbohidratos]
        puts elemento[:proteinas]
        puts elemento[:fibra]
        puts elemento[:sal]
        puts @valor_energetico = (elemento[:grasas]*9 + elemento[:carbohidratos]*4 + elemento[:proteinas]*4 +elemento[:fibra]*2 + elemento[:sal]*6)/10
    end
    
     @cena.each do |elemento|
        if elemento[:descripcion] == nil
            elemento[:descripcion] = 0.00
        end
        if elemento[:fibra] == nil
            elemento[:fibra] = 0.00
        end
        if elemento[:grasas] == nil
            elemento[:grasas] = 0.00
        end
        if elemento[:carbohidratos] == nil
            elemento[:carbohidratos] = 0.00
        end
        if elemento[:proteinas] == nil
            elemento[:proteinas] = 0.00
        end
        if elemento[:sal] == nil
            elemento[:sal] = 0.00
        end
        puts elemento[:descripcion]
        puts elemento[:grasas]
        puts elemento[:carbohidratos]
        puts elemento[:proteinas]
        puts elemento[:fibra]
        puts elemento[:sal]
        puts @valor_energetico = (elemento[:grasas]*9 + elemento[:carbohidratos]*4 + elemento[:proteinas]*4 +elemento[:fibra]*2 + elemento[:sal]*6)/10
    end
    
 end

    
    
    def titulo(name)
        @titulo = name
    end
    

    
    def ingesta(name,options = {})
      ingesta = name
      ingesta << "(#{options[:min]}" if options[:min]
      ingesta << "(#{options[:max]}" if options[:max] 
      
      @ingesta << ingesta
    end
    
   
    
    def desayuno(name, options = {})
        desayuno = name
        desayuno << "(#{options[:descripcion]}" if options[:descripcion]
        desayuno << "(#{options[:porcion]}" if options[:porcion]
        desayuno << "(#{options[:grasas]}" if options[:grasas]
        desayuno << "(#{options[:gramos]}" if options[:gramos]
        desayuno << "(#{options[:carbohidratos]}" if options[:carbohidratos]
        desayuno << "(#{options[:proteinas]}" if options[:proteinas]
        desayuno << "(#{options[:fibra]}" if options[:fibra]
        desayuno << "(#{options[:sal]}" if options[:sal]
        
        @desayuno_array << desayuno

  end   
  
  
  def almuerzo(name,options = {})
      almuerzo = name
      almuerzo << "(#{options[:descripcion]}" if options[:descripcion]
      almuerzo << "(#{options[:porcion]}" if options[:porcion]
      almuerzo << "(#{options[:grasas]}" if options[:grasas]
      almuerzo << "(#{options[:carbohidratos]}" if options[:carbohidratos]
      almuerzo << "(#{options[:proteinas]}" if options[:proteinas]
      almuerzo << "(#{options[:fibra]}" if options[:fibra]
      almuerzo << "(#{options[:sal]}" if options[:sal]
       
      @almuerzo << almuerzo
  end
  
  
  def cena(name, options = {})
     cena = name 
     cena << "(#{options[:descripcion]}" if options[:descripcion]
     cena << "(#{options[:porcion]}" if options[:porcion]
     cena << "(#{options[:gramo]}" if options[:gramo]
     cena << "(#{options[:grasa]}" if options[:grasa]
     cena << "(#{options[:proteina]}" if options[:proteina]
     cena << "(#{options[:carbohidratos]}" if options[:carbohidratos]
     cena << "(#{options[:sal]}" if options[:sal]
      
     @cena << cena
  end


end

