//
//  ViewController.swift
//  AutoLayoutTutorial
//
//  Created by Nate Armstrong on 11/30/15.
//  Copyright © 2015 Nate Armstrong. All rights reserved.
//

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
        view.addConstraint(NSLayoutConstraint(
            item: terms,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: view,
            attribute: .BottomMargin,
            multiplier: 1,
            constant: -8))
        view.addConstraint(NSLayoutConstraint(
            item: terms,
            attribute: .Leading,
            relatedBy: .Equal,
            toItem: view,
            attribute: .LeadingMargin,
            multiplier: 1,
            constant: 0))
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
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: terms,
            attribute: .Top,
            multiplier: 1,
            constant: -20))
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Leading,
            relatedBy: .Equal,
            toItem: view,
            attribute: .LeadingMargin,
            multiplier: 1,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Trailing,
            relatedBy: .Equal,
            toItem: view,
            attribute: .TrailingMargin,
            multiplier: 1,
            constant: 0))
        button.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .NotAnAttribute,
            multiplier: 1,
            constant: 50))
    }

}
