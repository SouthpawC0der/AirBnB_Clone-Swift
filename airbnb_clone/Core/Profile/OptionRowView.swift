//
//  OptionRowView.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 6/4/24.
//

import SwiftUI

struct OptionRowView: View {
    let imageName: String
    let title: String
    
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            
            Divider()
        }
    }
}

#Preview {
    OptionRowView(imageName: "gear", title: "Settings")
}
