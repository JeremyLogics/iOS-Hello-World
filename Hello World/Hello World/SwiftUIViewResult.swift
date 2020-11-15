//
//  SwiftUIViewResult.swift
//  Hello World
//
//  Created by Jeremy Lapane on 11/8/20.
//

import SwiftUI
struct SwiftUIViewResult: View {
    @Binding var FOLLOWvar:Int
    var FOLLOWarray = [
        //an array of text to display after INITbutton is tapped
        /*0*/       "Remarkable!",
        /*1*/       "How could you?!",
        /*2*/       "EZ",
        /*3*/       "Do you feel like a winner?",
        /*4*/       "Even a squirrel finds a nut...",
        /*5*/       "We mistook you for a thumb, that's our mistake.",
        /*6*/       "That didn't feel like a finger...!",
        /*7*/       "Analyzing...",
        /*8*/       "Test Response, Please Ignore",
        /*9*/       "Perfect Tap!",
        /*10*/      "We Expected You to Tap it Like That",
        /*11*/      "So, What do you think of my app?",
        /*12*/      "WARNING",
        /*13*/      "WARNING WARNING WARNING",
        /*14*/      "Bonk",
        /*15*/      "Womped 'em!",
        /*16*/      "Don't stop believing... in yourself.",
        /*17*/      //Image(systemName:"cat"),
    ]
    var body: some View {
        VStack{
            Text(FOLLOWarray[FOLLOWvar])
                .foregroundColor(.white)
                .font(.title) .font(.system(size: 30, weight: .semibold))
                .padding(20)
                .background(Color.red)
                .cornerRadius(20, corners: [.topLeft, .bottomRight])
        }
    }
}
struct SwiftUIViewResult_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewResult(FOLLOWvar: Binding.constant(0))
    }
}
/*/********************************************************************************************/
 //this block allows custom cornerRadius definition for selecting individual corners
 struct RoundedCorner: Shape {
 
 var radius: CGFloat = .infinity
 var corners: UIRectCorner = .allCorners
 
 func path(in rect: CGRect) -> Path {
 let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
 return Path(path.cgPath)
 }
 }
 
 
 
 extension View {
 func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
 clipShape( RoundedCorner(radius: radius, corners: corners) )
 }
 }
 /********************************************************************************************/*/
