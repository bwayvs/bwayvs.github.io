print()
print("You find yourself in the middle of a dungeon. You are looking for")
look = input("a way out. Type LOOK UP or LOOK DOWN to see what you can find. ")
if look.upper() == "LOOK UP":
    print()
    print("You look up and find a string hanging from the ceiling and")
    button_string = input("a big red button. Will you PULL STRING or PUSH BUTTON? ")
    if button_string.upper() == "PULL STRING":
        print()
        print("You pull the string and hear a *CLICK*")
        print()
        print("A secret door opens in front of you that reveals two paths.")
        print("One path is dark and scary. The other path is open and bright.")
        scary_bright = input("Will you take the SCARY PATH or the BRIGHT PATH? ")
        if scary_bright.upper() == "SCARY PATH":
            print()
            print("You decide to go down the dark scary path. Along the way,")
            print("you are approached by the legendary Black Knight who scowls at you and says,")
            print("You have disturbed my solitude. You must either join me or")
            print("be destroyed! And don't bother running away. You can't escape me!")
            fight_join_run = input("So choose now: JOIN, FIGHT or RUN AWAY. ")
            if fight_join_run.upper() == "FIGHT":
                print()
                print("You prepare yourself for battle. You draw your sword and brace")
                print("yourself as the Black Knight lunges towards you. You swiftly dodge")
                print("his blow and deftly lop his head off with your own sword. YOU WIN!") 
            elif fight_join_run.upper() == "JOIN":
                print()
                print("You analyize your chances of winning against the large scary knight and")
                print("agree to join him. He seems to approve your decision and gestures for you")
                print("to sit behind him on his black stallion. You hop onto the steed and hold")
                print("onto the Black Knight's armor as the two of you ride off into the sunset together.")
                print()
            elif fight_join_run.upper() == "RUN AWAY":
                print()
                print("You don't really like your choices here so you decide running away is the best")
                print("choice. You turn around and run away as fast as you can. You can hear the Black")
                print("Knight's horse galloping quickly after you. Suddenly, the patch of ground under")
                print("you gives way and you fall down several feet and land in the middle of the same")
                print("dungeon. You hear the Black Knight's distant laughter coming from somewhere above")
                print("you. Better luck next time.")
            else:
                print()
                print("Your choices were JOIN, FIGHT, or RUN AWAY. Now you have to start all over.")
        elif scary_bright.upper() == "BRIGHT PATH":
            print()
            print("You decide to play it safe and go down the bright path. Along the way, you are")
            print("approached by child who seems lost. He looks up at you with pleading eyes. Will")
            hhelp_ignore = input("you HELP the child or IGNORE him? ")
            if hhelp_ignore.upper() == "HELP":
                print()
                print("You take pity on the poor child and offer to help him find his way home.")
                print("The child smiles at you and immediately transforms into a kindly old woman")
                print("who tells you she was testing your honor. Apparently you passed the test")
                print("because she transports you home with a bag full of gold.") 
                print("See? Good deeds pay off!")
            elif hhelp_ignore.upper() == "IGNORE":
                print()
                print("The child immediately transforms into an old woman with a fierce expression")
                print("on her face. She informs you that she was testing your honor and that you")
                print("failed the test. She transports you into a prison cell where you will stay")
                print("until the end of your days.")
            else: 
                print()
                print("Your choices were HELP or IGNORE. Now you have to start all over again.")
        else:
            print()
            print("Your options were SCARY PATH or BRIGHT PATH. Now you have to start all over.")
    elif button_string.upper() == "PUSH BUTTON":
        print()
        print("Who can resist pushing a big red button? Certainly not you! You push the button and")
        print("hear a *CLICK*. Directly in front of you, a secret door opens to reveal a giant ice monster.")
        print("There is no time to run or hide. You must fight him. Or, if you are feeling lucky, you can")
        fight_befriend = input("try to befriend him. Which will it be? FIGHT or BEFRIEND: ")
        if fight_befriend.upper() == "FIGHT":
            print()
            print("You determine you have no chance of making friends with the ice monster and try your")
            print("hand at fighting. You know two spells. You can either cast a fire spell or an ice spell.")
            fire_ice = input("So which spell will you cast? FIRE or ICE: ")
            if fire_ice.upper() == "FIRE":
                print()
                print("You decide to test your luck with a fire spell. You spread your fingers and")
                print("summon the magic deep within you. You feel heat gathering at your finger tips")
                print("as suddenly, fire burts from your hands. The ice monster screams in horror as")
                print("the flames consume it. The ice monster melts into a puddle and you are free to go.")
            elif fire_ice.upper() == "ICE":
                print()
                print("You figure the best way to defeat an ice monster is with ....ice? Ok, I guess")
                print("it's worth a shot. You spread your fingers and summon the magic deep with you.")
                print("You feel a chill gather at your finger tips as frozen chards of ice shoot from")
                print("your hands. They smack the ice monster in the chest and fall to the ground with")
                print("a pitiful *clink clink* sound. The ice monster looks at you with amusement and")
                print("squashes you into pulp. Better luck next time!")
            else:
                print()
                print("Your choices were FIRE or ICE. Now you have to start all over.")
        elif fight_befriend.upper() == "BEFRIEND":
            print()
            print("You feel pretty confident in your charisma and decide to befriend the ice monster")
            print("Maybe the poor fellow just needs a friend! You can either sing him a song or tell")
            sing_joke = input("tell him a joke. Which will it be? SING SONG or TELL JOKE: ")
            if sing_joke.upper() == "SING SONG":
                print()
                print("You decide that a song is in order. You clear your throat and begin")
                print("singing, 'Ice, Ice Baby'. The ice monster smiles and begins humming")
                print("along. How did you know that was it's favorite song? Good job! Now,")
                print("you are best friends.")
            elif sing_joke.upper() == "TELL JOKE":
                print()
                print("You decide a good joke is in order. Who can resist a well-timed pun? You ask")
                print("the ice monster, 'Why couldn't the ice monster find a job?'")
                print()
                print("The ice monster shrugs its shoulders.")
                print()
                print("You respond, 'Because there was a hiring freeze!!' and laugh at your own joke.")
                print()
                print("The ice monster does not look as amused. He grunts at you and leaves the room, shaking his head.")
                print("Sheesh, everyone is a critic! Oh well, at lease you are safe.")
            else:
                print()
                print("Your choices were SING SONG or TELL JOKE. Now you have to start all over.")
        else: 
            print()
            print("Your choices were FIGHT or BEFRIEND. Now you have to start all over.")   
    else:
        print()
        print("Your choices were PULL STRING or PUSH BUTTON. Now you have to start all over.")             
