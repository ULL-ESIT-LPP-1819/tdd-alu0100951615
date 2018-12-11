class Info_nutri
    
    include Comparable
    
    attr_accessor :nombre,:calorias, :grasas, :grasa_saturada, :hidratos_carbono, :azucares, :proteina, :sal, :monoinsaturadas, :poliinsaturadas, :polialcoholes, :almidon, :fibra, :vitaminas, :porciones, :gramos
    def initialize(nombre,calorias,grasas,grasa_saturada,hidratos_carbono,azucares,proteina,sal,monoinsaturadas,poliinsaturadas,polialcoholes,almidon,fibra,vitaminas,porciones,gramos)
       self.nombre = nombre
       self.calorias = calorias
       self.grasas = grasas
       self.grasa_saturada = grasa_saturada
       self.hidratos_carbono = hidratos_carbono
       self.azucares = azucares
       self.proteina = proteina
       self.sal = sal
       self.monoinsaturadas = monoinsaturadas
       self.poliinsaturadas = poliinsaturadas
       self.polialcoholes = polialcoholes
       self.almidon = almidon
       self.fibra = fibra
       self.vitaminas = vitaminas
       self.porciones = porciones
       self.gramos = gramos 
    end
   
    def <=>(other)
        [self.nombre,self.calorias,self.grasas,self.grasa_saturada,self.hidratos_carbono,self.azucares,self.proteina,self.sal,self.monoinsaturadas,self.poliinsaturadas,self.polialcoholes,self.almidon,self.fibra,self.vitaminas,self.porciones,self.gramos] <=> [other.nombre,other.calorias,other.grasas,other.grasa_saturada,other.hidratos_carbono,other.azucares,other.proteina,other.sal,other.monoinsaturadas,other.poliinsaturadas,other.polialcoholes,other.almidon,other.fibra,other.vitaminas,other.porciones,other.gramos]
    end
   
    def calculate_Julios
        return (37*grasas + 37*monoinsaturadas + 37*poliinsaturadas + 17*hidratos_carbono + 17*azucares + 10*polialcoholes + 17*almidon + 8*fibra + 17*proteina + 25*sal)*porciones
    end
    
    def calculate_Kcal
        return (9*grasas + 9*monoinsaturadas + 9*poliinsaturadas + 4*hidratos_carbono + 4*azucares + 2.4*polialcoholes + 4*almidon + 2*fibra + 4*proteina + 6*sal)*porciones
    end
    
    def getNombre
        return @nombre
    end
    
    def getCalorias
        return @calorias
    end
    
    def getGrasas
        return @grasas
    end
    
    def getGrasasSaturadas
        return @grasa_saturada
    end
    
    def getHidratos
        return @hidratos_carbono
    end
    
    def getAzucares
        return @azucares
    end
    
    def getProteinas
        return @proteina
    end
    
    def getSal
        return @sal
    end
    
    def getMonoInsaturada
        return @monoinsaturadas
    end
    
    def getPoliinsaturada
        return @poliinsaturadas
    end
    
    def getPolialcoholes
        return @polialcoholes
    end
    
    def getAlmidon
        return @almidon
    end
    
    def getFibra
        return @fibra
    end
    
    def getVitamina
        return @vitaminas
    end
    

end