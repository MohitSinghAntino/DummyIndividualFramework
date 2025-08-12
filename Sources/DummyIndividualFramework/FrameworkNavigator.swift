
//
//  FrameworkNavigator.swift
//  DummySDK
//
//  Created by Mohit Singh on 11/08/25.
//
import UIKit

public class FrameworkNavigator {
    
    public static func makeSampleViewController(from viewController: UIViewController) {
        DispatchQueue.main.async {
            #if SWIFT_PACKAGE
            let bundle = Bundle.module
            #else
            let bundle = Bundle(for: SampleViewController.self)
            #endif
            
            let storyboard = UIStoryboard(name: "SampleViewController", bundle: bundle)
            let sampleVC = storyboard.instantiateViewController(withIdentifier: "SampleViewController")
            
            viewController.navigationController?.pushViewController(sampleVC, animated: true)
        }
    }
    
    public static func pop(from navigationController: UINavigationController?, animated: Bool = true) {
        DispatchQueue.main.async {
            navigationController?.popViewController(animated: animated)
        }
    }
}

