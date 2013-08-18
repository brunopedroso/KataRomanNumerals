class Roman
  DIGITS = [[50, 'L'],
            [40, 'XL'],
            [10, 'X'],
            [9, 'IX'],
            [5, 'V'], 
            [4, 'IV'],
            [1, 'I']]

  def self.convert(n)
    result = ''
    DIGITS.each do |d|
      while n>=d[0]
        result += d[1]
        n-=d[0]
      end
    end
    # em homenagem ao fabs ;-)
    return result
  end
  
end