//
//  ViewController.swift
//  PhotoCamera
//
//  Created by Marco Guilmette on 2016-01-23.
//  Copyright © 2016 Marco Guilmette. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var PhotoLibraryButton: UIButton!
    @IBOutlet weak var CameraButton: UIButton!
    @IBOutlet weak var ImageDislay: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func PhotoLibraryAction(sender: UIButton) {
    
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        
        self.presentViewController(picker, animated: true, completion: nil)
    }
    
    @IBAction func CameraAction(sender: AnyObject) {
    
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .Camera
        
        //Take a picture
        //Default value, enter nothing
        
        //Record a movie
        picker.mediaTypes = [kUTTypeMovie as String]
        
        self.presentViewController(picker, animated: true, completion: nil)
    
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        print("\(info) \n \n")
        
        switch(info[UIImagePickerControllerMediaType] as! String) {
        case "public.image":
                print("public.image received")
                ImageDislay.image = info[UIImagePickerControllerOriginalImage] as? UIImage
                
                let data = UIImagePNGRepresentation(info[UIImagePickerControllerOriginalImage] as! UIImage)
                
                //save data to CoreData
                print(data)
            
        case "public.movie":
                print("public.movie received")
                let url = info[UIImagePickerControllerMediaURL] as! NSURL
                let data = NSData(contentsOfURL: url)
                
                //save data to CoreData
                print(data)
            
        default:
                print("Unknown type received")
        }
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
}

