class SecretNumber
  attr_accessor :number

  def initialize
    @number = Array.new

    10.times do |i|
      i += 1
      @number << i
    end

    @number = @number.sample
  end
end
