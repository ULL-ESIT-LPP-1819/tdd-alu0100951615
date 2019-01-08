class Menu
  attr_accessor :name, :ingredients, :instructions

  def initialize(name, &block)
    @desayuno_array = []
    @almuerzo = []
    @cena = []
    @titulo
    @ingesta
    @name = name
    @ingredients = []
    @instructions = []

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
    output << "\n#{'=' * @name.size}\n\n"
    output << "Ingredients: #{@ingredients.join(', ')}\n\n"

    @instructions.each_with_index do |instruction, index|
      output << "#{index + 1}) #{instruction}\n"
    end

    output
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
  
  def get_Array()
    return @desayuno_array
  end
  

end

