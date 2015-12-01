//
//  ViewController.swift
//  AutoLayoutTutorial
//
//  Created by Nate Armstrong on 11/30/15.
//  Copyright © 2015 Nate Armstrong. All rights reserved.
//
// http://pttrns.com/applications/303

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // terms
        let terms = UILabel()
        terms.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(terms)
        terms.text = "By joining you agree to our Terms & Privacy Policy"
        terms.font = UIFont.systemFontOfSize(12)
        terms.textColor = UIColor.lightGrayColor()
        terms.textAlignment = .Center

        // bottom
        view.addConstraint(NSLayoutConstraint(
            item: terms,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: view,
            attribute: .BottomMargin,
            multiplier: 1,
            constant: -8))
        // leading
        view.addConstraint(NSLayoutConstraint(
            item: terms,
            attribute: .Leading,
            relatedBy: .Equal,
            toItem: view,
            attribute: .LeadingMargin,
            multiplier: 1,
            constant: 0))
        // trailing
        view.addConstraint(NSLayoutConstraint(
            item: terms,
            attribute: .Trailing,
            relatedBy: .Equal,
            toItem: view,
            attribute: .TrailingMargin,
            multiplier: 1,
            constant: 0))

        // submit button
        let button = UIButton(type: .System)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.backgroundColor = UIColor.darkGrayColor()
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.setTitle("JOIN SPRING", forState: .Normal)

        // bottom
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: terms,
            attribute: .Top,
            multiplier: 1,
            constant: -30))
        // leading
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Leading,
            relatedBy: .Equal,
            toItem: view,
            attribute: .LeadingMargin,
            multiplier: 1,
            constant: 0))
        // trailing
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Trailing,
            relatedBy: .Equal,
            toItem: view,
            attribute: .TrailingMargin,
            multiplier: 1,
            constant: 0))
        // height
        button.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .NotAnAttribute,
            multiplier: 1,
            constant: 50))

        // text fields container
        let textFields = UIView()
        textFields.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textFields)
        textFields.backgroundColor = UIColor.lightGrayColor()

        // bottom
        view.addConstraint(NSLayoutConstraint(
            item: textFields,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: button,
            attribute: .Top,
            multiplier: 1,
            constant: -20))
        // leading
        view.addConstraint(NSLayoutConstraint(
            item: textFields,
            attribute: .Leading,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Leading,
            multiplier: 1,
            constant: 0))
        // trailing
        view.addConstraint(NSLayoutConstraint(
            item: textFields,
            attribute: .Trailing,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Trailing,
            multiplier: 1,
            constant: 0))

        let textFieldHeight: CGFloat = 50
        let textFieldSpacing: CGFloat = 0.5

        // email
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        textFields.addSubview(email)
        email.placeholder = "Email"
        email.backgroundColor = UIColor.whiteColor()

        // text inset hack
        email.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)

        // top
        textFields.addConstraint(NSLayoutConstraint(
            item: email,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: textFields,
            attribute: .Top,
            multiplier: 1,
            constant: textFieldSpacing))
        // height
        email.addConstraint(NSLayoutConstraint(
            item: email,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .NotAnAttribute,
            multiplier: 1,
            constant: textFieldHeight))
        // leading
        textFields.addConstraint(NSLayoutConstraint(
            item: email,
            attribute: .Leading,
            relatedBy: .Equal,
            toItem: textFields,
            attribute: .Leading,
            multiplier: 1,
            constant: 0))
        // trailing
        textFields.addConstraint(NSLayoutConstraint(
            item: email,
            attribute: .Trailing,
            relatedBy: .Equal,
            toItem: textFields,
            attribute: .Trailing,
            multiplier: 1,
            constant: 0))

        // password
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        textFields.addSubview(password)
        password.placeholder = "Password"
        password.backgroundColor = UIColor.whiteColor()

        // text inset hack
        password.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)

        // top
        textFields.addConstraint(NSLayoutConstraint(
            item: password,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: email,
            attribute: .Bottom,
            multiplier: 1,
            constant: textFieldSpacing))
        // leading
        textFields.addConstraint(NSLayoutConstraint(
            item: password,
            attribute: .Leading,
            relatedBy: .Equal,
            toItem: textFields,
            attribute: .Leading,
            multiplier: 1,
            constant: 0))
        // trailing
        textFields.addConstraint(NSLayoutConstraint(
            item: password,
            attribute: .Trailing,
            relatedBy: .Equal,
            toItem: textFields,
            attribute: .Trailing,
            multiplier: 1,
            constant: 0))
        // height
        password.addConstraint(NSLayoutConstraint(
            item: password,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .NotAnAttribute,
            multiplier: 1,
            constant: textFieldHeight))
        textFields.addConstraint(NSLayoutConstraint(
            item: password,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: textFields,
            attribute: .Bottom,
            multiplier: 1,
            constant: -textFieldSpacing))
    }

}
