20.times do
  Task.create name: FFaker::Lorem.words.join(" "), description: FFaker::Lorem.sentence
end
