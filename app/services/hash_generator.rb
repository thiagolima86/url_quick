class HashGenerator
  def self.call()
    new.call
  end

  def initialize
    set_size
  end
  
  def call
    hash = new_hash
    while(Url.find_by(short_url: hash).present?) do
      hash = new_hash
    end

    hash
  end

  private
  attr_reader :size

  def new_hash
    char = %w{ 1 2 3 4 5 6 7 8 9 0 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z}
    (0...size).map{ char.to_a[rand(char.size)] }.join
  end
  
  def set_size
    @size = Random.new.rand(4..8)
  end
end