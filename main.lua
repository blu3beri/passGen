function getChar(charString)
	local r = math.random(string.len(charString))
	return string.sub(charString, r, r)
end

function main ()
	math.randomseed(os.time())
    math.random(); math.random(); math.random()
    
    local len = 10;
	local capitals = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	local lowercase = "abcdefghijklmnopqrstuvwxyz";
	local numbers = "0123456789";
	local specials = "~!#$%&()*+,-./:;<=>?@";
	local combined =capitals..lowercase..numbers..specials;
	local password = "";

	for i=0,10 do
        if i == 0 or i == 1 then 
            password = password..getChar(capitals)
        elseif i == 2 or i == 3 then 
            password = password..getChar(lowercase)
        elseif i == 4 or i == 5 then 
            password = password..getChar(numbers)
        elseif i == 6 or i == 7 then 
            password = password..getChar(specials)
        else 
            password = password..getChar(combined)
        end
    end
    
    print(password)
end

main()