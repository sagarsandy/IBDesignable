//
//  CustomTextField.swift
//  IBDesignable
//
//  Created by Sagar Sandy on 21/11/18.
//  Copyright © 2018 Sagar Sandy. All rights reserved.
//

import UIKit


@IBDesignable
class CustomTextField: UITextField {

    // This function will render the respective element in the interface builder
    override func prepareForInterfaceBuilder() {
        renderTextField()
    }
    
    
    // We need to override the awake from nib method so that code will get called once the xib file is ready while running the app, this is nothing to deal with the @IBDesignable. This is completely different.
    override func awakeFromNib() {
        super.awakeFromNib()

        renderTextField()

    }
    
    
    // Defining the textfield custom properties.
    func renderTextField() {
        
        backgroundColor = UIColor.blue
        layer.cornerRadius = 10.0
        layer.masksToBounds = true
        textAlignment = .center
        
    }
    
    
    
    // After defining the desired properties in the above method, we just need to change the class of the respoective textfield to "CustomTextField(whatever the class name is)" in the interface builder.
    // Once u define the class in the interface builder, just need to build the project once, then the storyboard file show the updated changes.
    // Remember we need to import @IBDesignable in this class.
}
