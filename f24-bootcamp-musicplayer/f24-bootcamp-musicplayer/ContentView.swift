//
//  ContentView.swift
//  f24-bootcamp -musicplayer
//
//  Created by Yahan Yang on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("Color 2"),Color("Color")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
              
                    
                    Text("Liked Songs")
                        .italic()
                        .font(.footnote)
                        .foregroundColor(.black)
                        .padding(.leading,90)
                        .padding(.trailing,90)
                    
                    Image(systemName: "ellipsis")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    }
                Spacer()
                Image("Cover")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .frame(width: 340, height:358)
                    .clipped()
                    .opacity(0.9)
                Spacer()
                HStack{
                    VStack{
                        Text("Sea Side")
                            .fontWeight(.semibold)
                            .font(.title)
                            .frame(width: 329, alignment: .leadingFirstTextBaseline)
                        Text("Gello")
                            .frame(width: 329, alignment: .leadingFirstTextBaseline)
                    }
                    Image(systemName:"heart")
                            .frame(width: 8, alignment: .trailing)
                            .font(.system(size:26))
                }
                
                @State var sliderValue: Float = 0
                Slider(value: $sliderValue, in: 0...100)
                {
                    Text("Slider")
                } minimumValueLabel:{
                    Text("0:00")
                        .padding(.leading,22)
                } maximumValueLabel: {
                    Text("3:00")
                        .padding(.trailing,22)
                }
                .padding(10)
                
                HStack{
                    
                    Image(systemName:"shuffle")
                        .font(.system(size:28))
                        .foregroundColor(Color("Select"))
                        .padding(25)
                    
                    Image(systemName: "backward.end")
                        .font(.system(size:40))
                    
                    Image(systemName:"pause.circle")
                        .font(.system(size:70))
                        .padding(20)
                      
                    Image(systemName: "forward.end")
                        .font(.system(size: 40))
                    
                    Image(systemName: "repeat")
                        .font(.system(size:28))
                        .foregroundColor(Color("Select"))
                        .padding(25)
                    
                }
                HStack{
                    Image(systemName: "hifispeaker.2")
                        .font(.system(size:20))
                        .padding(.leading,34)
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 20))
                        .padding(20)
                        
                    
                    Image(systemName: "list.triangle")
                        .font(.system(size: 20))
                        .padding(.trailing, 30)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


