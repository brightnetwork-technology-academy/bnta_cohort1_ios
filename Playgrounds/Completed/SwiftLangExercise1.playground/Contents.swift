import UIKit

/*:
 1. Declare a variable `numberOfPets` and assign to it the number of pets you own.  What data type makes sense for `numberOfPets`?
 */

var numberOfPets = 1

/*:
 2. Declare a function `add` that takes a number of pets as a parameter and increments or decrements  the previously declared `numberOfPets` variable.
 */

func add(numPets: Int) {
    numberOfPets = numberOfPets + numPets
}

/*:
 3. `numberOfPets` and `add(_:)` aren't terribly use ful as free variables / functions.  Let's create a class `Student` which has a [private](https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html) property `numberOfPets`, and an [internal](https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html) function `add(_:)` to increment `numberOfPets`
 */

struct Student {
//    private var numberOfPets: Int
    private var animals: [Animal]
    var numberOfPets: Int {
        get {
//            self.animals.filter { animal in
//                animal.isPet
//            }.count
            self.animals.filter { $0.isPet }.count
        }
    }
    
    init(animals: [Animal]) {
        self.animals = animals
    }
    
    func add(animal: Animal) {
        self.animals.append(animal)
    }

//    func add(numPets: Int) {
//        self.numberOfPets += numPets
//    }
}

/*:
 4. Pets are more than just numbers, let's make some changes
 A.  Create a new class `Animal` with the following properties:
 - `species` - an [enumeration](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html) of possible species.  Feel free to declare the `Species` enum type as a nested type of `Animal` or as a standalone type.
 - `isPet` - a bool that indicates if the animal is a pet or not
 - `name` - an [optional](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html) `String` with the pet's name if it has one (wild animals often don't).
 B. Update `Student` to have a private `animals` property.  `animals` is an array of `Animal` objects
 C. Update the `add(_:)` function to take an animal object as a parameter rather than a number of pets.
 D. Finally update the `numberOfPets` prameter to be a computed property that uses the `animals` property to determine the number of pets.  Remember only an animal where `isPet == true` should be counted as a pet.
 */

struct Animal {
    enum Species {
        case dog, cat, bird
    }

    let species: Species
    let isPet: Bool

    init(species: Species, isPet: Bool) {
        self.species = species
        self.isPet = isPet
    }
}

/*:
 5. Perhaps `Animal` and `Student` could be structures or structs instead of classes.  Consider the pros / cons of using one over the other and see what happens if you convert them to structs.
 */

