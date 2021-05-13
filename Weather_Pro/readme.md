# WeatherPro



### Product Requirements

Weather Pro is a two sreen app.  The first screen displays a MapKit Map that utilizes a `UITapGestureRecognizer` to detect where on the map the user has tapped.

When the user taps on the map, make a `GET` request to retrieve the tomorrow.io timeline for the tapped location.  

Try creating a "Service" Abstraction to house your network code and transform the network response to a custom Swift struct using the `Codable` protocol. 

Show a new `UIViewController` that displays some weather data for the selected location.  It could be as simple as the current temperature, or build a full interface for a weather forecast.  

#### Resources

*  [tomorrow.io documentation](https://docs.tomorrow.io/reference/get-timelines)
* [Fetching Website Data into Memory](https://developer.apple.com/documentation/foundation/url_loading_system/fetching_website_data_into_memory)
* [Codable](https://www.swiftbysundell.com/basics/codable/)