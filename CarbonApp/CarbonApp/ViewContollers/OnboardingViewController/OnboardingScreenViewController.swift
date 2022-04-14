//
//  OnboardingScreenViewController.swift
//  CarbonApp
//
//  Created by Decagon on 10/04/2022.
//

import UIKit
import Lottie

class OnboardingScreenViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    
    
    var pages = [UIViewController]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        setUpView()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = self.pages.firstIndex(of: viewController) {
            if viewControllerIndex == 0 {
                return self.pages[viewControllerIndex + 1]
            } else {
            return self.pages[viewControllerIndex - 1]
            }
        }
        return nil
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = self.pages.firstIndex(of: viewController) {
            if viewControllerIndex < self.pages.count - 1 {
                return self.pages[viewControllerIndex + 1]
            }
        }
        return nil
    }
    
    func setUpView() {
        
       
        let initailPage = 0
        let page1 = ScreenOne()
        let page2 = ScreenTwo()
        let page3 = ScreenThree()
        
        self.pages.append(page1)
        self.pages.append(page2)
        self.pages.append(page3)
        setViewControllers([pages[initailPage]], direction: .forward, animated: true, completion: nil)
        
    }
    
}


