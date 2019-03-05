//main story goes here

=== welcome_to_luna ===

You're falling for what feels like ages, almost like you're skydiving at midnight, in space, with the stars falling all around you. You can hear Cerberus howling above you, until you eventually catch him and hold him in your arms tightly.

CRASH!

The three of you land in a heap on a pavement, Parvus breaking your fall and Cerberus on top of you still in your arms. It's daylight. You look around and you're in a place you don't recognise... a city that looks almost like it's from medieval times. People are walking the streets, seemingly going about their daily lives just fine.

-> whats_goin_on

= whats_goin_on

+ (where_are_we)[Where are we?]

{got_up: "Welcome, my dear, to the kingdom of Luna!" Parvus says, with his arms outstretched. ->explore_luna|You hear some wheezing sounds coming from Parvus. Maybe you should stop crushing him before you ask questions.->whats_goin_on}

* (got_up)[Stop crushing Parvus]
You stand up so Parvus can breathe, and put Cerberus back on the ground.
->whats_goin_on

* -> explore_luna

= explore_luna

* [So where's this "imminent danger" you were talking about?]
    You mention that everyone here seems to be fine.
    "So perhaps it wasn't quite as... dire of a situation as I said, but you definitely wouldn't have come with me if I hadn't been so persuasive, no?" -> explore_luna
    
* [How on earth did we get here?]
    "That, my friend, is a story for another time... and by that, I mean I am bound by an oath that means I cannot tell you." -> explore_luna
    
* [What now?]
    "We begin 'Parvus' master plan to save the people of Luna', which begins with you getting ready to go dungeoneering. I'll explain more later. For now, I suggest you go explore the town, get yourself a weapon and some... suitable armour..." he says, looking at your dog walking clothes with a face that says "trying not too look disgusted".
    "Meet me back here by the town gates when you're ready to go!"
    
    You stand there, still gobsmacked and coming to terms with what on earth just happened. You're not entirely sure what the right thing is to do in this situation, but your phone has no signal or battery, and you have no idea how you'd even attempt to get back home. You aren't sure what this Parvus guy's intentions are, but perhaps It's worth hearing him out.
    
    You go for a walk to clear your head. 
    -> town_square
    
=== town_square === 

You find yourself in the town square. {!People are roaming about, coming in and out of shops and chatting.}

+ [Investigate the fountain]
-> _fountain

+ [Talk to the paperboy]
-> _paperboy

+ [Go down Crescent Street]
-> crescent_street

+ [Enter the alleyway]
{weaponEquipped == "": ->old_man_intro|->_alley}

+ [Town gates]

-> town_gates

= town_gates

You head back to the town gates, where Parvus is waiting for you.

{visibleWeapon == true: "Aha! I see you got yourself a weapon. Well done. You still need some armour, though." ->town_gates_options|"Haven't you got yourself a weapon and some armour yet? Come on! Luna won't save itself."}

<> {weaponEquipped == "fists": ->town_gates_options}

+ {weaponEquipped == ""} [Head back]
    ->town_square
    
= town_gates_options

* [I couldn't find any armour.]
"Oh," Parvus sighs. "Luna is SO useless in the fashion department! Luckily I found this for you as backup." He hands you some folded up clothes. "There's some stalls just around the corner you can use to change."
    * * [Change clothes]
        You go and find the stalls Parvus was talking about and change into the "armour" he gave you. Weirdly, it's a perfect fit. You look like a brave warrior, a knight, or perhaps like you got lost on the way to Comic-Con.
        
        "There you go! You look perfect."
        ->town_gates_options
    
* {visibleWeapon == true} [Isn't owning this weapon sort of... illegal?]
"Well, uhh...", Parvus stumbles over his words. "Sort of. Regular townsfolk aren't really allowed weapons. But you're no ordinary townsfolk, and besides, this is for justice! Plus, you're sort of forgetting that this whole mission is against the law, really. Taking down Scarlet is uh, kinda treason."
-> town_gates_options

* {visibleWeapon == false} [I've decided I don't need a weapon.]
"What on earth are you talking about? How on earth are you going to fight the enemies ahead of us?"
    * * [*flexes* With these guns!]
    * * [I can still fight with kicks and punches?]
    - - "Alrighty then. I'll allow it."
    ->town_gates_options

* ->dungeons_info

= crescent_street

{You decide to take a look down|You're on} Crescent street. This seems to be where all the main shops are.

+ [Enter the General Store]
    -> general_store

+ [Enter the Library]
You try to enter the library, but the door is locked shut. There's no sign to indicate that it's closed, or anything...
    + + [Go back]
        -> crescent_street

+ [Go back to the town square]
    ->town_square
    
= general_store

A jolly lady greets you as you enter. "Welcome love! Take a look at the wares I've got for sale."

->general_store_options

= general_store_options

    + {not get_weapon}[Ask about weapons]
        You ask her if she has any weapons for sale.
        "Weapons? Ho ho - not here my love. Ye might want to keep quiet about that sort of thing 'round here. But if ye really want something along those lines...", she leans in close to you, and whispers: 
        "Ye didn't here it from me, but the older fellow in the alleyway by the town square can get you what you need. Ye just need the code!"
        + + (weaponCode)[The code?]
        "Why yes - ye must say to him 'I have a message from Sebille'".
        You thank the lady for her guidance.
        -> general_store_options
    
    + {not coolSunglasses} [Look at the Cool Sunglasses]
        "An eye for taste I see!" The lady pipes up. "These sunglasses will have ye looking powerful. I doubt anyone'll mess with ye while wearing these! Would you like to buy 'em? They're a steal at £1"
        {not get_weapon: You realise you probably shouldn't waste money on sunglasses right now.}
        
        + + {get_weapon}[Yes please!]
            "A wise purchase!"
            You put on the Cool Sunglasses. You've never looked so badass!
            ~money--
            ~coolSunglasses = true 
            ->general_store_options
        
        + + [No thank you.]
            "Suit yerself."
            -> general_store_options
    
    + {not apple} [Look at the Apples]
        "Ah yes! These apples are so tasty they've been selling out fast. We only have one left! Buy it for just £1."
        {not get_weapon: You realise you probably shouldn't waste money on apples right now, even if you are peckish.}
        
        + + {get_weapon}[Yes please!]
            "A wise purchase!"
            You buy the apple, putting it in your backpack for later.
            ~money--
            ~apple = true 
            ->general_store_options
        
        + + [No thank you.]
            "Suit yerself."
            -> general_store_options
    
    + [Take your leave]
    "Take care, love!" The lady waves at you on your way out.
    -> crescent_street


= old_man_intro

{You enter the dark, pungent-smelling back alley of the town. You're not entirely sure if it's safe here. A tall, old-looking man in a long coat is stood leaning against the wall in a shifty manner. His eyes are fixed on you as you enter the alleyway.|The old man has his eyes fixed on you.}

+ [Make conversation]
    {weaponCode:"I have a message from Sebille" You tell the old man. ->get_weapon|You ask the shifty old man what brings him here.}
    "Listen, kiddo. I don't know who you are or what your business is - but I suggest you get outta here", the old man says, threateningly.
    -> old_man_intro

+ [Go back to the town square]
-> town_square

= get_weapon

{!"How- who are you?" the man says, startled by your statement.}
 + {weaponEquipped == ""} [I need a weapon.]
 "You've come to the right place. Just be warned, I'm only gonna let you buy one, and this is the only time I'm gonna show you them, so if you back out, you're not getting a weapon at all. It'll cost ya £2 to get one."
 
 {money < 2: You reach into your pockets and realise you haven't got enough money. "Come back when you can afford it!" the man says. You skulk back out of the alleyway. -> town_square}
 
    * * [Choose the sword]
        "Alright, the sword it is. Be careful, It's heavy."
        The old man hands you the sword. He's right, it is heavy - but you feel confident in wielding it. It has a nice decorative handle, and the name "Dawnbreaker" is engraved on the hilt.
        
        You hand over £2, and thank the man.
        
        ~money = money - 2
        ~weaponEquipped = "sword"
        ~visibleWeapon = true
        
        -> get_weapon
        
    * * [Choose the bow]
        "Fancy yourself a ranger, huh? The bow it is. The quiver it comes with will mean you never run out of arrows."
        You've always had a thing for archery, but this bow is like none you've ever seen before. It's very decorative, and looks like something you'd find in an art museum. You inspect the quiver it comes with, and find that every time you pull out an arrow, another one pops up in it's place, seemingly out of nowhere.
        
        You hand over £2, and thank the man.
        
        ~money = money - 2
        ~weaponEquipped = "bow"
        ~visibleWeapon = true
        
        -> get_weapon
        
    * * [Decide you don't need one]
        "Whaddya mean you don't need one? Changed your mind, eh?"
        You're not sure what it is - maybe seeing the weapons made it all a bit too real, or perhaps neither of them are really your style. Either way, you decide not to buy one, leaving you with no weapon.
        
        ~weaponEquipped = "fists"
        
        -> get_weapon
 
 * [I'm {players_name}.]
 "Well, {players_name}, I definitely haven't seen you 'round here before. I take it the shopkeep on Crescent street told you about me."
 -> get_weapon
 
 * (whatHappenedSebille) {weaponEquipped != ""} [Who is Sebille?]
 {!"Sebille... Sebille was my partner."}
 
    * * [What happened?]
        "Somebody killed her. Murder. Happened a long time ago. Never found out who did it."
        * * * [Why do you sell weapons in secret?]
                "Luna has a pretty strict 'no weapons' law. It's something I believe in, despite what I do. If the law was stricter, Sebille would probably still be alive right now. But you gotta pay the bills somehow."
                -> get_weapon
        
    
    * * [I'm sorry for your loss.]
    "Don't worry, I'm done grieving."
    -> whatHappenedSebille
    
* -> leave_alley

= leave_alley

You thank the old man for his help and leave the alleyway.
-> town_square
 
 
= _alley
->WIP

= _paperboy

{You notice a boy|The boy continues} yelling in the middle of the square, clutching a pile of newspapers. "MURDERS ON THE RISE! MURDERS ON THE RISE! IS ANYBODY SAFE? FIND OUT IN TODAY'S ISSUE OF THE DAILY LUNA!"

* [Ask about the murders]
You ask the boy about the murders he's yelling about.
"There's been more and more weapon related murders lately! Rather perculiar given the no-weapons law. Nobody can figure out what's going on"
    * * [I'll get to the bottom of it.]
        "Good luck stranger! If you find out anything interesting, do a pal a favour and let me know." 
        -> _paperboy
    
    * * [Are the guards here really that bad?]
        The boy looks a little offended.
        "No! Whoever's behind these crimes is just really good at cleaning up afterwards. They can never find any evidence. Besides, if you think they're so rubbish, you try solving a serial murder case!"
        -> _paperboy

* [Tell the boy to keep his voice down]
The boy snarls, "I'm just doing my job, leave me be!"
-> _paperboy

+ [Take your leave]
->town_square


= _fountain

You look at the fountain. It's a pretty standard fountain, with a statue of {met_scarlet: Scarlet|a pretty lady} holding a wine glass (which is where the water is coming from)

* [Scoop some coins out of the water]
You scoop some coins out of the water, while several people give you dirty looks. You gain £2! Handy that they use the same currency here. 
~money = money+2
-> _fountain

+ {money > 5} [Throw a coin in]
You make a wish, and throw in £1.
~money--
-> _fountain

+ [Look at something else]
-> town_square


= dungeons_info
{!"Anyway, it looks like we're ready to get going!" Parvus says excitedly.}
{!"So here's what you need to do. There are three legendary tomes that we can use to defeat Scarlet. The problem is, they're all hidden in 3 separate locations. I need you to go out there and retrieve them."}

* [How do you know that Scarlet is bad?]

Have you heard about the murders going on here?

 * * {_paperboy} [Yeah, I have.]
    "I know Scarlet is behind them. As soon as she decides she doesn't like someone, she hires people to do the deed. She is the only one powerful enough to conceal the evidence."
    ->dungeons_info
    
 * * {not _paperboy} [The what?]
 "There have been more murders around Luna than I can count, and they're becoming more and more frequent. I know Scarlet is behind them. As soon as she decides she doesn't like someone, she hires people to do the deed. She is the only one powerful enough to conceal the evidence."
    ->dungeons_info

+ (three_locations)[What are the three locations?]
    {!"Ignis Arena, Fox House and the Labyrinth of Fury."}
    + + [Tell me about the Ignis Arena.]
        "The Ignis Arena is where the Tome of Warfare is hidden. I would prepare for a fight if you're headed there."
        * * * [Head to the Ignis Arena]
                -> ignis_arena
        + + + [Tell me about the other places]
                ->three_locations
                
    + + [What's Fox House like?]
    "Fox House is, despite the name, not a house full of cute fuzzy foxes." Parvus says, in a disapointed tone.
    "Fox House is where you'll find Lady Emeralda, who is closely guarding the Tome of Charisma. It'll take a lot of convincing for her to hand it over."
        * * * [Head to Fox House]
                -> fox_house
        + + + [Tell me about the other places]
                ->three_locations
    
    + + [The Labyrinth of Fury, huh?]
    "The Labyrinth of Fury is, well, a huge maze. At the heart of it is the Tome of Perserverance. You'll need plenty of patience for this one."
        * * * [Head to the Labyrinth of Fury]
                -> labyrinth_of_fury
        + + + [Tell me about the other places]
                ->three_locations
    
    
    
=== ignis_arena ===
-> WIP


=== fox_house ===
->WIP

=== labyrinth_of_fury ===
->WIP

//WIP SECTION INDICATOR
=== WIP ===
Whoops! I haven't made this area yet. Please check back later. - DEV
->END

//TEMPORARY
=== met_scarlet ===

->END