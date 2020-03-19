class Person
  attr_accessor :name, :partner

  def initialize(name)
    @name = name
  end

  def get_married(person)
   self.partner = person
   if person.class != Person
     raise PartnerError
   else
     person.partner = self
   end
 end

  class PartnerError < StandardError
 end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
