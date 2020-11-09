class Person
  attr_accessor :name, :birthday, :hair_color, :height, :weight, :handed, :complexion,
    :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)   # gets an sets every attribute on an object instantiated from Person
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)
    end
  end
end

# With this pattern, we have made our code much more flexible.
 # We can easily alter the number of attributes in the class and 
 # change the hash that we initialize the class with, without editing our initialize method.