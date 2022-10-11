//
//  StoryView.swift
//  Word Play
//
//  Created by Quinn Kozak on 10/5/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    func writeStory() -> String {
    return "Today a \(words.job01) named \(words.noun01) came to our school to talk to us about her job. She said the most important skill you need to know to do her job is to be able to \(words.verb01) around (a) \(words.adj01) \(words.noun02). She said it was easy for her to learn her job because she loved to \(words.verb02) when she was my age--and that helps a lot! If you're considering her profession, I hope you can be near (a) \(words.adj02) \(words.noun03). That's very important! If you get too distracted in that situation you won't be able to \(words.verb03) next to (a) \(words.noun04)!"
    }
    var body: some View {
        Text(writeStory())
    }
    
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