elif look.upper() == "LOOK DOWN":
    print()
    print("You look down and see a trap door on one side of the floor and a big mysterious box")
    trap_box = input("on the other side. Which one do you want to open? TRAP DOOR or BIG BOX: ")
    if trap_box.upper() == "TRAP DOOR":
        print()
        print("You open the trap door and peer inside. You see two ways of getting down the trap.")
        print("You see a ladder you can climb down and you see a slide you can use. They appear to")
        ladder_slide = input("go in opposite directions. Which one will you take? LADDER or SLIDE: ")
        if ladder_slide.upper() == "LADDER":
            print()
            print("You decide to go with the ladder. You climb all the way down to the bottom and find")
            print("yourself at the in a tunnel that extends off in either direction. From the west ")
            print("of the tunnel, water is slowly streaming towards you. From the east tunnel,")
            west_east = input("you hear voices. Which way will you go? EAST or WEST: ")
            if west_east.upper() == "WEST":
                print()
                print("You decide to follow the water back upstream. Who knows, maybe it will lead you out.")
                print("As you continue along, you begin to smell fresh air. After several moments of walking")
                print("you see light in the distance. Could it be? Yes! Yes, it is the way out! Great job!")
            elif west_east.upper() == "EAST":
                print()
                print("You decide to follow the voices. Maybe you can find someone who can help you to the")
                print("exit. You walk east until you get to a group of people chatting. They are huddled over")
                print("something, but you can't make out what it is. You realize it is a group of bandits huddled")
                print("around a dead body. That they killed. You gasp and try to quiet yourself but")
                print("it is too late - they heard you! They grab you and whack you over they head. After you")
                print("pass out, they search your body for valuables ad leave you for dead. Better luck next time.")
            else:
                print()
                print("Your choices were EAST or WEST. No wyou have to start all over.")
        elif ladder_slide.upper() == "SLIDE":
            print()
            print("You choose the funner option and take the slide. As you slide downwards, you see you are")
            print("approaching an empty room. Once you step off the slide, you see there are two doors, one")
            print("with an emblem of a sun on it, the other with an emblem of the moon on it. Which door will you")
            sun_moon = input("choose? SUN or MOON: ")
            if sun_moon.upper() == "SUN":
                print()
                print("You love sunshine so you decide to pick the door with the sun on it. You open")
                print("the door and step through. You find yourself in a bright sunny meadow right")
                print("on the outskirts of your hometown. You have safely found your way out of the")
                print("dungeon. Good job!")
            elif sun_moon.upper() == "MOON":
                print()
                print("You are curious what is on the other side of the moon door, so you quickly open")
                print("open the door with the moon emblem on it and step inside. As you do, the door")
                print("slam shut behind you. You are trapped in this dark empty room forever.")
                print("Too bad. Better luck next time.")
            else:
                print()
                print("Your choices were SUN or MOON. Now you have to start all over again.")
        else:
            print()
            print("Your choices were LADDER or SLIDE. Now you have to start all over again.")
    elif trap_box.upper() == "BIG BOX":
        print()
        print("You really want to see what is in the box and I don't blame you! You walk over to the box")
        sword_book = input("and open it gently. Inside you find a sword and a spell book. Which do you grab? SWORD or BOOK: ")
        if sword_book.upper() == "SWORD":
            print()
            print("As you remove the sword from the box, an ancient warrior spirit appears and tells you")
            give_fight = input("to give him back his sword or face the consequences. What will you do? GIVE SWORD or FIGHT SPIRIT: ")
            if give_fight.upper() =="GIVE SWORD":
                print()
                print("You decide it is probably better to give the whiney spirit back his sword. It's a")
                print("safer choice. The spirit takes his sword back from you and rewards you by transporting")
                print("you safely home. Good job!")
            elif give_fight.upper() == "FIGHT SPIRIT":
                print()
                print("You figure it is finders keepers. If that spirit wanted his sword, he should have")
                print("kept it someplace safe! You begin to walk away with the sword when the spirit angerily")
                print("yanks it from you and chops your head off with it. Maybe you should have just given him")
                print("the sword after all. Oh well, better luck next time.")
            else:
                print()
                print("Your choices were GIVE SWORD or FIGHT SPIRIT. Now you have to start all over again.")
        elif sword_book.upper() == "BOOK":
            print()
            print("You love books! You reach for the spell book and crack it open. Dust flies around")
            print("the air as you read over the contents of the book. There are two spells in the book.")
            print("One is a transportation spell and the other is a spell for turnings things into gold.")
            gold_transportation = input("Which spell do you want to try: GOLD or TRANSPORTATION: ")
            if gold_transportation.upper() == "GOLD":
                print()
                print("You figure you could always use some more gold. You begin to recite the Gold spell.")
                print("As you do, you feel a little funny. Your feet feel so heavy all of a sudden. Then your")
                print("legs feel heavy. Then your torso. You glance down at your body and see that your are")
                print("turning into a gold statue. You gasp your last breath just before the rest of you turns")
                print("to gold. Don't you wish you weren't so greedy? Better luck next time.")
            elif gold_transportation.upper() == "TRANSPORTATION":
                print()
                print("You are tempted to use the gold spell but what you really want is to go home. You begin")
                print("reciting the Transportation spell. Your surroundings start swirling around you. You feel")
                print("a bit dizzy. Suddenly, a whoosh of air blows past you as you disappear from the dungeon")
                print("and reappear safely at the doorstep of your own home. You made it safely. Good job!")
            else:
                print()
                print("Your choices were GOLD or TRANSPORTATION. Now you have to start all over again.")
        else:
            print()
            print("Your choices were SWORD or BOOK. Now you have to start all over again.")
    else:
        print()
        print("Your choices were TRAP DOOR or BIG BOX. Now you have to start over.")
else: 
    print()
    print("Your choices were LOOK UP or LOOK DOWN. Now you have to start all over again.")


