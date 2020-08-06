
getChar <- function(charString) {
	r <- sample(1:nchar(charString), 1)
	char <- substr(charString, r, r)
}

main <- function() {
	len <- 10
	capitals <- 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
	lowercase <- 'abcdefghijklmnopqrstuvwxyz'
	numbers <- '0123456789'
	specials <- '~!"#$%&()*+,-./:;<=>?@'
	combined <- paste(capitals, lowercase, numbers, specials, sep="")
	password <- ''

		for (i in 0:len) {
			if( i == 0 || i ==1) {
				password <- paste(password, getChar(capitals), sep="")
			} else if( i == 2 || i ==3) {
				password <- paste(password, getChar(lowercase), sep="")
			} else if( i == 4 || i ==5) {
				password <- paste(password, getChar(numbers), sep="")
			} else if( i == 6 || i ==7) {
				password <- paste(password, getChar(specials), sep="")
			} else {
				password <- paste(password, getChar(combined), sep="")
			}
		}

        print(password)
}

main()
