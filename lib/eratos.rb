class Eratos
  def initialize( max )
    raise ArgumentError unless max.is_a?(Integer)
    @max = max
    @search = []
    @prime = []
  end

  def print
    calculate
    @prime
  end

  private

  def calculate
    @search = (2..@max).to_a
    @prime = []
    while @search.first < Math.sqrt(@max).ceil
      @prime << @search.first
      @search.reject! {|item| item % @prime.last == 0}
    end
    @prime += @search
  end
end
