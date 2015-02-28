# Monty Hall

In this application we're going to use computer programming to simulate a series of real events. We will see that we can actually learn something about the world around us while still staying comfortable within the reach of our keyboard.

The simulation will take the form of a game show. It is based on a famous probability puzzle called the [Monty Hall problem](http://en.wikipedia.org/wiki/Monty_Hall_problem). In the game show, there are three doors.

:door: :door: :door:

Behind one of them there is a prize; a shiny new car.

:car:

Behind the other two doors there are goats.

:goat: :goat:

The contestant starts by picking one of the doors. Let's say that the left door was picked.

:door: :door: :door:

:woman:

The game host, who knows where the prize is, then opens one of the other doors to reveal a goat.

:door: :goat: :door:

:woman: :man:

After this, the contestant gets the choice to switch to the other door if they want.

:woman: :question: :door:

The question is: Is it to your advantage to switch door or to stay with your original choice?

## Instructions

To answer this question we will simply perform the contest above several times for each of the two tactics; staying with the same door or switching to the new one. The tactic that gets the prize the most times is probably the best choice. To be sure of our conclusion, we will actually run it a million times each.

In order to do this, we need to randomly place the prize behind one of the doors. Then we need the contestant to randomly choose one of the doors. Lastly, we need the host to pick one of the doors that the contestant has not chosen, and that does not contain the prize. If there are two of these, he picks one of them at random.

So, obviously, we need some way to introduce randomness into our code. But how do we do that? The computer always does what we tell it to do; we can't tell it to do something arbitrarily. Luckily for us, there's something called [pseudorandomness](http://en.wikipedia.org/wiki/Pseudorandomness), while not strictly random, is good enough for us.

Let us represent the different doors as integers. The door on the left is 0, the door in the middle is 1 and the door on the right is 2. We can then pick a door at random by simply generating a number from 0 to 3 (the 3 is not included in the output; the possible values will be 0, 1 and 2).

There exists a standard function, `Math.random`, which gives us a pseudorandom number between 0 and 1. In our case we want to have random integers, instead of a fraction, in order to pick our doors. To help us with this, a function called `randInt` has been created. This function takes a number, `max`, as an argument and returns an integer that is between 0 and `max`.

Now, armed with our function that can generate pseudorandom integers, we can now start writing some code. Most of the code is already complete. All we need to do is fill in the missing parts of the `monty` function.

### Step-by-step instructions

1. The first thing we need to do is hide the prize behind one of the doors. To do this, we just need to pick one of the doors at random and remember which one it is.

2. Now, we need to do the same thing again, but this time the door will represent the contestant's first pick.

3. Now comes the tricky part. If the contestant is using the tactic where he switches his choice of door, we need to imitate the behavior of the host.

  If the contestant has chosen a door, behind which, there is a goat, then the host needs to open the other door that contains the last goat. Thus, the switch will result in the contestant choosing the door with the prize.

  In the other case that the contestant actually chose the correct door from the start, the host just picks a door at random from the available ones. The contestant then switches to the one that the host did not open.

4. Lastly, we just need to return the result of the contest. If the contestant's current pick is the same as the prize, we should return `true`, otherwise `false`.
