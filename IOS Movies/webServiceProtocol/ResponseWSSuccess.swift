//
//  ResponseWSEvent.swift
//  IOS Movies
//
//  Created by boufalgha alaeddine on 16/5/2022.
//

import UIKit

/// Web Service Event format response
struct ResponseWSSuccess: Codable {
    
    var success : Bool!
    var error_message : String?
    
    
    
}
