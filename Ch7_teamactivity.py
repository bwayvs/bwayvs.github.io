user_choice = int(input("How many rows do you want in your multiplication table? "))
range_size = user_choice + 1

for row_num in range(1, range_size):
    for col_num in range(1, range_size):
        num = row_num * col_num
        print(f"{num:3}", end=" ")
    print()

