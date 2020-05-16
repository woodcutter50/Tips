//
//  WriteView.swift
//  Tips
//
//  Created by 김상용 on 2020/05/16.
//  Copyright © 2020 김상용. All rights reserved.
//

import SwiftUI

struct WriteView: View {
    var body: some View {
        NavigationView {
            Text("write")
            .navigationBarTitle("글쓰기")
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
