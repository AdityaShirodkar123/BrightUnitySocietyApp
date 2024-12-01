//
//  ClosureView.swift
//  BrightUnitySociety
//
//  Created by Aditya Shirodkar on 4/6/23.
//

import SwiftUI

struct ClosureView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("For Questions and Donations, feel free to contact us at:")
                .font(.title2)
                .foregroundColor(Color.black)
                .navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .multilineTextAlignment(.leading)
                .navigationBarHidden(true).padding(.bottom, 20).padding(.top, 50)
            
            Text("Email: support@brightunitysociety.org")
                .font(.title2).multilineTextAlignment(.leading).padding(.bottom, 10).foregroundColor(Color.black)
            
            Text("Phone: (848) 215 - 3723")
                .font(.title2).multilineTextAlignment(.leading).padding(.bottom, 50)
        }.frame(width: UIScreen.main.bounds.size.width-32)
    }
}

struct ClosureView_Previews: PreviewProvider {
    static var previews: some View {
        ClosureView()
    }
}
