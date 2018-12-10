class Individuo
    attr_accessor :nombre,:edad,:sexo
    
    def initialize(nombre,edad,sexo)
        @edad = edad
        @sexo = sexo
        @nombre = nombre
    end
    
    def to_s()
        return "Nombre :#{@nombre}, Edad #{@edad}, Sexo #{@sexo}, Lista #{@menu}"
    end
end  
    
    class Paciente < Individuo
        
        include Comparable
        
       attr_accessor :nombre,:edad,:sexo,:peso,:talla,:porcentaje,:imc,:valor,:menu
       
       def initialize(nombre,peso,talla,edad,sexo,porcentaje,imc,valor)
           super(nombre,edad,sexo)
           @nombre = nombre
           @edad = edad
           @sexo = sexo
           @peso = peso
           @talla = talla
           @porcentaje = porcentaje
           @imc = imc
           @valor = valor
       end
       
        def addMenu(menu)
        @menu = menu
        end
        
        def getPesoIdeal
        return (talla - 150) * 0.75 + 50
        end
        
        def getGastoBasal
            if sexo == "Mujer"
                (10 * peso) + (6.25 * talla) - (5 * edad) - 161
            else
                (10 * peso) + (6.25 * talla) - (5 * edad) + 5
            end
        end
        
        def getGastoTermogeno
            return getGastoBasal * 0.10
        end
        
       
       def <=>(other)
          [self.nombre,self.peso,self.talla,self.edad,self.sexo,self.porcentaje,self.imc,self.valor] <=> [other.nombre,other.peso,other.talla,other.edad,other.sexo,other.porcentaje,other.imc,other.valor] 
       end
       
       def calculateimc
           @imc = peso/(talla*talla)
           return @imc
       end
       
       def calculatePorcentaje
           if sexo == "Hombre"
               sexo = 1
           else
               sexo = 0
           end
           
           porcentaje = 1.2 * @imc + 0.23 * edad - 10.8 * sexo - 5.4
           
           if @imc < 18.5
               @valor = 'flaco'
           else if @imc < 24.9
               @valor = 'medio'
           else
               @valor = 'obeso'
           end
       end
       return porcentaje
       end
       
       def to_s()
           return "Nombre: #{@nombre}, Peso: #{@peso}, Talla: #{@talla}, Edad: #{@edad}, Sexo: #{@sexo}, IMC: #{@imc}, Porcentaje: #{@porcentaje}, Complexión: #{@valor}"
       end
        
end
    