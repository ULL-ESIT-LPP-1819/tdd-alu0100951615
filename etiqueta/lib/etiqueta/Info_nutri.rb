class Info_nutri
    
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