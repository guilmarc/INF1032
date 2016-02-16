//
//  LoginManager.swift
//  CitizenWebService
//
//  Created by Marco Guilmette on 2016-02-14.
//  Copyright © 2016 Marco Guilmette. All rights reserved.
//

import Foundation

class LoginManager {
    /*
    
    public func dataTaskWithRequest(request: NSURLRequest, completionHandler: (NSData?, NSURLResponse?, NSError?) -> Void) -> NSURLSessionDataTask
    
    
    func loginWithEmail(email: String, password: String, completionHandler: (Success : bool ) -> Void) {
        //let url:NSURL = NSURL(string: "http://localhost:8888/citizen/login.php")!
        let url:NSURL = NSURL(string: "http://infologique.com/citizen/login.php")!
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "POST"
        request.cachePolicy = NSURLRequestCachePolicy.ReloadIgnoringCacheData
        let paramString = "tag=register&name=Ma&email=hk78ive.com&password=polpolpol"
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
    
    */
}