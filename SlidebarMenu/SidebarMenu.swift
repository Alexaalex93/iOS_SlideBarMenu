//
//  SidebarMenu.swift
//  SlidebarMenu
//
//  Created by cice on 24/3/17.
//  Copyright © 2017 355 Berry Street. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
    func addSideBarMenu(leftMenuButton: UIBarButtonItem?, rightBarMenuButton: UIBarButtonItem? = nil){
        
        //como hemos puesto = nil al llamar a la funcion que crea los botones tenemos opcion de crear solo un boton izquierdo o los dos
    
        if let menuButton = leftMenuButton {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        }
        
        if let menuLateralButton = rightBarMenuButton {
        
            menuLateralButton.target = revealViewController()
            menuLateralButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            
            
        }
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

}
