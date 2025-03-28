require "colorize" # A gem que bota as cores

maxx = 30 # Não vou usar essas variaveis é so pra eu saber qual o limite | edit: não vou usar mesmo essa merda
maxy = 10

class Game
    def self.play # É a classe principal do jogo tu pode por oque quiser 
    x = 7
    y = 1
    ex = 12
    ey = 1
    pontos = 0
    loop do
        puts "Controls: A, D, Space".colorize(:green)
        nextMove = gets.chomp
        if nextMove == "D"
            x = x + 1
        end
        if nextMove == "A"
            x = x - 1
        end
        pos = x + y
        if pos > 14
            pos = 14
        end
        if pos < 8
            pos = 8
        end
        enemyPos =  rand(8..14)
        system("clear")
        puts "Pontos: #{pontos}".colorize(:green)

        ###########Posições do personagem###############
        if pos == 8
            puts "@-----------------------------"

        end
        if pos == 9
            puts "-@-----------------------------"

        end
        if pos == 10
            puts "-----@-------------------------"

        end
        if pos == 11 # Eu não faço a menor ideia doqu eu to fazendo
            puts "---------@---------------------"

        end
         if pos == 12 
            puts "--------------@----------------"

        end
        if pos == 13
            puts "--------------------@----------"

        end
        if pos == 14
            puts "---------------------------@---"

        end
        ################Posição do Inimigo###################
        if enemyPos == 8
            puts "%-----------------------------"
        end
        if enemyPos == 9
            puts "-%-----------------------------"
        end
        if enemyPos == 10
            puts "-----%-------------------------"
        end
        if enemyPos == 11
            puts "---------%---------------------"
        end
        if enemyPos == 12
             puts "--------------%----------------"
        end
        if enemyPos == 13
            puts "--------------------%----------"
        end
        if enemyPos == 14
            puts "---------------------------%---"
        end
        ##############################################
        if nextMove == " " # barra de espaço
            if pos == 8
                puts "-|-----------------------------"
                puts " ^-----------------------------"
                if enemyPos == 8
                    pontos = pontos + 1
                    puts "Hit!"
                end
            end
            if pos == 9
                puts "--|----------------------------"
                puts "- ^-----------------------------"
                if enemyPos == 9
                    pontos = pontos + 1
                    puts "Hit!"
                end
            end
            if pos == 10
                puts "-----|-------------------------"
                puts "---- ^-------------------------"
                if enemyPos == 10
                    pontos = pontos + 1
                    puts "Hit!"
                end
            end
            if pos == 11
                puts "---------|---------------------"
                puts "-------- ^--------------------"
                if enemyPos == 11
                    pontos = pontos + 1
                    puts "Hit!"
                end
            end
            if pos == 12
                puts "--------------|----------------"
                puts "------------- ^----------------"
                if enemyPos == 12
                    pontos = pontos + 1
                    puts "Hit!"
                end
            end
            if pos == 13
                puts "--------------------|----------"
                puts "------------------- ^_----------"
                if enemyPos == 13
                    pontos = pontos + 1
                    puts "Hit!"
                end
            end
            if pos == 14
                puts "---------------------------|---"
                puts "-------------------------- ^----"
                if enemyPos == 14
                    pontos = pontos + 1
                    puts "Hit!"
                end
            end
            
            if pontos == 1
                puts "You win!".colorize(:green)
                exit
            end

        end

    end
end
end