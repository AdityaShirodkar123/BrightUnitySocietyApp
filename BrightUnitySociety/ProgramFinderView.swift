//
//  ProgramFinderView.swift
//  BrightUnitySociety
//
//  Created by Aditya Shirodkar on 4/4/23.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct ProgramFinderView: View {
    
    let annotations = [
            City(name: "Edison", coordinate: CLLocationCoordinate2D(latitude: 40.577658748982735, longitude: -74.35037273104851)),
            ]
    
    @State private var registerNeeded = false
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.577658748982735, longitude: -74.35037273104851), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    @ViewBuilder
    private var header: some View {
        Text("Find Program and Register")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .navigationBarTitle("").navigationBarTitleDisplayMode(.inline)
        
    }
    
    @ViewBuilder
    private var image: some View {
        
        VStack(alignment: .center) {
            
            Map(coordinateRegion: $region, annotationItems: annotations)
                {
                    MapPin(coordinate: $0.coordinate)
                }.frame(width: 400, height: 300)
            
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
        }
        
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                header.navigationBarTitle("")
                    .frame(width: UIScreen.main.bounds.size.width, height: 300).background(Color.black)
                
                image.navigationBarTitle("")
                    .frame(width: UIScreen.main.bounds.size.width-32)
                
                ClosureView().navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true).frame(width: UIScreen.main.bounds.size.width).background(Color(UIColor.systemGray6))
                
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct ProgramFinderView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramFinderView()
    }
}
