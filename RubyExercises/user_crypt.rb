require_relative 'crud'

class User
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
                  email address: #{@email}"
  end

end

alan = User.new("Alan", "Chu", "ac1", "alan_chu@yahoo.com",
                      "password1")
john = User.new("John", "Doe", "john1", "john1@example.com",
                      "password2")

hashed_password = alan.create_hash_digest(alan.password)

puts hashed_password
