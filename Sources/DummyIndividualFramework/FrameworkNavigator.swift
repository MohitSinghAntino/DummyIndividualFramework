
//
//  FrameworkNavigator.swift
//  DummySDK
//
//  Created by Mohit Singh on 11/08/25.
//
import UIKit

public class FrameworkNavigator {
    
    public static func makeSampleViewController() -> UIViewController {
        #if SWIFT_PACKAGE
        let bundle = Bundle.module
        #else
        let bundle = Bundle(for: SampleViewController.self)
        #endif
        
        let storyboard = UIStoryboard(name: "SampleViewController", bundle: bundle)
        return storyboard.instantiateViewController(withIdentifier: "SampleViewController")
    }
    
    public static func pop(from navigationController: UINavigationController?, animated: Bool = true) {
        navigationController?.popViewController(animated: animated)
    }
}
