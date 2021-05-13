import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailLabel: UILabel!
    var timelines = [TimelineResponse.Timeline]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let interval = timelines.first?.intervals?.first
        
        self.detailLabel.text = interval?.values?.temperature.map { String($0) }
    }
}
