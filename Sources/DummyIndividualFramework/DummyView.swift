//
//  DummyView.swift
//  DummySDK
//
//  Created by Mohit Singh on 11/08/25.
//

import UIKit

public class DummyView: UIView {

    @IBOutlet public weak var titleLbl: UILabel!
    
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
            
            let nib = UINib(nibName: "DummyView", bundle: bundle)
            guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
                assertionFailure("Failed to load DummyView.xib from bundle.")
                return
            }
            
            view.frame = bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(view)
        }
}
