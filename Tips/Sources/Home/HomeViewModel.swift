//
//  HomeViewModel.swift
//  Tips
//
//  Created by 김상용 on 2020/05/16.
//  Copyright © 2020 김상용. All rights reserved.
//

import Foundation


final class HomeViewModel: ObservableObject {
    private (set) var keyword = ""
    // published 를 붙이면 값이 변경될때 View에 즉시 알려준다
    @Published private (set) var feeds: [Feed] = []
    
    init(keyword: String = "") {
        self.keyword = keyword
    }
    
    func fetch() {
        self.feeds = [
            Feed(id: 123, title: "페드1", description: "내용1", like: Like(status: .good, count: 10)),
            Feed(id: 456, title: "페드2", description: "내용2", like: Like(status: .good, count: 20))
        ]
        
    }
    
}
