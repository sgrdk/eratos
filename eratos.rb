include Math

#素数の配列を返すメソッド
def fetch_prime_list(max)
  table = Array.new(max.to_i + 1,true)
  prime_list = []

  (2..max.to_i).each do |num|
      if table[num] == true
        prime_list << num
      k = num * num
      while k <= max.to_i
        table[k] = false
        k += num
      end
    end
  end
  puts prime_list.join(', ')
end

if __FILE__ == $PROGRAM_NAME
    fetch_prime_list(ARGV[0])
end