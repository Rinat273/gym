 Workout.destroy_all
 Train.destroy_all
 Exercise.destroy_all
 TrainBlock.destroy_all
 TrainPlan.destroy_all


breast = TrainPlan.create!(title: "Грудь и бицепс")
back = TrainPlan.create!(title: "Спина и трицепс")
legs = TrainPlan.create!(title: "Ноги и плечи")


barbellst = "Жим штанги лежа"
barbelld = "Жим штанги диагонально"
butterfly = "Сведение на бабочке"
biceps = "Штанга на бицепс стоя"
hammers = "Молотки"
press = "Подъем ног на пресс"
deadlift = "Становая тяга"
barbell_squat = "Приседание со штангой"
top_link = "Верхняя тяга за голову"
triceps_grip = "Трицепс обратным хватом"
french_press = "Французский жим"
leg_extension = "Разгибание ног сидя"
squat = "Приседания"
leg_press = "Жим ног сидя"
deadlift2 = "Мертвая тяга"
leg_curl = "Сгибание ног"
dumbbell_fly = "Разведение гантелей стоя"


trblock = [
  [breast, barbelld, 1],
  [breast, barbellst, 2],
  [breast, butterfly, 3],
  [breast, biceps, 4],
  [breast, hammers, 5],
  [breast, press, 6],

  [back, deadlift, 1],
  [back, barbell_squat, 2],
  [back, top_link, 3],
  [back, triceps_grip, 4],
  [back, french_press, 5],

  [legs, leg_extension, 1],
  [legs, squat, 2],
  [legs, leg_press, 3],
  [legs, deadlift2, 4],
  [legs, leg_curl, 5],
  [legs, dumbbell_fly, 6]
 ]

trblock.each do |item|
  TrainBlock.create!(train_plan_id: item[0].id, title: item[1], sequence_number: item[2])
end


data = [
  [TrainBlock.find(1), 1, 15, 30],
  [TrainBlock.find(1), 2, 15, 35],
  [TrainBlock.find(1), 3, 15, 40],
  [TrainBlock.find(1), 4, 15, 40],

  [TrainBlock.find(2), 1, 14, 40],
  [TrainBlock.find(2), 2, 15, 35], 
  [TrainBlock.find(2), 3, 15, 35],

  [TrainBlock.find(3), 1, 15, 6], 
  [TrainBlock.find(3), 2, 15, 6], 
  [TrainBlock.find(3), 3, 15, 7], 

  [TrainBlock.find(4), 1, 15, 12], 
  [TrainBlock.find(4), 2, 15, 17], 
  [TrainBlock.find(4), 3, 15, 17],
  [TrainBlock.find(4), 4, 15, 17],

  [TrainBlock.find(5), 1, 15, 6], 
  [TrainBlock.find(5), 2, 15, 6], 
  [TrainBlock.find(5), 3, 15, 6], 
    
  [TrainBlock.find(6), 1, 25, 0],
  [TrainBlock.find(6), 2, 20, 0], 
  [TrainBlock.find(6), 3, 15, 0],
  [TrainBlock.find(6), 4, 12, 0],
    
  [TrainBlock.find(7), 1, 15, 20],
  [TrainBlock.find(7), 2, 15, 30],
  [TrainBlock.find(7), 3, 15, 40],

  [TrainBlock.find(8), 1, 15, 20], 
  [TrainBlock.find(8), 2, 15, 30],
  [TrainBlock.find(8), 3, 15, 30],

  [TrainBlock.find(9), 1, 15, 6],
  [TrainBlock.find(9), 2, 15, 6],
  [TrainBlock.find(9), 3, 15, 6], 

  [TrainBlock.find(10), 1, 15, 6], 
  [TrainBlock.find(10), 2, 15, 7],
  [TrainBlock.find(10), 3, 15, 6],
  [TrainBlock.find(10), 4, 15, 6], 
    
  [TrainBlock.find(11), 1, 15, 12], 
  [TrainBlock.find(11), 2, 15, 12],
  [TrainBlock.find(11), 3, 15, 14],
    
  [TrainBlock.find(12), 1, 20, 3],
  [TrainBlock.find(12), 2, 20, 3],

  [TrainBlock.find(13), 1, 15, 20],
  [TrainBlock.find(13), 2, 15, 40],
  [TrainBlock.find(13), 3, 15, 40],
  [TrainBlock.find(13), 4, 15, 40],
    
  [TrainBlock.find(14), 1, 15, 100],
  [TrainBlock.find(14), 2, 15, 100],
  [TrainBlock.find(14), 3, 15, 120],
  [TrainBlock.find(14), 4, 15, 140],

  [TrainBlock.find(15), 1, 15, 20],
  [TrainBlock.find(15), 2, 15, 40],
  [TrainBlock.find(15), 3, 15, 40],
   
  [TrainBlock.find(16), 1, 15, 6],
  [TrainBlock.find(16), 2, 15, 6],

  [TrainBlock.find(17), 1, 10, 6],
  [TrainBlock.find(17), 2, 8, 8],
  [TrainBlock.find(17), 3, 8, 10],
  [TrainBlock.find(17), 4, 7, 8]
]

data.each do |item|
  Exercise.create!(train_block_id: item[0].id, approach_number: item[1], repeats: item[2], mass: item[3])
end
