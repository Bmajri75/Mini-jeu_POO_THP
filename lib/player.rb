class  Player
    attr_accessor :name, :life_points
# init de mon objet 
    def initialize(name)
        @name = name
        @life_points = 10
    end


# methode qui affiche l'etats des player
    def show_state
        puts "#{@name} a #{@life_points} point de vie "
    end

    def gets_damage(damage)
        @life_points = @life_points - damage
        if @life_points <= 0
            puts "le joueur #{@name} a été tué BOWDELL"
        end
    end

    def attacks(player)
        attaque_damage = compute_damage() #je recupere un rend de compute damage que je stock dans attaque damage
        puts "le joueur #{@name} attaque le joueur #{player.name}" # texte d'action

        gets_damage(attaque_damage) # j'appel la methode gets_damage je lui place en parametre le resultat de la methode compute_damage qui sera un Int
        puts "il lui inflige #{attaque_damage} points de dommages"
    end

    def compute_damage
        return rand(1..6)
    end
end