//
//  ProfileView.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 6/4/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //Profile login view
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                    
                    Text("Log in to start planning your next trip")
                }
                
                
              
                
                Button {
                    
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                HStack {
                    Text("Don't have an account?")
                    
                    Text(" Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            
            //option selections
            VStack(spacing: 24) {
                OptionRowView(imageName: "gear", title: "Settings")
                OptionRowView(imageName: "gear", title: "Accessability")
                OptionRowView(imageName: "questionmark.circle", title: "Help Center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
