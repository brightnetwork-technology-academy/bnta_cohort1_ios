# StaffDirectory App



StaffDirectory is a simple two screen app.  The first screen is a `UITableViewController` displaying staff names.  The second screen is a detail view, with additional info about a staff that has been selected from the staff table.

## Directions

1. Update `StaffDirectoryTableViewController.swift` so that it's `UITableViewDataSource` loads the dummy data declared on line 11 

   ```swift
   let dummyData = DummyData.withCount(20)
   ```

For this project, we'll use `RightDetail` cell style rather than creating a custom `UITableViewCell` subclass. Recall that `RightDetail` cells have access to the optional `textLabel` and `detailTextLabel` properties. 

2. Create a new ViewController `StaffDetailViewController` on the storyboard and a corresponding `StaffDetailViewController.swift` `UIViewController` subclass.  Remember to set the custom class in Interface Builder. 
3. Create a segue from the TableViewCell prototype that ends at the newly created `StaffDetailViewController`
4. Create a UI for the `StaffDetailViewController` that presents more of the staff data, be creative.
5. Override the `prepare(for:sender:)` function on `StaffDetailViewController` and pass the selected `Employee` to the destination `StaffDetailViewController`
6. Update `StaffDetailViewController` to ensure that it's UI is updated with the `Employee` data.