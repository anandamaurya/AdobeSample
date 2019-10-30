//
//  ViewController.swift
//  LoginTest
//
//  Created by Himanshu Saraswat on 26/08/19.
//  Copyright © 2019 Himanshu Saraswat. All rights reserved.
//
import Foundation
import UIKit


// MARK: - AutoCompleteTextField Protocol
public protocol AutoCompleteTextFieldDataSource: NSObjectProtocol {
    
    // Required protocols
    
    func autoCompleteTextFieldDataSource(_ autoCompleteTextField: AutoCompleteTextField) -> [String] // called when in need of suggestions.
}

@objc public protocol AutoCompleteTextFieldDelegate: UITextFieldDelegate {
    
 
}

// MARK: - UITextFieldDelegate
extension AutoCompleteTextField: UITextFieldDelegate {
    
    // MARK: - UITextFieldDelegate
    
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        guard let delegate = autoCompleteTextFieldDelegate, let delegateCall = delegate.textFieldShouldBeginEditing else { return true }
        
        return delegateCall(self)
    }
    
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        guard let delegate = autoCompleteTextFieldDelegate, let delegateCall = delegate.textFieldDidBeginEditing else { return }
        
        delegateCall(self)
    }
    
    public func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        guard let delegate = autoCompleteTextFieldDelegate, let delegateCall = delegate.textFieldShouldEndEditing else { return true }
        
        return delegateCall(self)
    }
    
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        guard let delegate = autoCompleteTextFieldDelegate, let delegateCall = delegate.textFieldShouldClear else { return true }
        
        return delegateCall(self)
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let delegate = autoCompleteTextFieldDelegate, let delegateCall = delegate.textFieldShouldReturn else { return endEditing(true) }
        
        return delegateCall(self)
    }
}
