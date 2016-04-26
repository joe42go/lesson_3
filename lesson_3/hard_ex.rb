# Exercises: Hard 1 / Question #4

# create UUID method

def choose_rand (rand_letter, rand_num)
  if rand(2) == 0
    rand_letter
  else
    rand_num
  end
end

def create_uiid
  uiid_str = '' 
  32.times do |i|
    if i == 8 || i == 13 || i == 18 || i == 23 
      uiid_str << '-'
    else
      rand_letter = ('a'..'f').to_a.sample
      rand_num = (0..9).to_a.sample.to_s
      uiid_str << choose_rand(rand_letter, rand_num)
    end
  end
  puts uiid_str
end

create_uiid

