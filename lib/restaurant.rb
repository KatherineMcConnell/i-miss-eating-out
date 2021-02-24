class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def closing_time(close)
     (opening_time.to_i + close).to_s + ":00"
  end

  def open_for_lunch?
    @opening_time.to_i < 12
  end

  def menu_dish_names
    upcased_dishes = []
    @dishes.each do |dish|
      upcased_dishes << dish.upcase
    end
    upcased_dishes
  end

  def announce_closing_time(time)
    # require "pry"; binding.pry
    if (opening_time.to_i + time) < 12
      "#{name} will be closing at #{(opening_time.to_i + time)}:00AM"
    else
      "#{name} will be closing at #{(opening_time.to_i + time - 12)}:00PM"
    end
  end
end
