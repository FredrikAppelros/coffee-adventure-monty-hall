numDoors = 3
numItrs = 1e6

randInt = (max) ->
  Math.floor Math.random() * max

monty = (swap) ->
  # First, the host should hide the prize behind one of the doors

  # Now, the contestant picks a door

  if swap
    ###
    If the contestant's tactic is to swap door, we need to do something
    here
    ###

  # Here we should return if the contestant won or not

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
