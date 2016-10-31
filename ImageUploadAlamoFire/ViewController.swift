//
//  ViewController.swift
//  ImageUploadAlamoFire
//
//  Created by Felipe Soares on 30/10/16.
//  Copyright © 2016 Felipe Soares. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        Alamofire.request("https://httpbin.org/get").responseJSON { response in
//            print(response.request)  // original URL request
//            print(response.response) // HTTP URL response
//            print(response.data)     // server data
//            print(response.result)   // result of response serialization
//            
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//            }
//        }
        
        let imageData = UIImagePNGRepresentation(myImageView.image!)
        
        Alamofire.upload(imageData!, to: "https://httpbin.org/post").responseJSON { response in
            debugPrint(response)
        }
        
//        Alamofire.upload(imageData!, to: "https://httpbin.org/post")
//            .responseJSON{response in
//                print(response)
//            }
//            .uploadProgress{progress in
//                print(progress)
//            }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

