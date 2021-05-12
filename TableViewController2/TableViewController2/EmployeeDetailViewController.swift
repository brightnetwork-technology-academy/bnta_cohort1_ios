import SDWebImage
import UIKit

class EmployeeDetailViewController: UIViewController {
    @IBOutlet private weak var firstNameLabel: UILabel!
    @IBOutlet private weak var lastNameLabel: UILabel!
    @IBOutlet private weak var employeeIDLabel: UILabel!
    @IBOutlet private weak var employeeImageView: UIImageView!

    var employee: Employee?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.view.backgroundColor = .red

        self.firstNameLabel.text = self.employee?.firstName
        self.lastNameLabel.text = self.employee?.lastName
        self.employeeIDLabel.text = self.employee?.employeeID
        
        let placeholder = UIImage(named: "download")

        self.employeeImageView.at_setImage(with: self.employee?.imageURL, placeholder: placeholder, completion: nil)
        
//        self.employeeImageView.sd_setImage(with: self.employee?.imageURL, placeholderImage: placeholder)
//        self.employeeImageView.sd_setImage(with: self.employee?.imageURL, completed: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIImageView {
    func at_setImage(with url: URL?, placeholder: UIImage? = nil, completion: ((UIImage?) -> Void)? = nil) {
        self.image = placeholder

        guard let url = url else {
            completion?(nil)
            return
        }

        DispatchQueue.global(qos: .background).async {
            URLSession.shared.dataTask(with: url) { data, _, _ in
                let image = data.flatMap(UIImage.init)
                DispatchQueue.main.async {
                    self.image = image
                    completion?(image)
                }
            }.resume()
        }
    }
}
