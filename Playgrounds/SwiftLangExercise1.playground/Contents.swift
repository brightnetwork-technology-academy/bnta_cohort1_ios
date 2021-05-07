import UIKit

/*:
 1. Declare a variable `numberOfPets` and assign to it the number of pets you own.  What data type makes sense for `numberOfPets`?
 */

var numberOfPets = 1

/*:
 2. Declare a function `add` that takes a number of pets as a parameter and increments or decrements  the previously declared `numberOfPets` variable.
 */

func add(_ pets: Int) {
    numberOfPets += 1
}

/*:
 3. `numberOfPets` and `add(_:)` aren't terribly useful as free variables / functions.  Let's create a class `Student` which has a [private](https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html) property `numberOfPets`, and an [internal](https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html) function `add(_:)` to increment `numberOfPets`
 */

class Student {
    private var numberOfPets: Int

    init(numberOfPets: Int) {
        self.numberOfPets = numberOfPets
    }

    func add(_ pets: Int) {
        self.numberOfPets += pets
    }
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

class Animal {
    enum Species {
        case dog, cat, chicken, leopard, lion
    }

    let species: Species
    let isPet: Bool
    let name: String?
    
    init(species: Species, isPet: Bool, name: String) {
        self.species = species
        self.isPet = isPet
        self.name = name
    }
}

class Student2 {
    var numberOfPets: Int {
        self.animals.filter(\.isPet).count
    }

    private var animals: [Animal] = []

    func add(_ animal: Animal) {
        self.animals.append(animal)
    }
}

/*:
 5. Perhaps `Animal` and `Student` could be structures or structs instead of classes.  Consider the pros / cons of using one over the other and see what happens if you convert them to structs.
 */

struct Animal2 {
    enum Species {
        case dog, cat, chicken, leopard, lion
    }

    let species: Species
    let isPet: Bool
    let name: String?
}

struct Student3 {
    var numberOfPets: Int {
        self.animals.filter(\.isPet).count
    }
    
    private var animals: [Animal2] = []
    
    mutating func add(_ animal: Animal2) {
        self.animals.append(animal)
    }
}

var student = Student3()
print(student.numberOfPets)
student.add(Animal2(species: .cat, isPet: true, name: "Harry"))
print(student.numberOfPets)
