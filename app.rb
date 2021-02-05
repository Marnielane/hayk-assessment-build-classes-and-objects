#* Initializes with a name, address, number of floors, and number of tenants
#* The name and number of tenants should be readable and writeable
#* The address should be readable
#* The number of floors should not be readable or writeable
#* The class should keep track of all buildings that are created

class Building
    attr_reader :address
    attr_accessor :name, :num_of_tenants

    @@all =[]

    def initialize name, num_of_tenants
        @name = name
        @address = address
        @num_of_floors = num_of_floors
        @num_of_tenants = num_of_tenants
        @@all << self
    end

    def self.all
        @@all
    end

    #* The class should tell the average number of tenants in a building
    def self.avg_all_by_floor
        self.all.reduce(0) { |sum, element| sum + element.num_of_tenants} / self.all.length
    end
#* A building should have a placard method that returns the name and address of the building
    def placard
        "#{name}, #{address}"
    end
#* A building should have a method returns the average number of tenants per floor
    def avg_num_of_tenants_by_floor
        num_of_tenants.to_f / @num_of_floors.to_f
    end

end