//
//  MosqueDetails.swift
//  KuwaitMosques
//
//  Created by Nada Alm on 5/7/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import SwiftUI

struct MosqueDetails: View {
    var mosque: Mosque
    
    var body: some View {
        ZStack{
            Image(mosque.name).resizable().scaledToFit()
         
            
            VStack{
                
                Text(mosque.name).font(.system(size: 50)).bold()
               
                MosqueEmamsPictures(mosque: mosque)
                
                List{
                    PrayerRow(time: "3:44 AM", prayer: "الفجر")
                    PrayerRow(time: "3:44 AM", prayer: "الفجر")
                     PrayerRow(time: "3:44 AM", prayer: "الفجر")
                     PrayerRow(time: "3:44 AM", prayer: "الفجر")
                     PrayerRow(time: "3:44 AM", prayer: "الفجر")
                     PrayerRow(time: "3:44 AM", prayer: "الفجر")
                   
                    
                
                
                }
              
                
            }//VStack
            
              
            
        }.edgesIgnoringSafeArea(.all)//ZStack
        
      
    }
}



struct MosqueEmamsPictures: View {
    var mosque: Mosque
    var body: some View {
        
        ScrollView(.horizontal){
        HStack(spacing: 40){
            
            ForEach(mosque.emam, id: \.self) { (emam:String) in Image(emam).resizable().scaledToFit().clipShape(Circle()).frame(width: 200).overlay(Circle().stroke(Color.white,lineWidth: 6))
        
             }
        }
    }
    }
        
}


struct PrayerRow: View {
    var time: String
    var prayer: String
    var body: some View {
        
        
        HStack{
            Text(time).font(.system(size: 25))
            Spacer()
            Text(prayer).font(.system(size: 25))
            }.padding(.vertical,20).padding(.horizontal,40)
    }
    
}

struct MosqueDetails_Previews: PreviewProvider {
    static var previews: some View {
        MosqueDetails(mosque: mosques[0]).environment(\.colorScheme,.dark)
    }
}
