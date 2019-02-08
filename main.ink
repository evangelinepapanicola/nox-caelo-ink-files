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

You find yourself in the town square. People are roaming about, coming in and out of shops and chatting.

+ [Investigate the fountain]
-> _fountain

+ [Talk to the paperboy]
-> _paperboy

+ [Go down Crescent Street]
-> crescent_street

+ [Enter the alleyway]
-> _alley


= crescent_street

You decide to take a look down Crescent street. This seems to be where all the main shops are.

+ [Enter the General Store]
    -> general_store

+ [Enter the Library]

+ [Go back to the town square]
    ->town_square
    
= general_store

{!A jolly lady greets you as you enter. "Welcome love! Take a look at the wares I've got for sale."}

    + [Ask about weapons]
        You ask her if she has any weapons for sale.
        "Weapons? Ho ho - not here my love. Ye might want to keep quiet about that sort of thing 'round here. But if ye really want something along those lines...", she leans in close to you, and whispers: 
        "Ye didn't here it from me, but the older fellow in the alleyway by the town square can get you what you need. Ye just need the code!"
        + + (weaponCode)[The code?]
        "Why yes - ye must say to him 'I have a message from Sebille'".
        You thank the lady for her guidance.
        -> general_store
    
    + {not coolSunglasses} [Look at the Cool Sunglasses]
        "An eye for taste I see!" The lady pipes up. "These sunglasses will have ye looking powerful. I doubt anyone'll mess with ye while wearing these! Would you like to buy 'em? They're a steal at £1"
        {not gotWeapon: You realise you probably shouldn't waste money on sunglasses right now.}
        
        + + {gotWeapon}[Yes please!]
            "A wise purchase!"
            You put on the Cool Sunglasses. You've never looked so badass!
            ~money--
            ~coolSunglasses = true 
            ->general_store
        
        + + [No thank you.]
            "Suit yerself."
            -> general_store
    
    + {not apple} [Look at the Apples]
        "Ah yes! These apples are so tasty they've been selling out fast. We only have one left! Buy it for just £1."
        {not gotWeapon: You realise you probably shouldn't waste money on apples right now, even if you are peckish.}
        
        + + {gotWeapon}[Yes please!]
            "A wise purchase!"
            You buy the apple, putting it in your backpack for later.
            ~money--
            ~apple = true 
            ->general_store
        
        + + [No thank you.]
            "Suit yerself."
            -> general_store
    
    + [Take your leave]
    "Take care, love!" The lady waves at you on your way out.
    -> crescent_street


= _alley

You enter the dark, pungent-smelling back alley of the town. You're not entirely sure if it's safe here. A tall, old-looking man in a long coat is stood leaning against the wall in a shifty manner. His eyes are fixed on you as you enter the alleyway.

+ [Make conversation]
    {weaponCode:"I have a message from Sebille" You tell the old man. ->get_weapon|You ask the shifty old man what brings him here.}
    "Listen, kiddo. I don't know who you are or what your business is - but I suggest you get outta here", the old man says, threateningly.
    
    //conditional content tbc - weapon sale opens if spoken to shopkeep
    -> _alley

+ [Go back to the town square]
-> town_square

= get_weapon

"How- who are you?" the man says, startled by your statement.
 * [I need a weapon.]
 * [I'm {players_name}.]
 Well, {players_name}, I definitely haven't seen you 'round here before. I take it the shopkeep on Crescent street told you about me. Either way, if It's a weapon you're after, I've got you covered.

= _paperboy
->END


= _fountain

You look at the fountain. It's a pretty standard fountain, with a statue of {met_scarlet: Scarlet|a pretty lady} holding a wine glass (which is where the water is coming from).

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






//TEMPORARY
=== met_scarlet ===

->END