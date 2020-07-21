require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


        player1 = Player.new("Josiane")
        puts "a ma gauche #{player1.name}"

        player2 = Player.new("Jose")
        puts "a ma droite #{player2.name}"


        while (player1.life_points >= 0 ) || (player2.life_points >= 0)
        puts"======================="
        puts "Voici l'etat de chaque joueur"
        puts" #{player1.show_state} #{player2.show_state}"
        puts"======================="
        puts "Assez parler Passons à la phase d'attaque :"
        player1.attacks(player2)
        puts"======================="
        puts "#{player2.name} ne vas pas se laisser faire il retourne une attaque"
        player2.attacks(player1)
        puts"======================="
    end



binding.pry