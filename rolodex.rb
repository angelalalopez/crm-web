class Rolodex
  attr_reader :contacts

  def initialize
    @contacts = []
    @id = 1000
    add_contact Contact.new("Angel", "Lopez", "angel@angelopez.ca", "The awesomest")
    add_contact Contact.new("Bob", "Roberts", "bob@bob.com", "Robert squared")
    add_contact Contact.new("Nick", "Jonas", "the@cutest.com", "The cutest")
    add_contact Contact.new("Joe", "Fresh", "joe@fashion.com", "So fresh and clean")
    add_contact Contact.new("Michael", "Angelo", "blue@turtle.com", "Ninja master")
    add_contact Contact.new("Donna", "Tello", "orange@turtle.com", "Fave is pepperoni")
    add_contact Contact.new("Raph", "Phael", "red@turtle.com", "Likes pointy things")
    add_contact Contact.new("Leo", "Nardo", "purple@turtle.com", "Best friend is a rat")
  end

  def add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end

  def find(contact_id)
    @contacts.find { |contact| contact.id == contact_id }
  end

end