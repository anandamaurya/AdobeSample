import UIKit
import DrawerMenu
struct Headline {

    var id : Int
    var title : String
    var text : String
    var image : String
    var price : String
    var type : String
    var detailsTitle : String
}

class HeadlineTableViewCell: UITableViewCell {

    @IBOutlet weak var headlineTitleLabel: UILabel!
    @IBOutlet weak var headlineTextLabel: UILabel!
    @IBOutlet weak var headlineImageView: UIImageView!
    @IBOutlet weak var priceTextLabel: UILabel!
    @IBOutlet weak var typeTextLabel: UILabel!
}

class StoriesTableViewController: UITableViewController {

    var headlines = [
        Headline(id: 1, title: "Basic Home Electricity", text: "For average annual usage, $1941 is the reference price for electricity.", image: "back1.jpg", price: "$88", type:"Standard Plan", detailsTitle: "Title"),
        Headline(id: 2, title: "No Frills Electricity", text: "For average electricity usage, this plan is 6% less than the reference price at an estimated yearly cost of $1821.", image: "back2.jpg", price: "$82", type:"39 cents per kwh", detailsTitle: "Features"),
        Headline(id: 3, title: "Total Plans Electicity", text: "For average electricity usage, this plan is 6% less than the reference price at an estimated yearly cost of $1825.For average electricity usage, this plan is 6% less than the reference price at an estimated yearly cost of $1825.For average electricity usage, this plan is 6% less than the reference price at an estimated yearly cost of $1825.", image: "back3.jpg", price: "$100", type:"6 percents electricity discounts", detailsTitle: "Features"),
        Headline(id: 4, title: "Total Plans Electicity Extra", text: "For average electricity usage, this plan is 6% less than the reference price at an estimated yearly cost of $1825.For average electricity usage, this plan is 6% less than the reference price at an estimated yearly cost of $1825.For average electricity usage, this plan is 6% less than the reference price at an estimated yearly cost of $1825.", image: "back3.jpg", price: "$100", type:"6 percents electricity discounts", detailsTitle: "Features"),
        ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       initilizeSideMenu()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    @IBAction func showMenu(_ sender: Any) {
        present(ADBSideMenu().sideMenuNavController(), animated: true, completion: nil)
    }
    func showSideMenu() {
        
    }
    /// initilization for side menu
    private func initilizeSideMenu() {
        
        let leftmenu  = UIButton(type: .custom)
        leftmenu.setImage(UIImage(named: "left-menu.png"), for:[])
        leftmenu.frame = CGRect(x: 0, y: 0, width: 31, height: 31)
        //add function for button
        leftmenu.addTarget(self, action: #selector(showMenu(_:)), for: UIControl.Event.touchUpInside)
        
        let barButton = UIBarButtonItem(customView: leftmenu)
        //assign button to navigationbar
        self.navigationItem.setHidesBackButton(true, animated:true);
        navigationItem.leftBarButtonItem = barButton
        
        let logoutButton
            = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logoutAction))
        
        navigationItem.rightBarButtonItem = logoutButton
        
    }
    @objc func logoutAction(sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! HeadlineTableViewCell

        let headline = headlines[indexPath.row]
        cell.headlineTitleLabel?.text = headline.title
        cell.headlineTextLabel?.text = headline.text
        cell.priceTextLabel?.text = "Price: " + headline.price
        cell.headlineImageView?.image = UIImage(named: headline.image)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let viewController = UIStoryboard(name: "MainStoryboard_iPhone", bundle: nil).instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController {
            if let navigator = navigationController {
                 viewController.details = headlines
                navigator.pushViewController(viewController, animated: true)
            }
        }
    }

}
