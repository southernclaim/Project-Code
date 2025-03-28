require "colorize"
require "artii"
require_relative "./src/battle.rb"

class Jogo
    nomeDoJogo = "Project Code" # Coloquei asssim por que não sei qual vai ser o nome do jogo
    a = Artii::Base.new :font => 'slant'
    a.asciify('Teste')
    puts "Bem Vindo ao #{nomeDoJogo} um RPG feito para terminais!"
    loop do
        nextMove = gets.chomp
        if nextMove ==  "jogar"
            Game.play
        end
    end
end

Jogo