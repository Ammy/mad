//
//  ContentView.swift
//  LostPhoneMattF
//
//  Created by Matt Frank Futchko on 8/24/21.
//

import SwiftUI
class Lost{
    var email:String = "futchko.matt@gmail.com"
    var name:String = "Matthew Futchko"
    
}
var user = Lost()

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
struct ContentView: View {
@State private var showDetails = false
    var body: some View {
        VStack(alignment: .center) {
            Button("If you found this phone please tap me!")
            {
                showDetails.toggle()
                
            }
            if showDetails {
                
                Text("My name is "+user.name)
                    .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: /*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .padding(5)
                Text("My email is "+user.email)
                    .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: /*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
}
}
}
}
}
