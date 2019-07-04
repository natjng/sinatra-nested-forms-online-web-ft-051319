class Ship
    attr_accessor :name, :type, :booty

    @@all = []

    def initialize(details)
        
        details.each do |k, v|
            self.send(("#{k}="), v)
        end

        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end