//
//  ViewController.swift
//  CitizenWebService
//
//  Created by Marco Guilmette on 2016-02-13.
//  Copyright © 2016 Marco Guilmette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

            let url:NSURL = NSURL(string: "http://localhost:8888/citizen/request.php")!
            //let url:NSURL = NSURL(string: "http://infologique.com/citizen/login.php")!
            let request = NSMutableURLRequest(URL: url)
            request.HTTPMethod = "POST"
            request.cachePolicy = NSURLRequestCachePolicy.ReloadIgnoringCacheData
        
            let paramString =  "tag=insert&user_id=1&category_id=0&title=Nid de poule&description=MaDescrion&latitude=0&longitude=0&image=image.png"
   
            //let paramString =  "tag=update&id=8&category_id=0&title=Graffiti&description=MaDescrion&latitude=0&longitude=0&image=image.png"
            //let paramString = "tag=select&user_id=1"
            //let paramString =  "tag=delete&id=7&user_id=1"
        
        
            request.HTTPBody = paramString.dataUsingEncoding(NSUTF8StringEncoding)
            
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
                (
                let data, let response, let error) in
                
                guard let _:NSData = data, let _:NSURLResponse = response  where error == nil else {
                    print("error \(error)")
                    return
                }
                
                let dataString = NSString(data: data!, encoding: NSUTF8StringEncoding)
                print(dataString)
            }
            
            task.resume()
        

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

