
class Dice

  def initialize
    @roll_array = Array.new
  end

  def roll(number)

    count = 0

    while count <= number do

      @roll_array.push(rand(6) + 1)
      count += 1
    end
    return @roll_array[-1]
  end

  def get_roll_array
    @roll_array
  end

end
