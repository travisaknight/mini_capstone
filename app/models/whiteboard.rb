input = [1, 1, 2, 3]

output = true

def func(array)
  new_hash = {}
  i = 0
  while i < array.length
    if new_hash[array[i]]
      return true
    else
      new_hash[array[i]] = true
    end
    i += 1
  end
  return false
end

func(input)
