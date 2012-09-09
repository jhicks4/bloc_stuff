class Die
  def initialize(faces)
    @faces = faces
  end
  def sides
    @faces
  end
  def roll
    rand(@faces)
  end
end
my_die = Die.new(6)
puts my_die.roll