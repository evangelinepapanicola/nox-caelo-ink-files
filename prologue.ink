//prologue goes here

It's a quiet, uneventful night at home, as usual.
You are {players_name} - and right now, you're watching TV after a long day of chores.

"Woof!"

* [What's that?]
You hear Cerberus barking in the hallway. You go to investigate.
-> investigate

* [Call Cerberus]
"Cerberus!" You call out.
-> call_cerberus

=== investigate ===

Out in the hallway, your dog Cerberus is sat innocently by the door, looking at you expectantly.
You check your watch, and realise it's time for your daily night-time walk in the forest!

* [Head out for walk with Cerberus]
-> walk

* [Pet Cerberus]
Cerberus seems happy.
-> walk


=== call_cerberus ===

Your dog, Cerberus wanders into the room and sits down, looking at you expectantly.

* [Pet Cerberus]
Cerberus seems happy.
You check your watch, and realise it's time for your daily night-time walk in the forest!
-> walk

* [Follow]
You follow Cerberus out into the hallway. The realisation hits, and sure enough you check your watch - it's time for your daily night-time walk in the forest!
-> walk

=== walk ===

It's a cold, but clear night in the Luna Woods. As you walk down the main path through the trees, Cerberus runs around excitedly.

Eventually, the path comes to a split - as you are used to. You can go either way:

* (go_left) [Go left]
You reckon Cerberus needs the exercise, so you take the left-hand path, the slightly longer way around.

* (go_right) [Go right]
Feeling tired, you take the right-hand path, the slightly quicker way around.

- You notice something glimmering in the dirt.

* [Pick up]

{ go_left: 
        ~money = money+2
}

{go_left: You found a £2 coin. Nice!}

{go_right: 
        ~money++
}
{go_right: You found a £1 coin.}

* [Ew, no thanks, who knows where that's been]
You ignore the weird thing in the dirt, and continue onward.

- The two paths converge, bringing you back onto the main path.

Normally, it's just you and Cerberus on these walks. People don't usually go out into the forest at this time of night.

"HELLO?"

But weirdly, you hear someone yelling in the distance.

"HELLOO??"

Cerberus barks at the mystery voice.

You also notice some footprints on the ground.

* [Head towards the voice]
You follow the sound of the person's voice.
-> the_voice

* [Follow the footprints]
You follow the footprints on the ground.
-> the_footprints

= the_voice
"IS SOMEBODY THERE??"

The voice continues. It gets louder as you approach it.

* [YEAH?]
* [WHERE ARE YOU?]

- You yell out to the mystery person.

"PLEASE HELP ME!" The person yells back, with urgency. Sensing that this person may be in danger, you:

* [Pick up the pace]

* [Look for clues]

-> END

= the_footprints
-> END