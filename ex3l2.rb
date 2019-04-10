=begin 
Uma bateria é composto por um número que representa
sua carga (de 0 a 100). Toda bateria pode ser descarregada a 
cada momento em 10 unidades e carregada em 5. Um celular é composto de
um número (identificador), um nome de usuário e uma bateria. Cada
vez que um celular liga, dever-se-á mostrar na tela o nome do
usuário e seu nome na tela, porém se não houver bateria (ou esta estiver
sem carga) nada deverá ser mostrado e se a carga estiver abaixo de
20 a mensagem bateria fraca deverá ser mostrada. 

Para desligar, uma mensagem de despedida deverá ser mostrada na tela, caso não haja 
bateria (ou a bateria estiver com carga baixa), nada deverá ser mostrado. 
Cada vez que liga, 20 unidades de bateria deverão ser gastos (se
houver menos, nada deverá ser feito) e quando desliga 10. Um celular só desliga se 
estiver ligado e vice-versa.
Um celular também pode tocar um som se estiver ligado e com bateria com carga suficiente (ao
menos 10 unidades).
Podemos também trocar a bateria de um celular quando quisermos.
Implemente todas as classes envolvidas nessa
situação, lembre-se de usar construtores e metodos get, se necessário.
Implemente também alguns testes. É proíbido usar conceitos que ainda
não foram abordados.
=end

class Bateria
    @@carga = 100
    def initialize
        @carga = @@carga
    end
    def carregar
        if @carga < 100
            @carga += 5
        end
    end
    
    def descarregar
        if @carga >0
            @carga -=10
        end
    end
    def get_carga
        @carga
    end
end

class Celular
    def initialize(nome, numero, bateria)
        @nome = nome
        @numero = numero
        @bateria = bateria
        @ligado = false
        
    end
    def liga_desliga
        if @ligado == false
            self.ligar
            @ligado = true
        else
            self.desligar
            @ligado = false
        end
    end
    
    def ligar
        if @bateria.get_carga >= 20
            puts "Olá #{@nome}, seu número é: #{@numero}."
            @bateria.descarregar
            @bateria.descarregar
            self.carga

        elsif @bateria.get_carga < 20 && @bateria.get_carga > 0
            puts "Bateria baixa!" 
            @bateria.descarregar
            @bateria.descarregar
            self.carga
        end
    end
    
    def desligar
        if @bateria.get_carga >= 20
            puts "Até logo! :)."
            @bateria.descarregar
        elsif @bateria.get_carga < 20 && @bateria.get_carga > 0
            @bateria.descarregar
        end
    end
    
    def carga
        puts "Bateria: #{@bateria.get_carga}%"
    end
    
    def tocar
        if @ligado == true && @bateria.get_carga>10
            puts"RRRIIIIIIINNNNNNGGGG!!!"
            @bateria.descarregar
        end
    end
    
    def trocar_bateria
        @bateria = Bateria.new
    end
            
end

b1 = Bateria.new
b2 = Bateria.new

c1 = Celular.new("alcatel", 123, b1)
c2 = Celular.new("iphone", 1234, b2)


c1.liga_desliga

c1.liga_desliga
c1.carga
c1.liga_desliga

c1.tocar
c1.carga

c1.trocar_bateria

c1.carga