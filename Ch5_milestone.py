print()
print("You wake up to find yourself trapped in a deep hole. How will you get out?")
print()
look = input("Type LOOK UP or LOOK DOWN for more details: ") 
print()
if look.upper() == "LOOK UP":
    print()
    print("You see a pull string attached to the ceiling.")
    pull_string = input("Maybe you should PULL STRING to find out what happen: ")
    if pull_string.upper() == "PULL STRING":
        print()
        print("You pull the string and you hear a **CLICK*")
        print()
        print("A trap door opens under you and you fall down a slide.")
        print(".")
        print(".")
        print(".")
        print(".")
        print("It is a long slide!")
        print(".")
        print(".")
        print(".")
        print(".")
        print("You land comfortably in your own bed.")
        print()
        print("Was that all just a bizarre dream?")
        print()
    else:
        print()
        print("You can't do that here.")
elif look.upper() == "LOOK DOWN":
    print()
    print("You see a trap door on the ground.")
    print()
    open_trap = input("Maybe your should OPEN TRAP to see what happens: ")
    if open_trap.upper() == "OPEN TRAP":
        print()
        print("You try to open the trap door, but it won't budge.")
        look_up4 = input("Maybe LOOK UP to see if there is anything to help you: ")
        if look_up4.upper() == "LOOK UP":
            print()
            print("You see a pull string attached to the ceiling.")
            pull_string = input("Maybe you should PULL STRING to find out what happen: ")
            if pull_string.upper() == "PULL STRING":
                print()
                print("You pull the string and you hear a **CLICK*")
                print()
                print("A trap door opens under you and you fall down a slide.")
                print(".")
                print(".")
                print(".")
                print(".")
                print("It is a long slide!")
                print(".")
                print(".")
                print(".")
                print(".")
                print("You land comfortably in your own bed.")
                print()
                print("Was that all just a bizarre dream?")
            else:
                print()
                print("You can't do that here.")
        else:
            print()
            print("You can't do that here.")
    else:
        print()
        print("You can't do that here.")
else:
    print()
    print("You can't do that here.")