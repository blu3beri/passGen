getChars = (charString) -> 
	ran = +(Math.random() * (charString.length - 1) + 0).toFixed(0)
	return charString[ran]

main = -> 
	len = 10
	i = 0
	capitals = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
	lowercase = 'abcdefghijklmnopqrstuvwxyz'
	numbers = '0123456789'
	specials = '~!"#$%&()*+,-./:;<=>?@'
	combined = capitals.concat(lowercase, numbers, specials)
	password = ''

	while i < 10
		password += switch i
			when 0, 1 then getChars capitals
			when 2, 3 then getChars lowercase
			when 4, 5 then getChars numbers
			when 6, 7 then getChars specials
			else getChars combined
		i++
	console.log password

main();
