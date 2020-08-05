import random

password_length = 10
capitals = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
lowercase = 'abcdefghijklmnopqrstuvwxyz'
numbers = '0123456789'
specials = '~!"#$%&()*+,-./:;<=>?@'
combined = capitals + lowercase + numbers + specials
password = ''


def getChar(charString):
    ran = random.randint(0, (len(charString) - 1))
    return charString[ran]


for i in range(password_length):
    if i == 0:
        password += getChar(capitals)
    elif i == 1:
        password += getChar(capitals)
    elif i == 2:
        password += getChar(lowercase)
    elif i == 3:
        password += getChar(lowercase)
    elif i == 4:
        password += getChar(numbers)
    elif i == 5:
        password += getChar(numbers)
    elif i == 6:
        password += getChar(specials)
    elif i == 7:
        password += getChar(specials)
    else:
        password += getChar(combined)

print(password)
