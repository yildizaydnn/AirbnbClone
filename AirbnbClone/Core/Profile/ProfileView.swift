//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Yıldız Aydın on 10.01.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
     
        //profile login view
        VStack(alignment: .leading , spacing: 32){
           
            VStack(alignment: .leading , spacing: 32) {
                Text("profile")
                    .font(.largeTitle)
                .fontWeight(.semibold)
                Text("Log in to start planning your next trip")
            }
            
            Button{
                print("Log in")
                    
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360 , height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            HStack{
                Text("Don't have an account?")
                
                Text("Sign Up")
                    .fontWeight(.semibold)
                    .underline()
            }
            .font(.caption)
            }
        
        VStack(spacing: 24){
            
        }

    }

    }


#Preview {
    ProfileView()
}
