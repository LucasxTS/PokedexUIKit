//
//  LoginMethodDelegate.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 09/01/25.
//

import Foundation
import UIKit

protocol LoginMethodDelegate: AnyObject {
    func createAccount()
    
    func login()
}
