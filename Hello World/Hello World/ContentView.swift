//  ContentView.swift
//  Hello World
//  Created by Jeremy Lapane on 11/5/20.

import SwiftUI
struct ContentView: View {
    @State private var FOLLOWvariant: Int = 0
    @State private var BINDvarINIT: Int = 0
    @State private var OPACITY: Double = 0.0
    @State var BUTTONopacity: Double = 1.0
    @State var SCALEeffect: CGFloat = 1.0

    var body: some View {
        VStack{
            Spacer()
            Spacer()
            Button(action: { //first button
                self.FOLLOWvariant = Int.random(in: 0..<17)
                self.BINDvarINIT = Int.random(in: 0..<17)
                self.OPACITY = 1.0
                self.BUTTONopacity = 0.0
                self.SCALEeffect = 0.3
                
                withAnimation(.easeInOut(duration: 3)) {
                    self.OPACITY = 0.0
                    //self.BUTTONopacity = 1.0
                }
                
                withAnimation(.easeInOut(duration: 2)) {
                    self.BUTTONopacity = 1.0
                }
                
                withAnimation(.easeOut(duration: 2)) {
                    self.SCALEeffect = 1.0
                    //self.SCALEeffect = 2.0
                }
                
                print("BINDvarINIT: \(BINDvarINIT)")
                print("FOLLOWvariant: \(FOLLOWvariant)")
                
            }) {
                INITbutton(INITvar: $BINDvarINIT)
                .animation(.easeInOut(duration: 0.25))
                .opacity(BUTTONopacity)
                .scaleEffect(SCALEeffect)
            }
            Spacer()
            Spacer()
            SwiftUIViewResult(FOLLOWvar: $FOLLOWvariant)
                .animation(.easeInOut(duration: 0.25))
                .opacity(OPACITY)
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
/********************************************************************************************/
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
/********************************************************************************************/
