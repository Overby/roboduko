class Square
  attr_reader :input, :possibilities

  def initialize(input)
    #@stdin = input_stream
    #@input = input_stream   #revise
    @input = input.join.chars.map { |element| element.to_i }
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end
