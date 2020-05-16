//
//  MainTabView.swift
//  Tips
//
//  Created by 김상용 on 2020/05/16.
//  Copyright © 2020 김상용. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    
    // MARK - Properties
    
    
    // MARK: - UI
    
    var homeView = HomeView(HomeViewModel())
    var writeView = WriteView()
    
    var body: some View {
        TabView {
            homeView
                .tabItem {
                    Text("Home")
            }
            
            writeView
                .tabItem {
                    Text("Write")
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
