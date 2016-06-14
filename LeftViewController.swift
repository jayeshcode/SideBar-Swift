//
//  LeftViewController.swift
//  Prototype
//
//  Created by Jayesh Wadhwani on 2016-06-13.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

import UIKit
import Material

class LeftViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        prepareFlatButtonExample()
        prepareRaisedButtonExample()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
   
    private func prepareView() {
        view.backgroundColor = MaterialColor.clear
    }
    
    /// Prepares the FlatButton.
    private func prepareFlatButtonExample() {
        let w: CGFloat = 200
        let button: FlatButton = FlatButton(frame: CGRectMake((view.bounds.width - w) / 2, 100, w, 48))
        button.setTitle("Effect 1", forState: .Normal)
        button.setTitleColor(MaterialColor.blue.base, forState: .Normal)
        button.pulseColor = MaterialColor.blue.base
        button.titleLabel!.font = RobotoFont.mediumWithSize(24)
        
        let w2: CGFloat = 200
        let button2: FlatButton = FlatButton(frame: CGRectMake((view.bounds.width - w2) / 2, 300, w, 48))
        button2.setTitle("Effect 3", forState: .Normal)
        button2.setTitleColor(MaterialColor.blue.base, forState: .Normal)
        button2.pulseColor = MaterialColor.blue.base
        button2.titleLabel!.font = RobotoFont.mediumWithSize(24)
        
        
        // Add button to UIViewController.
        view.addSubview(button)
        
    view.addSubview(button2)
    
    
    
    }
    
    /// Prepares the RaisedButton.
    private func prepareRaisedButtonExample() {
        let w: CGFloat = 200
        let button: RaisedButton = RaisedButton(frame: CGRectMake((view.bounds.width - w) / 2, 200, w, 48))
        button.setTitle("Effect 2", forState: .Normal)
        button.setTitleColor(MaterialColor.blue.base, forState: .Normal)
        button.pulseColor = MaterialColor.blue.base
        button.titleLabel!.font = RobotoFont.mediumWithSize(24)
        
      
            let w2: CGFloat = 200
            let button2: RaisedButton = RaisedButton(frame: CGRectMake((view.bounds.width - w2) / 2, 400, w, 48))
            button2.setTitle("Effect 4", forState: .Normal)
            button2.setTitleColor(MaterialColor.blue.base, forState: .Normal)
            button2.pulseColor = MaterialColor.blue.base
            button2.titleLabel!.font = RobotoFont.mediumWithSize(24)
        
        
        // Add button to UIViewController.
        view.addSubview(button)
        view.addSubview(button2)

    }
    
    
    


  }




