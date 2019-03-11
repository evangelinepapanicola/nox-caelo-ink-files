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
    {!"Ignis Arena, Fox House and the Labyrinth of Fury. All located outside of Luna."}
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
"Alright, let's get going!"
And with that, you and Parvus begin your 3 days of travelling to Ignis Arena. You travel there on horseback, stopping to rest and camp every now and then.

On day 2, you're settled down by an open fire, with Cerberus snoozing in your lap. You wonder if you'll ever get to go home again.
Parvus notices you deep in thought.
"Thank you."
* [For what?]
"For helping me with all of this.
* [Wow, about time!]
"Yeah I know, I know, It's really overdue.
* [Don't worry about it.]
- <> It really means a lot to me. I was born and raised in Luna, the people are my family. I can't bear to watch any more die. But I know how big this task I ask of you is. You must be missing so much from your realm."

You and Parvus chat for a while, and then rest before continuing on your journey.
Eventually, you arrive at the huge stone walls around the entrance to Ignis Arena.

"Alright, good luck!" Parvus exclaims. "I'll be waiting out here for you."

You swallow every ounce of fear inside of you, and make your way into the arena entrance.

The entrance is packed with loud people, swigging beer and chanting. You see a desk in the back titled "SIGN UPS" where a receptionist is sat, looking bored and picking at her nails.
A large, athletic looking man in armour stumbles into the entrance from the arena, his face covered in bruises, a gash on his cheek and blood stains scattered over him. The people give him a small cheer as he enters, and an even taller man gives him a hard pat on the back, saying with a deep voice, "Better luck next time, lad." The bloodied man wheezes at the pat on the back.

You approach the desk. The receptionist doesn't seem to notice your presence.

* [Hello?]
* [Excuse me!]

- (receptionist) {!The lady looks up at you, slightly confused.}
{!"Can I help you?"}

* [Do you know where I can find the Tome of Warfare?]
    You hear someone behind you spit-take, another person chuckles.
    The lady looks at you, eyes wide, "Uh, excuse me? You want the Tome of Warfare? Oh little one... the only way you'll get your hands on that is by defeating the reigning arena champion. He hasn't been defeated in 50 years."
    * * [I'll fight him.]
        "Are you sure? You'll need a sponsor to fight."
        * * * [I'm sure, but-]
            You tell the lady you're sure you'll fight. Just as you start to tell her you don't have a sponsor yet, you feel a hand on your shoulder. 
            "I'll sponsor." You look up, and a tall, muscular lady covered in scars, with a buzzcut, silver hair and dark, smudged makeup is standing by you. She gives you a mischievous grin. 
            The receptionist sighs. "Alrighty then, your spot's at 5pm. Don't be late."
            ->talk_with_cereza
        
* [I want to fight.]
The receptionist looks you up and down. "Uh, okay, well here's the list of challengers and rewards." She hands you a crumpled up piece of paper.

You spend time going through the whole list, looking for a fight with the reward being the Tome of Warfare. At the very bottom, you find "Fighter: Marg the Destroyer, Reward: The Tome of Warfare."

You tell the receptionist you want to fight Marg the Destroyer.

The lady looks at you, eyes wide, "Uh, excuse me? Oh little one... that's the reigning arena champion. He hasn't been defeated in 50 years."
    * * [I'll fight him.]
        "Are you sure? You'll need a sponsor to fight."
        * * * [I'm sure, but-]
            You tell the lady you're sure you'll fight. Just as you start to tell her you don't have a sponsor yet, you feel a hand on your shoulder. 
            "I'll sponsor." You look up, and a tall, muscular lady covered in scars, with a buzzcut, silver hair and dark, smudged makeup is standing by you. She gives you a mischievous grin. 
            The receptionist sighs. "Alrighty then, your spot's at 5pm. Don't be late."
            ->talk_with_cereza
            
* [Is that guy okay?]
"Who? Oh," She notices the bloodied man, who is now sat down at a table, tending to his wounds. "He'll be fine, little one. He had quite the fight. Not the worst I've seen."
->receptionist

= talk_with_cereza

{!"Lets talk." The silver haired woman heads over to the table in the far corner of the room and sits down, indicating for you to follow.}

{!You sit down, a million questions running through your head. Before you can say anything, she pipes up, "I'm Cereza, nice to meet you."}
{!You introduce yourself. "I can tell you're a newbie, {players_name}. It's very rare that anyone would come in here to challenge Marg the Destroyer. It's suicide.}
* [Why did you sponsor me?]
I'm curious to see what tricks you have up your sleeve. I'm a regular in this arena. I've seen the typical type of people come and go. Bounty hunters, mercenaries, people who are simply looking for thrills. But if I'm honest, you don't seem like much of a fighter. Which means you're probably after the Tome of Warfare. Why do you need such a powerful artefact?"
    * * [Tell her you're here to retrieve it for a friend]
        "Wow. You must be quite a loyal friend. How much are they paying you?"
        * * * [Nothing, actually...]
            She looks at you, wide-eyed. "Very well then."
            ->talk_with_cereza
    * * [Lie]
        You make up some story about being a tome collector.
        "I see...", Cereza says slowly, with uncertainty. She can tell you're lying.
        ->talk_with_cereza
* [How do I beat this guy?]
"Honestly, little one." She sighs. "If I knew, I'd tell you. Trust me. Not even I have defeated Marg the Destroyer. He's ruled this arena for 50 years. But honestly, the best advice I have for you, based on your uh, weapon of choice... 
{weaponEquipped =="bow": <> try and use high ground to your advantage, and try and stay far back from him so he can't hit you."}
{weaponEquipped =="sword": <> try and strike his weak points with your sword, and dodge as best as you can."}
{weaponEquipped =="fists": <> try to strike his weak points, and dodge as best as you can. You'll have to be careful he doesn't try to counter your punches and kicks."}

->_fight

= _fight
"{players_name}! You're up!" You hear the announcer call your name.
"Looks like it's your time to shine, little one." Cereza pats you hard on the back, and the two of you head into the Arena. "GOOD LUCK!" Cereza yells as she goes to take her seat, while you nervously head into the center ring.
You hear the crowd roaring and chanting as you enter, it's almost deafening.
"EVERYBODY PLEASE WELCOME YOUR NEW CHALLENGER! {players_name}! FROM! LUNAAAA!" The announcer yells, and the crowd roars even louder.

You take some time to look around the huge arena. There are two gates, the one you came from and the one on the opposite side. On the west and east sides of the ring are high platforms. There is also a mud pit in the centre. You decide you should find a good position, before Marg appears.

* (west_platform)[Climb up on to the west platform]
You decide to it would be advantageous to use the high ground, so you climb the west platform.

* (east_platform)[Climb up on to the east platform]
You decide to it would be advantageous to use the high ground, so you climb the east platform.

* (mud_pit)[Stand by the mud pit]
You decide to stand by the mud pit.

* (hide)[Hide by Marg's door]
You hide by Marg's door, hoping to catch him by surprise.

- "FIGHTING NOX TODAY, WE HAVE MARG THE DESTROYERRRR!" The announcer calls out, and everyone gasps. You start to hear people muttering and whispering to eachother.
The opposite gate clunks open, and from the shadows you see a huge, monsterous troll appear, his stomping footsteps shaking the arena slightly. He roars, and the crowd starts to chant his name. 
{weaponEquipped == "bow": ->bow_fight} {weaponEquipped == "sword": ->sword_fight} {weaponEquipped == "fists": ->fist_fight}

= bow_fight
The announcer calls out, "READY... FIGHT!"
->WIP

= sword_fight
The announcer calls out, "READY... FIGHT!"
->WIP

= fist_fight
The announcer calls out, "READY... FIGHT!"
{hide: Marg looks confused, unable to see you in the arena. You take this as an opportunity and pre-emptively dive on top of him. He's so heavy, you don't quite manage to knock him over but you now have him grappled.}

{west_platform || east_platform: You watch as Marg approaches your platform, and tries to climb up.}

{mud_pit: You watch as Marg trudges through the mud pit towards you until you are face to face.}

* {hide} [Cover his eyes]
* {hide} [Hit the top of his head]
* {west_platform || east_platform} []

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