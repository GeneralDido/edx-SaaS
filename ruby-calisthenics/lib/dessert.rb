class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    if @calories < 200
      true
    else
      false
    end
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = @flavor + " jelly bean"
  end

  def delicious?
    if @flavor == "licorice"
      false
    else
      true
    end
  end
end
