=begin
Exercício 1.2. Implemente a classe Cliente que possua os atributos
nome, saldo e limite. Esta deve conter os métodos sacar(double val),
depositar(double val), e gets para nome, saldo e limite. Sabe-se
que só é possível sacar se o saldo+limite forem superiores a quantia. O método checar saldo deve retornar o valor saldo mais o limite
limite. Implemente, também, uma classe Doc que possui o método
transferir(Cliente c1, Cliente c2, double quantia) que saca
uma quantia de c1, se este tiver saldo, e deposita na conta de c2.
Implemente também alguns testes.
=end

class Cliente 
    def initialize(nome,saldo,limite)
        @nome = nome
        @saldo = saldo
        @limite = limite
    end 
    
    def nome
        @nome
    end
    
    def saldo
        @saldo
    end
    
    def limite
        @limite
    end
    
    def checar_saldo
        puts "Saldo: #{self.saldo} Limite: #{self.limite}"
    end
    
    def sacar(val)
        @val = val
        if @val < self.saldo && @val < self.limite
           @saldo -= @val
           @limite -= @val
        else
            puts "Saldo/Limite indisponível... Saldo: #{self.saldo} Limite: #{self.limite}"
        end
        
    end
    
    def depositar(val)
        @val = val
    end
    
end

c1 = Cliente.new("Bryan", 500,600)
c2 = Cliente.new("Cris", 470,800)

c1.checar_saldo
c2.checar_saldo

c1.sacar(40)
c2.sacar(167.50)

c1.checar_saldo
c2.checar_saldo