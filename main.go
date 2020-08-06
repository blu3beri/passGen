package main

import (
	"fmt"
	"math/rand"
	"time"
)
func getChar(charString string) string {
	r := rand.Intn(len(charString))
	return string(charString[r])

}

func main() {
	rand.Seed(time.Now().UnixNano())

	len := 10
	capitals := "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	lowercase := "abcdefghijklmnopqrstuvwxyz"
	numbers := "0123456789"
	specials := "~!#$%&()*+,-./:;<=>?@"
	combined := capitals+lowercase+numbers+specials
	password := ""

	for i := 0; i < len; i++ {
		switch i {
		case 0, 1:
			password += getChar(capitals)
		case 2, 3:
			password += getChar(lowercase)
		case 4, 5:
			password += getChar(numbers)
		case 6, 7:
			password += getChar(specials)
		default:
			password += getChar(combined)
		}
	}
	fmt.Println(password)
}
