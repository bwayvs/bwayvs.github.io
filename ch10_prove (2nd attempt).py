cart = []
item = ""
prices = []
price = -1
remove_item = -1
selection = -1
print("Welcome to the Shopping Cart Program!")
while selection != 5:
   
    print()
    print("Please select one of the following: ")
    print("1. Add item")
    print("2. View cart")
    print("3. Remove item")
    print("4. Compute total")
    print("5. Quit")
    selection = int(input("Please enter an action: "))
    if selection == 1:
        print()
        item = input("What would you like to add? ")
        cart.append(item)
        price = float(input(f"Price of '{item}': $"))
        prices.append(price)
    elif selection == 2:
        print()
        print("The contents of the shopping cart are:")
        for i in range(len(cart)):
            item = cart[i]
            price = prices[i]
            print(f"{i + 1}. {item} - ${price:.2f}")
    elif selection == 3:
        print()
        print("The contents of the shopping cart are:")
        for i in range(len(cart)):
            item = cart[i]
            price = prices[i]
            print(f"{i + 1}. {item} - ${price:.2f}")
        remove_item = int(input("Which item number do you want to remove? ")) - 1
        print()
        if remove_item > 0:
            try:
                print(f"The item '{cart[remove_item]}' has been removed.")
                cart.pop(remove_item)
                prices.pop(remove_item)
            except IndexError:
                print("That item does not exist in your shopping cart.")
        else:
            print("That item does not exist in your shopping cart.")
        print()
    elif selection == 4:
        print()
        print("Your shopping cart contains:")
        for i in range(len(cart)):
            item = cart[i]
            price = prices[i]
            print(f"{i + 1}. {item} - ${price:.2f}")
        print("-----------------------")
        prices_total = sum(prices)
        count_items = len(cart)
        avg_price = sum(prices) / len(prices)
        most_expensive = max(prices)
        print(f"You have {count_items} items in your cart.")
        print(f"Your current total is ${prices_total:.2f}")
        print(f"The average amount spent on each item is ${avg_price:.2f}.")
        print(f"The most expensive item in your cart cost ${most_expensive:.2f}.")
        print()
    else:
        print()
        print("Thank you for shopping with us. Goodbye!")

