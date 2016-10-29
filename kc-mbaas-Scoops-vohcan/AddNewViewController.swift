//
//  AddNewViewController.swift
//  kc-mbaas-Scoops-vohcan
//
//  Created by Nacho Villaverde Montalvo on 26/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit
import CoreImage

class AddNewViewController: UIViewController {
    //var model: String
   
    @IBOutlet weak var tituloTxt: UITextField!
//        didSet{
//            guard let titulo = model["title"]as String else{
//                return
//            }
//            tituloTxt.text = titulo
//        }
    
    @IBOutlet weak var autorTxt: UITextField!
    @IBOutlet weak var contenidoTxt: UITextField!
    
    
    
    @IBAction func takePhoto(_ sender: AnyObject) {
        
//        // Crear una instancia de UIImagePicker
//        let picker = UIImagePickerController()
//        
//        // Configurarlo
//        if UIImagePickerController.isCameraDeviceAvailable(.rear){
//            picker.sourceType = .camera
//        }else{
//            // me conformo con el carrete
//            picker.sourceType = .photoLibrary
//        }
//        
//        
//        picker.delegate = self
//        
//        // Mostrarlo de forma modal
//        self.present(picker, animated: true) {
//            // Por si quieres hacer algo nada más
//            // mostrarse el picker
//        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

//MARK: - Delegates
//
//extension AddNewViewController: UIPickerViewDelegate, UINavigationControllerDelegate{
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        
//        
//       
//        model.photo?.image = info[UIImagePickerControllerOriginalImage] as! UIImage?
//        
//        // Quitamos de enmedio al picker
//        self.dismiss(animated: true) {
//            //
//        }
//    }
//}
