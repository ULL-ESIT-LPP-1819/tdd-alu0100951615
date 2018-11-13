Node = Struct.new(:value, :next_, :prev)

class DLL
    
    attr_reader :head, :tail
    
    def initialize(val)
       @head = Node.new(val,nil,nil)
       @tail = @head
    end
    
    def insert_tail(val)
       aux = Node.new(val,nil,@tail)
       @tail.next_ = aux
       @tail = aux
    end
    
    def insert_head(val)
       aux = Node.new(val,@head,nil)
       @head.prev = aux
       @head = aux
    end
    
    def extract_head
       puntero = @head.value
       @head = @head.next_
       @head.prev = nil
       return puntero
    end
    
    def extract_tail
       puntero = @tail.value
       @tail = @tail.prev
       @tail.next_ = nil
       return puntero
    end
    def to_s
        string = "("
        puntero = @head
        while (puntero != nil) do
            string += "#{puntero.value.getSal} gr,"
            puntero = puntero.next_
        end
        string += ")"
        return string
    end
    def clasificacion
        puntero = @head
        puntero2 = ""
        cart = Array.new
        while (puntero != nil) do
            if (puntero.value.getSal <= 4)
                puntero2 = "Bajo en Sal"
            end
            if (puntero.value.getSal > 4 && puntero.value.getSal <= 20)
                puntero2 = "Medio en Sal"
            end
            if(puntero.value.getSal > 20)
                puntero2 = "Alto en Sal"
            end
            cart.push(puntero.value.getNombre + "," + " " + puntero2)
            puntero = puntero.next_
        end
       cart.sort
    end
    
end