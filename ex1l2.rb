=begin
Exercício 1.1. Todo partido político é composto por um nome, uma
ideologia, uma sigla e um número. Um candidato é composto por nome
e um partido. Um candidato pode mudar de partido (neste caso se qualquer regra),
e suas informações deverão sempre ser mostradas na tela
junto com as informações do partido. Todo candidato deverá sempre ter
um partido (caso Brasileiro). Implemente todas as classes envolvidas
nessa situação, lembre-se de usar construtores e metodos get, se necessário. Implemente também alguns testes.
É proíbido usar conceitos que ainda não foram abordados.
=end

class Partido
    def initialize(nome,ideologia,sigla,num)
      @nome = nome
      @ideologia = ideologia
      @sg = sigla
      @num = num
    end
    def nome
        @nome
    end
    
    def filia_candidato(candidato)
        candidato.define_partido(self)
    end
end

class Candidato
    def initialize(nome, nacionalidade, partido)
     @nome = nome
     @partido = partido
     @nacionalidade = nacionalidade
    
    end
    
    def nacionalidade
        @nacionalidade
    end
    
    def partido
        @partido
    end
    
    def info
         if @nacionalidade !=:br
              puts "nome: #{@nome}, partido: #{@partido.nome}, nacionalidade: #{@nacionalidade}"
          
             elsif  @partido.is_a? Partido
                puts "nome: #{@nome}, partido: #{@partido.nome}, nacionalidade: #{@nacionalidade}"
             else
                raise "O candidato precisa de um partido!"
         end
    end
end
f = Partido.new("PT","esquerda","ptb",12)
g = Candidato.new("Carlos",:USA,f)
c = Candidato.new("Alberto",:br,f)
g.info
c.info