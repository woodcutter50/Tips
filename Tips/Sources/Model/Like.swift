//
//  Like.swift
//  Tips
//
//  Created by 김상용 on 2020/05/16.
//  Copyright © 2020 김상용. All rights reserved.
//

import Foundation

struct Like {
    
    enum Status {
        case good
        case hate
    }
    
    var status: Status
    var count: Int
    
}

