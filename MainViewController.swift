//
//  MainViewController.swift
//  kc-mbaas-Scoops-vohcan
//
//  Created by Nacho Villaverde Montalvo on 26/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    var client: AZSCloudBlobClient?
    let sas = ""
    func setupAzureClient(){
        do{
            let credentials = AZSStorageCredentials(accountName: "kcboot3vohcan", accountKey: "anO7ouuJv1TuJuiw2+UbJPCj2WDvy2a20/TVoaR6zQZ2GY9cSGRRvsciqXF2RfYopKF9OamBHePaR7DXJkHlow==")
            
            let account = try AZSCloudStorageAccount(credentials: credentials, useHttps: true)
            
            client = account.getBlobClient()
        }
        catch let error{
            print(error)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupAzureClient()
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
