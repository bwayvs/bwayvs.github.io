score = input("What was your score out of 100? ")
if float(score) >= 90:
    grade = "A"
elif float(score) >= 80:
    grade = "B"
elif float(score) >= 70:
    grade = "C"
elif float(score) >= 60:
    grade = "D"
elif float(score) < 60:
    grade = "F"
else:
    grade = "[error]"    
print(f"Your grade is {grade}.")        