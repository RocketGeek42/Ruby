class Mage
    attr_accessor :name, :spell
    def enchantment(target)
        puts "#{@name} casts #{@spell} on #{target.name}!"
    end
end