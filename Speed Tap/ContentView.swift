//
//  ContentView.swift
//  Speed Tap
//
//  Created by Chinmay Chaudhari on 13/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var a:Double = 422.0
    func Check(ok:Double){
        if(ok<=20||844-ok<=20){
            a=422
        }
    }
    var body: some View {
        VStack {
            Button(action: {
                a = a + 20
                print("ok")
                Check(ok: a)
                
            }) {
                Color.green
                        .frame(maxWidth: .infinity, maxHeight: a)
                        .overlay(Text("ok")
                                    .padding(10)
                                    .foregroundColor(.white))
            }
            
            Button(action: {
                a=a-20
                print("ok")
                Check(ok: a)
            }) {
                Color.red
                        .frame(maxWidth: .infinity, maxHeight: 844-a)
                        .overlay(Text("ok")
                                    .padding(10)
                                    .foregroundColor(.white))
            }
        }.ignoresSafeArea()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
