def begins_with_r(arr)
  arr.all? { |e| e.start_with?("r")}
end

def contain_a(arr)
  arr.select{ |e| e.chars.include?("a")}
end

def first_wa(arr)
  arr.each do |e|
    return e.to_s if e.to_s.start_with?("wa")
  end
end

def remove_non_strings(arr)
  arr.select do |e|
    e == e.to_s
  end
end

def count_elements(arr)
  hash = {}
  arr.each do |e|
    if hash[e].nil?
      hash[e] = 1
    else
      hash[e] += 1
    end
  end
  arr.uniq.map do |e|
    count_hash = {:count => hash[e]}
    e.merge(count_hash)
  end
end

def merge_data(keys, data)
  i = 0
  while i < keys.length
    temp = data[0][keys[i][:first_name]]
    keys[i].merge!(temp)
    i += 1
  end
  keys
end

def find_cool(arr)
  cool = []
  arr.each do |e|
    e.each do |key, value|
      if value == "cool"
        cool << e
      end
    end
  end
  cool
end

def organize_schools(schools)
  hash = {}
  schools.each do |name, location_hash|
    current_school = location_hash[:location]
    if hash[current_school].nil?
      hash[current_school] = [name]
    else
      hash[current_school] << name
    end
  end
  hash
end
