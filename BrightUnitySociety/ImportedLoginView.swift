//
//  ContentView.swift
//  SimpleLoginScreen
//
//  Created by Krystal Zhang on 6/16/2022
//

import SwiftUI

struct ImportedLoginView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    //initialize the showing login screen as false
    //because we need to build the login screen UI
    @State private var showingLoginScreen = false
    @State private var registerNeeded = false
    
    //design the UI
    
    var body: some View {
        NavigationView{
            
            ZStack{
                
                VStack{
                    
                    Text("Driver Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    
                    TextField("Enter Your Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.blue.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    
                    SecureField("Enter Your Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.blue.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    //give user a button for login
                    //we want to give it a float-shaped effect
                    //since the default button doesn't fit the UI
                    Button("Login"){
                        //Authenticate user
                        authenticateUser(username: username, password: password)
    
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    Text("Want to apply as a Bus Driver?")
                        .font(.title3)
                        .padding()
                    
                    Button("Apply"){
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
                    NavigationLink(destination: LoggedInScreen(), isActive: $showingLoginScreen){
                        //make it invisible here
                        //so it doesnt crash the program
                        EmptyView()
                    }
                    
                    NavigationLink(destination: LoginView(), isActive: $registerNeeded){
                        //make it invisible here
                        //so it doesnt crash the program
                        EmptyView()
                    }
                    
                }
                
            }
            .navigationBarHidden(true)

        }.navigationViewStyle(StackNavigationViewStyle())
    
    }
    
    
    //create the Authenticate user function
    //use lowercased() to ignore cases(prevent case sensitive)
    func authenticateUser(username: String, password: String){
        //username check
        
        var userNameDict : [String: String] = ["adityashirodkar": "shi4399", "kanaadvaidya" : "vai4399", "sohumwalavalkar" : "wal4399"]
        
        for _ in 0...userNameDict.count {
            if userNameDict[username.lowercased()] != nil {
                //correct+authenticated username, set wrongUsername to 0
                wrongUsername = 0
                //password check
                if userNameDict[username.lowercased()] == password.lowercased()  {
                    wrongPassword = 0
                    //both username and password are correct and authenticated
                    //show user the login screen
                    showingLoginScreen = true
                }
                else{
                    //wrong password
                    //set wrongPassword = 2 to show red-warning in text field
                    wrongPassword = 2
                }
            }
            else{
                //wrong username
                wrongUsername = 2
            }
        }

    }
    
    //to make this authentication function work
    //we need to insert/call this inside the Button
}

struct ImportedLoginView_Previews: PreviewProvider {
    static var previews: some View {
        ImportedLoginView()
    }
}
