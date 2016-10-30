//
//  NewViewController.swift
//  kc-mbaas-Scoops-vohcan
//
//  Created by Nacho Villaverde Montalvo on 26/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    
    var client: MSClient?
    var model: newsRecord?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var titleLbl: UILabel!{
        didSet{
            titleLbl.text = model?["title"] as! String?
        }
    }
    @IBOutlet weak var autorLbl: UILabel!{
        didSet{
            autorLbl.text = model?["author"] as! String?
        }
    }

    @IBOutlet weak var contentLbl: UILabel!{
        didSet{
            contentLbl.text = model?["content"] as! String?
        }
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//MARK: - read data
    
//    func readAllItemsInNews(){
//        let tableMS = client.table(withName: "news")
//        
//        tableMS.read { (results, error) in
//            if let _ = error {
//                print(error)
//                return
//            }
//            if !((self.model?.isEmpty)!) {
//                self.model?.removeAll()
//            }
//            if let items = results {
//                
//                for item in items.items! {
//                    self.model?.append(item as! [String : AnyObject])
//                }
//                
//                DispatchQueue.main.async {
//                    
//                   // self.tableView.reloadData()
//                    self.titleLbl.text = model?["title"] as String
//                    
//                    self.autorLbl.text = "poner algo de autor"
//                    self.contentLbl.text = "poner algo de contenido"
//                }
//                
//            }
//        }
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
