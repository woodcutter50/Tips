//
//  Feed.swift
//  Tips
//
//  Created by 김상용 on 2020/05/16.
//  Copyright © 2020 김상용. All rights reserved.
//

import SwiftUI

struct Feed: Identifiable {
    var id: Int
    var title: String
    var description: String
    var like: Like
}
