## Prework

#### Reading

* [Getting Started with Xcode WWDC 2019](https://developer.apple.com/videos/play/wwdc2019/404/) (required, can skip "Working with Packages and Frameworks" & "Testing and Distribution" sections)
* [A Swift Tour](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html) (required)
* [Swift Language Guide, The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html) (required)
* [Swift Language Guide, All Sections](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html) (optional - read as much as you have time for!)
* [Free Apple Developer Account vs Paid Account](https://help.apple.com/developer-account/#/dev21218dfd6) (optional)

#### Exercises

1. [Install Xcode 12.5 from Mac App Store](https://apps.apple.com/us/app/xcode/id497799835?mt=12)

2. [Create a free Apple Developer Account](https://learnappmaking.com/how-to-create-a-free-apple-developer-account/)

3. In classic fashion, we'll create a "Hello World" App.  This app will simply place a UILabel in the center of the screen with the text "Hello World".  Feel free to follow an online tutorial like this: https://medium.com/swlh/your-first-ios-application-using-xcode-9983cf6efb71 or try doing it based on docs / intuition! 

* Create a new folder under the [Students Directory](/Students) with your `first_last` name.  ex. `al_tyus`.  This is where you'll add all of your course content!
* Add the entire project folder that Xcode generates to your folder.  
*  Open a pull request and tag/assign me (@altyus).

4. Congratulations! You've written your first iOS App.  If you've got some time to spare, go deeper in the prework reading, start on the class 1 reading, or fire up a [swift playground](https://www.hackingwithswift.com/read/0/1/how-to-install-xcode-and-create-a-playground) or [REPL](https://developer.apple.com/swift/blog/?id=18) and play around!

## Class 1

#### Reading

* [Xcode Essentials](https://developer.apple.com/library/archive/documentation/ToolsLanguages/Conceptual/Xcode_Overview/) (required)
* [Swift Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html) (required)
* [Functions](https://docs.swift.org/swift-book/LanguageGuide/Functions.html) (required)
* [Structures and Classes](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html) (required)
* [Control Flow](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html) (required)
* [Using the debugger](https://developer.apple.com/library/archive/documentation/ToolsLanguages/Conceptual/Xcode_Overview/UsingtheDebugger.html) (optional)

#### Topics

* Xcode
  * LLDB / Debugging
  * Unit testing
  * Simulator / Building App
  * Code Signing / Capabilities
  * Build Settings (Device Targets / iOS Deployment Target)
  * Breakpoints
* Swift
  * Variables and Constants
  * Data Types (String, Int, Float & Double, Bool)
  * Optionals
  * Collection Types (Array, Set, Dictionary, ArraySlice)
  * Functions and closures
  * Classes and Structs
  * Protocols
  * Initialization / Instantiation, Lazy Instantiation
  * Enumerations
  * Conditionals (if, else if, switch, where clause)
  * Loops (for in, forEach, while / do while, range, enumerated sequence)
  * Higher-order functions (map, filter and reduce)

#### Exercises

1. [SwiftLang Playground](Playgrounds/SwiftLangExercise1.playground)
2. [Collections Playground](Playgrounds/Collections.playground)
3. [Functional Swift Playground](Playgrounds/FunctionalSwift.playground)

## Class 2

#### Reading

* [UIStackView Docs](https://developer.apple.com/documentation/uikit/uistackview) (required)
* [UINavigationController](https://developer.apple.com/documentation/uikit/uinavigationcontroller) (overview required)
* [Table Views](https://developer.apple.com/documentation/uikit/views_and_controls/table_views) (required)
* [UICollectionView Docs](https://developer.apple.com/documentation/uikit/uicollectionview) (overview required)
* [The Autolayout Cheat Sheet](https://www.hackingwithswift.com/articles/140/the-auto-layout-cheat-sheet) (optional)

#### Topics

* MVC
* Foundation
  * Dates and Times (Date, TimeInterval, DateComponents, Calendar, DateFormatter, RelativeDateTimeFormatter)
  * Units and Measurement (Unit, Mesasurement, UnitConverter)
  * Files and Data Persistence (UserDefaults, Keychain, FileManager, CoreData)
* UIKit
  * UIViewController
  * UINavigationController
  * Interface Builder
  * UIStackView
  * UITableView
  * UICollectionView

#### Exercises

1. [Ray Wenderlich Storyboards Tutorial](https://www.raywenderlich.com/5055364-ios-storyboards-getting-started)

2. Recreate [this view](https://docs-assets.developer.apple.com/published/81df924749/ab74c89e-7d7e-46c0-a848-dee90fe046d2.png) using `UITableViewController` and `UITableViewCell` 

   Create an app that uses a `UINavigationController` to allow a simple root `UIViewController` to segue to three different view controllers.  The root ViewController should have a `UIButton` for each segue and the three different view controllers should simply have 3 different background colors.  Feel free to use a `UIStackView` to layout the three buttons. Each of the destination view controllers should be able to return to the root view controller using a back button. [Video](/Examples/RGB.mov)

3. Create a single screen App that uses UserDefaults to save the number of times that the app has been opened.  Display the number of app opens on a label that uses autolayout to center itself on the screen. 

## Class 3

#### Reading

* [Push segue from UITableViewCell to ViewController](https://www.tutorialspoint.com/push-segue-from-uitableviewcell-to-viewcontroller-in-swift)
* [Swift Package Manager](https://swift.org/package-manager/) (Conceptual Overview only)
* [Grand Central Dispatch](https://www.swiftbysundell.com/basics/grand-central-dispatch/)

#### Topics

* More UITableViewControllers
* Storyboard Segue
* Swift Package Manager
* Concurrency

#### Exercises

1. [Create a custom UITableViewCell](https://programmingwithswift.com/create-a-custom-uitableviewcell-with-swift/)
2. [Staff Directory](Staff/readme.md)

## Class 4

#### Reading

* [Fetching Website Data into Memory](https://developer.apple.com/documentation/foundation/url_loading_system/fetching_website_data_into_memory) (required)
* [Core Location](https://developer.apple.com/documentation/corelocation) | [Adding Location Services to Your App](https://developer.apple.com/documentation/corelocation/adding_location_services_to_your_app) (required)
* [UIGestureRecognizer](https://developer.apple.com/documentation/uikit/uigesturerecognizer)

#### Topics

* GestureRecognizers
* Core Location
* Networking
* Codable / Data Model Mapping
* Animation

#### Exercises

* [WeatherPro](Weather_Pro/readme.md)