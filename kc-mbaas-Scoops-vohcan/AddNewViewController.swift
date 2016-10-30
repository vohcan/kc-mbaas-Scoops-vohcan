//
//  AddNewViewController.swift
//  kc-mbaas-Scoops-vohcan
//
//  Created by Nacho Villaverde Montalvo on 26/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit

typealias newsRecord = Dictionary<String, AnyObject>

class AddNewViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   
    

    var client: MSClient = MSClient(applicationURL: URL(string:"http://kcboot3vohcan-mobileapp.azurewebsites.net")!)
    var model: newsRecord?

   
    
    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var titleField: UITextField!{
        didSet{
            guard let titleTxt = model?["title"] as! String? else{
                return
            }
            titleField.text = titleTxt
        }
    }
    
    @IBOutlet weak var autorField: UITextField!{
        didSet{
            guard let autorTxt = model?["author"] as! String? else{
                return
            }
            autorField.text = autorTxt
        }
    }

    
    @IBOutlet weak var contentField: UITextField!{
        didSet{
            guard let contentTxt = model?["content"] as! String? else{
                return
            }
            contentField.text = contentTxt
        }
    }

    
    
    @IBAction func takePhoto(_ sender: AnyObject) {
        
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        self.present(picker, animated: true)
    
    }
    
    @IBAction func saveNew(_ sender: AnyObject) {
        model!["title"] = titleField.text as AnyObject?
        model!["author"] = autorField.text as AnyObject?
        model!["content"] = contentField.text as AnyObject?
        
        addNews(
)//"Prueba1", "autor1", "contenido de prueba", 0.5, 0.7)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: -  Insert in table news
    func addNews(/*_ title:String, _ author: String, _ content: String,  _ longitude: Double,  _ latitude: Double*/){
        
        
        let tableMS = client.table(withName: "news")
        
        tableMS.insert(["title": title, "author": autor, "content": content/*, "longitude": longitude, "latitude": latitude*/]) { (result, error) in
            if let _ = error{
                print (error)
                return
            }
            print(result)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


