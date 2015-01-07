def power(base,exponent)
  iterate_variable = exponent
  answer = 1
  while iterate_variable > 0
    answer = answer * base
    iterate_variable = iterate_variable - 1
  end
  puts answer
end

def factorial(num)
  answer = 1
  (1..num).each do |x|
    answer = answer * x
  end
  puts answer
end

def uniques(such_ary)
  new_ary = []
  such_ary.each do |x|
    unless new_ary.include?(x)
      new_ary << x
    end
  end
  puts new_ary
end

def combinations(ary1, ary2)
  new_ary = []
  ary1.each do |x|
    ary2.each do |y|
      new_ary << x + y
    end
  end
  puts new_ary
end

def is_prime?(num)
  bill = num - 1
  (2..bill).each do |x|
    if num % x == 0
      puts "false"
      return false
    end
  end
  puts "true"
  true
end

def overlap(rect1, rect2)
  if rect2[0][0] < rect1[1][0] && rect2[0][1] < rect1[1][1]
   puts "true"
   return true
  else
    puts "false"
    return false
  end
end

def counting_game(players, countnum)
  full_ary = Hash.new{|hsh,key| hsh[key] = []}
  (1..players).each do |x|
    full_ary[x] = []
  end
  i = 1
  player_count = 1
  while i <= countnum
    
    full_ary[player_count].push i
    if (i % 14) < 7
      if (i % 11) == 0
        player_count += 2
        if player_count > 10
          player_count -= 10
        end
      else
        player_count += 1
        if player_count > 10
          player_count -= 10
        end
      end
    else 
      if (i % 11) == 0
        player_count -= 2
        if player_count < 1
          player_count +=10
        end
      else
        player_count -= 1
        if player_count < 1
          player_count +=10
        end
      end
    end
    i += 1
  end
puts full_ary
end