# The Innovation Station
# A Ruby program for creating an innovative environment

# Set up the necessary constants
MAX_ENERGY = 10
MIN_ENERGY = 0
MAX_CREATIVE_SPARK = 5
MIN_CREATIVE_SPARK = 0

# Initialize the Innovation Station instance variables
@current_energy = MAX_ENERGY
@current_creative_spark = MAX_CREATIVE_SPARK
@innovations = []

# Create the Innovation Station class
class InnovationStation
  # Constructor
  def initialize
    @current_energy = MAX_ENERGY
    @current_creative_spark = MAX_CREATIVE_SPARK
    @innovations = []
  end

  # Instance methods
  def spark_energy
    @current_energy = @current_energy + 2
    if @current_energy > MAX_ENERGY
      @current_energy = MAX_ENERGY
    end
    puts "The Innovation Station is feeling energized! Energy level is now #{@current_energy}!"
  end

  def spark_creativity
    @current_creative_spark = @current_creative_spark + 2
    if @current_creative_spark > MAX_CREATIVE_SPARK
      @current_creative_spark = MAX_CREATIVE_SPARK
    end
    puts "The Innovation Station is feeling creative! Creative spark is now #{@current_creative_spark}!"
  end

  def innovate
    if @current_energy >= 0 && @current_creative_spark >= 0
      @innovations << "New Innovation!"
      @current_energy = @current_energy - 1
      @current_creative_spark = @current_creative_spark - 1
      puts "A new innovation has been created! Energy level is now #{@current_energy} and Creative spark is now #{@current_creative_spark}!"
    else
      puts "Not enough energy or Creative spark to innovate!"
    end
  end

  def show_innovations
    puts "Innovations created so far:"
    @innovations.each do |innovation|
      puts innovation
    end
  end
end

# Create a new instance of the Innovation Station
innovation_station = InnovationStation.new

# Use a loop to create 10 innovations
10.times do 
  innovation_station.innovate
end

# Show the innovations
innovation_station.show_innovations

# Re-energize and re-spark the Innovation Station
innovation_station.spark_energy
innovation_station.spark_creativity

# Create 10 more innovations
10.times do 
  innovation_station.innovate
end

# Show the innovations
innovation_station.show_innovations