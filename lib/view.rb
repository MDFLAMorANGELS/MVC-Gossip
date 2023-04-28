class View

    def create_gossip
        puts "Choisis un nom d author"
        author = gets.chomp.to_s
        puts "Créer ton contenu"
        content = gets.chomp.to_s
        return params = { content: content, author: author }
    end

    def index_gossips(gossips)
        gossips.each do |gossip|
        puts "#{gossip.author} a dit : #{gossip.content}"
        end
    end

end