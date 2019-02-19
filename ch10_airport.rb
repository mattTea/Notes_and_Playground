class Airport
  def initialize
    @hangar = []
  end

  def land(plane)
    @hangar.push(plane)
    puts "plane.index: #{@hangar.index(plane)}"
  end

  def take_off(plane)
    if @hangar.length > 0
      if @hangar.include? plane
        plane_index = @hangar.index(plane)
        @hangar.delete_at(plane_index)
        return plane
      else
        return "Error: plane not in hangar"
      end
    else
      return "Error: there are no planes to take off"
    end
  end

  def hangar_report
    if @hangar.length == 1
      "There is 1 plane in the hangar"
    else
      "There are #{ @hangar.length } planes in the hangar"
    end
  end
end

class Plane
  def initialize
    # ...
  end
end

# write a Plan class if you can
# and get the following code sample running

heathrow = Airport.new
plane = Plane.new
plane_2 = Plane.new

heathrow.land(plane)
heathrow.land(plane_2)

puts heathrow.hangar_report
# => "There is 1 plane in the hangar"

heathrow.take_off(plane)

puts heathrow.hangar_report