//
//  RegistrationView.swift
//  BrightUnitySociety
//
//  Created by Aditya Shirodkar on 4/3/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var parentName = ""
    @State private var phone = ""
    @State private var partName = ""
    @State private var partAge = ""
    @State private var prgTitle = ""
    
    @Environment(\.dismiss) private var dismiss
    
    @ViewBuilder
    private var header: some View {
        Text("Registration")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .navigationBarTitle("").navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder
    private var image: some View {
        VStack(alignment: .center) {
            Text("You Could Apply to an Event from This Google Form or fill out the form in the app!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Link("Google Form", destination: URL(string: "https://docs.google.com/forms/d/e/1FAIpQLScVlrl16Vq0i5GZMnnhgYIQiQgCbG5aVYsDkyp3SIEonknAQw/viewform")!)
                .font(.title)
            
            TextField("Email", text: $email)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(10).padding(.top, 30)
            
            TextField("Parent Name (First/Last)", text: $parentName)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(10)
            
            TextField("Phone #", text: $phone)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(10)
            
            TextField("Participant Name", text: $partName)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(10)
            
            TextField("Participant Age", text: $partAge)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(10)
            
            TextField("Program Title", text: $partAge)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(10)
            
            Button("Register"){
                //Authenticate user
                dismiss()
                
            }
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
        }
        
        
    }
    
    func authenticateReg(email: String, parentName: String, phone: String, partName: String, partAge: String, prgTitle: String){
        
    }
    
    
    var body: some View {
        ScrollView {
            header.navigationBarTitle("")
                .frame(width: UIScreen.main.bounds.size.width, height: 300).background(Color.black)
            
            image.navigationBarTitle("")
                .frame(width: UIScreen.main.bounds.size.width-32)
            ClosureView().navigationBarTitle("")
                .frame(width: UIScreen.main.bounds.size.width).background(Color(UIColor.systemGray6))
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
