//
//  ViewController.swift
//  Prototype
//
//  Created by Jayesh Wadhwani on 2016-06-13.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

import UIKit
import Material

class ViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate,UITabBarDelegate{

private var bottomTabBar: BottomTabBar!
    @IBOutlet weak var imagePicked: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        prepareView()
        
        prepareTabBar()
        
        let tabBar: TabBar = TabBar(frame: CGRectMake(0, 600, view.bounds.width, 44))
        tabBar.backgroundColor = MaterialColor.blue.base
        
        view.addSubview(tabBar)
        
        let btn1: FlatButton = FlatButton()
        btn1.pulseColor = MaterialColor.white
        btn1.setTitle("ONE", forState: .Normal)
        btn1.setTitleColor(MaterialColor.white, forState: .Normal)
        
        let btn2: FlatButton = FlatButton()
        btn2.pulseColor = MaterialColor.white
        btn2.setTitle("TWO", forState: .Normal)
        btn2.setTitleColor(MaterialColor.white, forState: .Normal)
        
        let btn3: FlatButton = FlatButton()
        btn3.pulseColor = MaterialColor.white
        btn3.setTitle("THREE", forState: .Normal)
        btn3.setTitleColor(MaterialColor.white, forState: .Normal)
        
        let btn4: FlatButton = FlatButton()
        btn4.pulseColor = MaterialColor.white
        btn4.setTitle("FOUR", forState: .Normal)
        btn4.setTitleColor(MaterialColor.white, forState: .Normal)
        
        
        tabBar.buttons = [btn1, btn2, btn3, btn4]

        
        
    }

   //opens camera on your device
    @IBAction func openCameraButton(sender: AnyObject) {
    
        
    
    
    
    }
    
    //opens library button
       
    
    // delegate method
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        imagePicked!.image = image
        self.dismissViewControllerAnimated(true, completion: nil);
    }
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// Prepares view.
    private func prepareView() {
        view.backgroundColor = MaterialColor.white
    }
    
    /// Prepare tabBar.
    private func prepareTabBar() {
        bottomTabBar = BottomTabBar()
        // tabBar.autoLayoutToSuperview // Set to false if you want to handle the layout yourself.
        bottomTabBar.backgroundColor = MaterialColor.grey.darken4
        view.addSubview(bottomTabBar)
        
        let videoItem: UITabBarItem = UITabBarItem(title: "Save", image: MaterialIcon.cm.videocam, selectedImage: nil)
        videoItem.setTitleColor(MaterialColor.grey.base, forState: .Normal)
        videoItem.setTitleColor(MaterialColor.teal.base, forState: .Selected)
        
        let photoItem: UITabBarItem = UITabBarItem(title: "Photo", image: MaterialIcon.cm.photoCamera, selectedImage: nil)
        photoItem.setTitleColor(MaterialColor.grey.base, forState: .Normal)
        photoItem.setTitleColor(MaterialColor.teal.base, forState: .Selected)
        
        let libraryItem: UITabBarItem = UITabBarItem(title: "Library", image: MaterialIcon.cm.photoLibrary, selectedImage: nil)
        libraryItem.setTitleColor(MaterialColor.grey.base, forState: .Normal)
        libraryItem.setTitleColor(MaterialColor.teal.base, forState: .Selected)
        
        bottomTabBar.setItems([videoItem, photoItem, libraryItem], animated: true)
        bottomTabBar.tintColor = MaterialColor.teal.base // Sets the image color when highlighted.
        bottomTabBar.itemPositioning = .Automatic // Sets the alignment of the UITabBarItems.
        bottomTabBar.selectedItem = videoItem
        self.bottomTabBar.delegate=self
    }
    
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        // do something
        if (item.title == "Save" )
        {
            if (imagePicked!.image != nil)
            {let imageData = UIImageJPEGRepresentation(imagePicked!.image!, 0.6)
                
                
                let compressedJPGImage = UIImage(data: imageData!)
                UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
                
                var alert = UIAlertView(title: "Wow",
                                        message: "Your image has been saved to Photo Library!",
                                        delegate: nil,
                                        cancelButtonTitle: "Ok")
                alert.show()
            }else
            {
                
                var alert = UIAlertView(title: "Alert",
                                        message: "Choose image to be saved!",
                                        delegate: nil,
                                        cancelButtonTitle: "Ok")
                alert.show()
                
                
            }
            
            
        }
        if item.title == "Library"
        {
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
                var imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary;
                imagePicker.allowsEditing = true
                self.presentViewController(imagePicker, animated: true, completion: nil)
            }
            
            
            
        }
        if item.title == "Photo"
        {
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
                var imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerControllerSourceType.Camera;
                imagePicker.allowsEditing = false
                self.presentViewController(imagePicker, animated: true, completion: nil)
            }
            
            
            
        }
        
        
    }
    
    
}

