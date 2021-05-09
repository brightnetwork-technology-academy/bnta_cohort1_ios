import Foundation

/*:
 By declaring that `Countries` conforms to the `CaseIterable` protocol, Countries gains a static var `allCases`, an array containing the values of each enum case.
 */
enum Countries: String, CaseIterable {
    case france = "France"
    case germany = "Germany"
    case unitedStates = "United States"
    case england = "England"
}

/*:
 Declare a constant `countries` and assign the value of `Countries.allCases` to it.
 */


/*:
 Use the map function to transform countries such that all of it's values are uppercased.
 Instad of `France` for example, the first value of the array should be `FRANCE`.  Store that transformed array to a new constant `uppercasedCountries`.
 Keep in mind that enums have a `rawValue` property.  You could write some code to iterate over each character in the string and convert lowercased values to uppercase values, but `String` probably has a function for that ;-)

 */


/*:
 Now, let's use the filter function to filter out any countries whose name has a whitespace.  Store this new filtered array into a new constant `filteredArray`.
 */


/*:
 Below is an array of temperatures.  Let's use the `reduce` function to find the average temperature.  Store the average temperature into a new constant `averageTemperature`.
 */
let temperatures = [76, 75, 77, 150, 10, 80]



/*:
 A couple of these temperatures seem a bit off.  Let's drop the highest and lowest temperature and then find the average of the remaining temperatures.  *hint* You should be able to do this in a signle line of code, by chaining a few functions together.  For the purposes of this exercise, it's safe to assume that temperatures is not an empty array, but do note that normally we should code defensively and check to avoid a divide by zero error (crash).  Extra points if you'd like to add that defensive check!
 */


/*:
 This one is tricky.. Let's create a function myMap that takes in an array of strings and a transform function as parameters, and returns an array of transformed strings, essentially recreating the map function specifically for String arrays.  We'll dissect this in class to discuss how the Swift standard library generalizes this to arrays of any type, or try to figure that out on your own!
 */

func myMap(array: [String], transform: (String) -> String) -> [String] {
    // Add implementation here.
    
    []
}

