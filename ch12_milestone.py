country = []
code = []
year = []
life_expectancy = []
user_range = []
with open("life-expectancy.csv") as data:
    next(data)
    for line in data:
        line = line.strip()
        parts = line.split(",")
        country.append(parts[0])
        code.append(parts[1])
        year.append(parts[2])
        life_expectancy.append(float(parts[3]))
        max_life_expectancy = max(life_expectancy)
        min_life_expectancy = min(life_expectancy)
        max_index = (life_expectancy.index(max_life_expectancy))
        min_index = (life_expectancy.index(min_life_expectancy))
        max_year = year[max_index]
        min_year = year[min_index]
        max_country = country[max_index]
        min_country = country[min_index]
print(f"Country with highest Life Expenctancy: {max_country}, Max Life Expectancy: {max_life_expectancy:.4f}")
print(f"Country with lowest Life Expenctancy: {min_country}, Min Life Expectancy: {min_life_expectancy:.4f}")
print()
print("Let's look up life expectancy information for a specific year.")
user_year = ""
while user_year != "QUIT":
    if user_year != "QUIT":
        user_year = input("Type a year to look up info or type QUIT to quit:  ")
        # Find the index for all instances of user_year in year
        indices = [i for i, x in enumerate(year) if x == user_year]
         # Assign indices as the index to life expectancy list
        user_life_expectancy = [life_expectancy[i] for i in indices]
        max_user_life_expectancy = max(user_life_expectancy)
        min_user_life_expectancy = min(user_life_expectancy)
        max_user_index = (life_expectancy.index(max_user_life_expectancy))
        min_user_index = (life_expectancy.index(min_user_life_expectancy))
        max_user_country = country[max_user_index]
        min_user_country = country[min_user_index]
        average_life_expectancy = sum(user_life_expectancy) / len(user_life_expectancy)
        print(f"For year: {user_year}, {max_user_country} had the highest life expectancy ({max_user_life_expectancy:.4f})")
        print(f"For year: {user_year}, {min_user_country} had the lowest life expectancy ({min_user_life_expectancy:.4f})")
        print(f"The average life expectancy for that year was {average_life_expectancy:.4f}.")
    else:
        print()
print("Thanks for participating!")
#Interesting anomaly = The lowest life expectancy has jumped from 17.8 years to 53.3 years as 2019
