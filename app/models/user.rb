class User
  attr_accessor :name, :email, :username, :access_token

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

end
