//
//  NavigationColor.swift
//  Project
//
//  Created by Luciano Nicolini on 06/08/2021.
//

import Foundation
import SwiftUI


struct NavigationConfigurator: UIViewControllerRepresentable {
    let backgroundColor: UIColor
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> UIViewController {
        context.coordinator
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<Self>) {
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(backgroundColor: backgroundColor)
    }
    
    class Coordinator: UIViewController {
        let backgroundColor: UIColor
        
        init(backgroundColor: UIColor) {
            self.backgroundColor = backgroundColor
            super.init(nibName: nil, bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            var items = [UINavigationController]()
            
            if let sv = self.splitViewController {
                if let nc = sv.viewControllers.last as? UINavigationController, !items.contains(nc), sv.viewControllers.first != self.navigationController {
                    items.append(nc)
                }
            }
            
            if let nc = self.navigationController, !items.contains(nc) {
                items.append(nc)
            }
            
            applyStyle(items)
        }
        
        private func applyStyle(_ items: [UINavigationController]) {
            items.forEach{ nc in
                //Without this, appearance not applied
                let last = nc.navigationBar.barTintColor
                nc.navigationBar.barTintColor = .red
                nc.navigationBar.barTintColor = .white
                nc.navigationBar.barTintColor = last
                //----------
                
                let navBarAppearance = UINavigationBarAppearance()
                navBarAppearance.configureWithOpaqueBackground()
                navBarAppearance.backgroundColor = self.backgroundColor
                
                nc.navigationBar.standardAppearance = navBarAppearance
                nc.navigationBar.scrollEdgeAppearance = navBarAppearance
                nc.navigationBar.compactAppearance = navBarAppearance
            }
            
         
            view.setNeedsLayout()
            view.layoutIfNeeded()
            
        }
    }
}
