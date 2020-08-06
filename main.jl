function getChar(charString)
	r = rand(1:length(charString))
	return charString[r]
end

function main()
	len = 10
	capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	lowercase = "abcdefghijklmnopqrstuvwxyz"
	numbers = "0123456789"
	specials = "~!#%&()*+,-./:;<=>?@"
	combined = string(capitals,lowercase,numbers,specials)
		password = "\0"

		for i = 0:len
			if i == 0 || i == 1
				password = string(password, getChar(capitals))
			elseif i == 2 || i == 3
				password = string(password, getChar(lowercase))
			elseif i == 4 || i == 5
				password = string(password, getChar(numbers))
			elseif i == 6 || i == 7
				password = string(password, getChar(specials))
			else 
				password = string(password, getChar(combined))
				end
		end
			println(password)
end

main()
