//
//  LoginView.swift
//  BrightUnitySociety
//
//  Created by Aditya Shirodkar on 4/6/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var registerNeeded = false
    
    @ViewBuilder
    private var header: some View {
        Text("Apply")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .navigationBarTitle("").navigationBarTitleDisplayMode(.inline)
        
    }
    
    @ViewBuilder
    private var image: some View {
        VStack(alignment: .leading) {
            Text("For more information about how to apply please contact us at: ").font(.title2).multilineTextAlignment(.leading).padding(.bottom, 10).foregroundColor(Color.black).padding(.top, 30)
            
            Text("Email: support@brightunitysociety.org")
                .font(.title2).multilineTextAlignment(.leading).padding(.bottom, 10).foregroundColor(Color.black)
            
            Text("Phone: (848) 215 - 3723")
                .font(.title2).multilineTextAlignment(.leading).padding(.bottom, 50)
        }
        
        /*VStack(alignment: .center) {
            //Event Creation
            //Event View Table
            Button("Register"){
                //Authenticate user
                registerNeeded = true
                
            }
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            //provide a navigation link can send user to user page
            //if they successfully login
            //so we can program the login page USING THIS LINK
            NavigationLink(destination: RegistrationView(), isActive: $registerNeeded){
                //make it invisible here
                //so it doesnt crash the program
                EmptyView()
            }
        }*/
        
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                header.navigationBarTitle("")
                    .frame(width: UIScreen.main.bounds.size.width, height: 300).background(Color.black)
                
                image.navigationBarTitle("")
                    .frame(width: UIScreen.main.bounds.size.width-32)
                
                /*ClosureView().navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true).frame(width: UIScreen.main.bounds.size.width).background(Color(UIColor.systemGray6))*/
                
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
