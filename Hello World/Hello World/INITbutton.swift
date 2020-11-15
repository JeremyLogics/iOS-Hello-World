//
//  INITbutton.swift
//  Hello World
//
//  Created by Jeremy Lapane on 11/9/20.
//

import SwiftUI
struct INITbutton: View {
    //@State var INITcount: Int
    var INITarray = [
        //an array of text to use for the first button
        /*0*/       "Hit It",
        /*1*/       "Do the Touch",
        /*2*/       "Tap Here",
        /*3*/       "Select for More",
        /*4*/       "Will You Tap?",
        /*5*/       "Must Tap to Continue",
        /*6*/       "Tap",
        /*7*/       "Do Not Tap",
        /*8*/       "Press",
        /*9*/       "Press This to Move Along",
        /*10*/      "Tap Here for Good Luck",
        /*11*/      "You Know What To Do",
        /*12*/      "Historically, Tappers Tapped Here",
        /*13*/      "Select",
        /*14*/      "Womp Me",
        /*15*/      "Select Me",
        /*16*/      "This is the Only Button",
                        
                    ]
    @Binding var INITvar: Int
    
    var body: some View {
        
                HStack {
            Image(systemName: "flame.fill")
            
            Text(INITarray[INITvar])
            
        }
        .foregroundColor(.white)
        //.font(.title)
        .font(.system(size: 30, weight: .semibold))
        .padding(20)
        .background(Color.red)
        .cornerRadius(20, corners: [.topLeft, .bottomRight])
    }
}

struct INITbutton_Previews: PreviewProvider {
    static var previews: some View {
        INITbutton(INITvar: Binding.constant(0))
    }
}
