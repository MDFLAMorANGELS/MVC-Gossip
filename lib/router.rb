class Router

    #On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
    def initialize
        @controller = Controller.new
    end

    def perform
        puts "Bienvenue dans le gossip project"

        while true
            #on affiche le menu
            puts "Tu veux faire quoi jeune padawan ?"
            puts "1\. Je veux creer un gossip"
            puts "2\. Afficher tous les potins"
            puts "3\. Supprimer un potin"
            puts "4\. Je veux quitter l'app"
            params = gets.chomp.to_i  #on attend le choix de l'utilisateur
            case params  #en fonction du choix
            when 1
                puts "Tu as choisis créer un gossip"
                @controller.create_gossip
                puts "Gossip a bien été crée"
            when 2
                puts"Voici votre liste :"
                @controller.index_gossips
            when 3
                #@controller.delete_gossip
                puts"Gossip a bien été supprimé"
            when 4
                puts "A bientot"
                break  #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
            else
                puts "Ce choix n existe pas, veuillez réesayer"
            end
        end
    end
end