print()
'''USer input'''
fr_age = int(input('What is the age of the first rider? '))
fr_height = int(input('What is the height of the first rider(inches) ? '))
second_rider = input('Is there a second rider (Yes/No)? ')

'''Second rider input'''
if second_rider.lower() == 'yes':
    sr_age = int(input('What is the age of the second rider? '))
    sr_height = int(input('What is the height of the second rider? '))

'''if/else/elif statements'''
if fr_height < 36:
    can_ride = False
    print('Sorry, you may not ride.')

elif second_rider.lower() == 'no' and fr_height >= 62 and fr_age >= 18:
    can_ride = True
    print('Welcome to the ride. Please be safe and have fun!')

elif second_rider.lower() == 'yes' and fr_height >= 36 and sr_height >= 36 and (fr_age >= 18 or sr_age >= 18):
    can_ride = True
    print('Welcome to the ride. Please be safe and have fun!')

else:
    print('Sorry, you may not ride.')
print()




