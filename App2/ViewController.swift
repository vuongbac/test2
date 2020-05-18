import UIKit
import SDWebImage
import Alamofire

class ViewController: UIViewController,UITableViewDelegate , UITableViewDataSource {
    var list:[Data] = []
    var netword = NetWordManager()
    var limmit = 10
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        netword.listCV { (list) in
            self.list = list ?? []
            self.tableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let vc = list[indexPath.row]
        cell.lblName.text = vc.name
        cell.lblEmail.text = vc.email
        cell.avatar.sd_setImage(with:URL(string:String(vc.avatar)) )
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            print("end")
    }
    
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let offsetY = scrollView.contentOffset.y
//        let contenHeight = scrollView.contentSize.height
//        if (offsetY > contenHeight - scrollView.frame.height * 4) && !isLoading{
//        }
//
}
