  #create a personal chef class
  #make his name attribute accessible
  #make and initialize method that sets the name attribute
  #make a method called make_toast that accepts a parameter
    # (brown, light brown, burnt black etc...)
  #make a method called make_juice that accepts a parameter
    #(orange, apple, cranberry)
  #make a method called make_eggs that accepts two parameters; the quantity of eggs
      # (1,2,3, etc) and the style (overeasy, scrambled, sunnyside, etc...)


  #create personal chef class
class PersonalChef
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def make_toast(toasted)
      puts "Your toast is #{toasted}"
  end

  def make_juice(flavor)
      puts "You want #{flavor} juice"
  end

  def make_eggs(quantity, style)
      puts "You want #{quantity} eggs, cooked #{style}"
  end
end

#now i can run the code
#Lia = PersonalChef.new  #which makes a chef Lia
#Lia.make_toast("burnt") #or i can do
#Lia.make_juice("cranberry")




#:hired by default, true
#make a method called fire! which fires your current chef by switching their :hired attribute from
  #true to false
#when a chef's :hired attribute is false, make it so that he cannot make_toast, make_juice, or eggs

# :busy by default, false
#make a method called cooking? that checks to see if a chef is busy or not.
#make sure they have a :busy attribute that is set true any time a chef makes toast, juice, or eggs.
#make the following methods:
#serve_toast
#serve_juice
#serve_eggs
#after using any of these methods, set the :busy attribute back to false


class PersonalChef
  attr_accessor :name, :hire, :busy

  def initialize(name)
    @name = name
    @hire = true
    @busy = false
  end

  def make_toast(toasted)
    if @hire == true && @busy == false
      puts "Your toast is #{toasted}"
    elsif @hire == true && @busy == true
          serve_toast
    end
  end

  def make_juice(flavor)
    if @hire == true && @busy == false
      puts "You want #{flavor} juice"
    elsif @hire == true && @busy == true
            serve_toast
    else puts "Your fired!"
    end
  end

  def make_eggs(quantity, style)
    if @hire == true && @busy == false
      puts "You want #{quantity} eggs, cooked #{style}"
    elsif @hire == true && @busy == true
      serve_toast
    else puts "Your fired!"
    end
  end

  def fire!
    @hire = false
  end

  def cooking?
    @busy = true
  end

  def serve_toast
    @busy = false
  end

  def serve_juice
    @busy = false
  end

  def serve_eggs
    @busy = false
  end
end

#now i can call
lia = PersonalChef.new("lia")
