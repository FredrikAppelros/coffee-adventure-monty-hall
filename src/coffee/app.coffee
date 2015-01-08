numDoors = 3
numItrs = 1e6

randInt = (max) ->
  Math.floor Math.random() * max

monty = (swap) ->
  # The host hides the car behind one of the doors
  car = randInt numDoors
  # The contestant chooses a door
  choice = randInt numDoors

  if swap
    ###
    The host opens all other doors except one. Since he must only
    reveal goats, if the contestant has not chosen the car, he must
    leave the door that hides the car.

    If the contestant has chosen the car, the host picks a door at
    random which he does not open.
    ###
    last = (choice + randInt(numDoors - 1)) % numDoors
    last = if choice != car then car
    # The contestant switches from his original choice
    choice = last

  choice == car

numWins = 0
for i in [0...numItrs]
  numWins++ if monty false
ratio = ((numWins / numItrs).toFixed 2) * 100 + '%'
console.log 'Win ratio when staying with your original choice:', ratio

numWins = 0
for i in [0...numItrs]
  numWins++ if monty true
ratio = ((numWins / numItrs).toFixed 2) * 100 + '%'
console.log 'Win ratio when switching from your original choice:', ratio
