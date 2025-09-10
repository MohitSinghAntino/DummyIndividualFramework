//
//  CardDetailsView.swift
//  SafeXPayFramework
//
//  Created by Mohit Singh on 09/09/25.
//

import UIKit

public class CardDetailsView: UIView {
    
    private var hasSetupUI = false
    
    //@IBOutlet weak var containerView: UIView!
    
    //Credit Debit View
    @IBOutlet weak var crDbView: UIView!
    
    //EditableView
    @IBOutlet weak var detailsView: UIView!
    
    @IBOutlet weak var nameTxtFld: UITextField!
    
    
    public override init(frame: CGRect) {
            super.init(frame: frame)
        commonInit()
    }
        
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
            #if SWIFT_PACKAGE
            let bundle = Bundle.module
            #else
            let bundle = Bundle(for: type(of: self))
            #endif

            let nib = UINib(nibName: "CardDetailsView", bundle: bundle)
            guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
                assertionFailure("Failed to load CardDetailsView.xib from bundle.")
                return
            }

            // Prevent multiple additions
            //if subviews.contains(view) { return }

            view.frame = bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(view)
        
        }
    
//    public override func layoutSubviews() {
//        super.layoutSubviews()
//        if !hasSetupUI {
//                    setupUI()
//                    hasSetupUI = true
//                }
//        
//    }
//    
//    func setupUI() {
//        print("setupUI called")
//        print("nameTxtFld is nil: \(nameTxtFld == nil)")
//        
//        guard let textField = nameTxtFld else {
//            print("ERROR: nameTxtFld is nil - check XIB connections")
//            return
//        }
//        
//        print("Text field frame: \(textField.frame)")
//        print("Text field superview: \(textField.superview)")
//        
//        textField.isUserInteractionEnabled = true
//        textField.isEnabled = true
//        
//        // Test if touches are being received
//        textField.addTarget(self, action: #selector(textFieldTapped), for: .editingDidBegin)
//    }
//
//    @objc func textFieldTapped() {
//        print("Text field tapped!")
//    }
    
    @IBAction func backAction(_ sender: UIButton) {
        
        print("backActionTapped")
        
    }
    
    

}
