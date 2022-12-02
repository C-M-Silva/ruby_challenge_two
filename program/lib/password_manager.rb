class PasswordManager
  # First we initalise the password has as a global variable using the @ - :D
  def initialize
      @passwords = {}
  end
  
  # This the next function (add) takes two arguments (service, password), 
  # which in turn provide the ability to store that information into the 
  # @password hash created within the initialize() function.
  # Importantly, some simple logic has been impelled which checks if the password length 
  # is >= 8 and if there is at least one special character. 

  def add(service, password)
      arr = ['!', '@', '$', '%', '&']
      if (password.count password).to_i >= 8 && arr.any? {|s_char| password.include? s_char} == true
          return @passwords[service] = password
      else 
          return
      end
  end
  
  # Password_for() takes one argument and by presenting it with the ‘key’ information (service)  is returns the values (password)
  def password_for(service)
    return @passwords[service]
  end
  
  # services() returns all the keys available in the hash using the .keys() method.
  def services
    return @passwords.keys
  end
  
end
