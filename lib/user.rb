class User
  attr_accessor :email, :age
  
  @@all_users = []
  
  def initialize(email, age)
    @email = email
    @age = age
    
    @@all_users << self
  end
  
  def self.all
    return @@all_users.length
  end
  
  def find_by_email(email)
  
  end
  
end
