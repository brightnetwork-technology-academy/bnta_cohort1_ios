//: Arrays

/*:
 Declare a constant `musicians` and assign to it an array of the names (String) of four of your favorite musicians or groups.
 */

var musicians = ["Drake", "Beyonce", "DMX", "Mac Ayres"]

/*:
 Add one more of your favorite musicians to `musicians`.. Whoops, you can't because musicians is a `let` constant. Update `musicians ` so that you can add an additional favorite musician to it.
 */

musicians.append("Kanye West")

/*:
 Sort musicians in alphabetical order and assign to a new variable `var` `sortedMusicians`.
 */

var sortedMusicians = musicians.sorted()

/*:
 Mutate the last musicians array by removing the last musician.
 */

sortedMusicians.popLast()

print(sortedMusicians)
/*:
 Print the first two musicians in `sortedMusicians` to the console.
 */

print(sortedMusicians.prefix(2))
/*:
 Print a random musician to the console.
 */

print(sortedMusicians.randomElement())

/*:
 Print the last two musicians to the console.
 */

sortedMusicians.suffix(2)
/*:
 Print the first two musicians to the console.
 */
	
//: Dictionaries

/*:
 Declare a variable `sharePrices` and store into it a dictionary whose keys are stock tickers ex. `AAPL` and whose values are the current stock price ex. 128.46.  Let's add 5 companies and prices.
 */

var sharePrices = [
    "AAPL": 123.91,
    "GOOG": 2292.13,
    "MSFT": 244.18
]
/*:
 Add an additional company and share price to the dictionary.
 */

sharePrices["TWTR"] = 51.28

print(sharePrices)
/*:
 Remove a company and share price from the dictionary.
 */

if let index = sharePrices.index(forKey: "GOOG") {
sharePrices.remove(at: index)
}

sharePrices.keys
/*:
 Use subscript notation to print the value of your favorite company's share price to the console.
 */

print(sharePrices["AAPL"])
/*:
 Use a for-in or forEach loop to print the value of each key and value to the dictionary.  Use String Literal notation to create the following string for a ticker of `AAPL` and a value of 128.46 `Ticker: AAPL, Share Price: 128.46`
 */

sharePrices.forEach { sharePrice in
    print("Ticker: \(sharePrice.key), Share Price: \(sharePrice.value)")
}
/*:
 Print the tickers of all companies whose share price is greater than or equal to 100
 */

let filteredPrices = sharePrices.filter { element in
    element.value >= 100
}

print(filteredPrices.keys)
