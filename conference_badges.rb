def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  badge_messages = []
  array.each_with_index { |name, i| badge_messages << badge_maker(name) }
  badge_messages
end

def assign_rooms(array)
  room_assign = []
  array.each_with_index do |name, i|
    room_assign << "Hello, #{name}! You'll be assigned to room #{i+1}!"
  end
  room_assign
end

def printer(array)
  badges = batch_badge_creator(array)
  rooms = assign_rooms(array)
  
  array.each_with_index do |name, i|
    puts badges[i]
    puts rooms[i]
  end
end