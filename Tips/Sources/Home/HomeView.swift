//
//  HomeView.swift
//  Tips
//
//  Created by 김상용 on 2020/05/16.
//  Copyright © 2020 김상용. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    // MARK - Properties
    
    // HomeViewModel의 Published 어노테이션이 붙은 프로퍼티가 값이 변할때마다 호출된다.
    @ObservedObject var viewModel = HomeViewModel()
    
    // MARK: - UI
    
    // MARK: - initialize
    
    init(_ viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.feeds) { feed in
                Text(feed.title)
            }
            .navigationBarTitle("홈")
        }
        .onAppear{
            self.setupFeed()
        }
        .onDisappear {
            
        }
    }
    
    // MARK: - Setup
    
    func setupFeed() {
        viewModel.fetch()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(HomeViewModel())
    }
}
