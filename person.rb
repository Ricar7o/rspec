class Person
  attr_accessor :first_name, :last_name

  def initialize(first = nil, last = nil)
    @first_name = first
    @last_name = last
  end

  def full_name
    if first_name && last_name
      "#{first_name} #{last_name}"
    elsif first_name
      first_name
    elsif last_name
      last_name
    end
  end

  def reverse_name
    full_name.reverse if first_name || last_name
  end
end