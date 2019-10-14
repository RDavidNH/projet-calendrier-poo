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
  
  def self.find_by_email(email)
    @@all_users.each do |user|
      return user if user.email == email
    end
  end
  
end
