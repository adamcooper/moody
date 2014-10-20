emotions = ['Sad', 'Happy', 'Confused', 'Stressed Out']

emotions.each do |emotion|
  Emotion.create(name: emotion)
end
