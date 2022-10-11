//
//  ContentView.swift
//  Word Play
//
//  Created by Quinn Kozak on 10/5/22.
//
// mememememememe
import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words")
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun01)
                    CustomTextField(placeholder: "noun", variable: $words.noun02)
                    CustomTextField(placeholder: "noun", variable: $words.noun03)
                    CustomTextField(placeholder: "noun", variable: $words.noun04)
                }
                HStack {
                    CustomTextField(placeholder: "Adjective", variable: $words.adj01)
                    CustomTextField(placeholder: "Adjective", variable: $words.adj02)
                }
                HStack {
                    CustomTextField(placeholder: "Verb", variable: $words.verb01)
                    CustomTextField(placeholder: "Verb", variable: $words.verb02)
                }
                HStack {
                    CustomTextField(placeholder: "Job", variable: $words.job01)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}
struct Words {
    var noun01 = ""
    var noun02 = ""
    var noun03 = ""
    var noun04 = ""
    
    var adj01 = ""
    var adj02 = ""
    
    var verb01 = ""
    var verb02 = ""
    var verb03 = ""
    
    var job01 = ""
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
