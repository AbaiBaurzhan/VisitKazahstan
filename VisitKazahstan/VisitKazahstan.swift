//
//  VisitKazahstan.swift
//  VisitKazahstan
//
//  Created by Абай Бауржан on 16.12.2024.
//

import Foundation
import SwiftyJSON

struct VisitKazahstan {
    var name = ""
    var region = ""
    var location = ""
    
    var flag = ""
    var picture = ""
    
    init(json: JSON) {
        if let item = json["name"].string {
            name = item
        }
        if let item = json["region"].string {
            region = item
        }
        if let item = json["location"].string {
            location = item
        }
        if let item = json["flag"].string {
            flag = item
        }
        if let item = json["picture"].string {
            picture = item
        }
    }
}
