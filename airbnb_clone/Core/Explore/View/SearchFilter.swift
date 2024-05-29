//
//  SearchFilter.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 5/29/24.
//

import SwiftUI

struct SearchFilter: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Add Guest")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            //search
            Button {
                //action
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchFilter()
}
