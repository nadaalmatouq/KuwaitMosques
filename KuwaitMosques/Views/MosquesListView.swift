//
//  ContentView.swift
//  KuwaitMosques
//
//  Created by Nada Alm on 5/6/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import SwiftUI

struct MosquesListView: View {
    var body: some View {
        NavigationView{
            ZStack{
                
           
            List(mosques){ mosque in
                NavigationLink(destination: MosqueDetails(mosque: mosque)){
                    MosqueRow(mosque: mosque)}//list looping on all the mosques
                
                
            }.navigationBarTitle("مساجد الكويت")
            
            
            
        }//NavigationView
        
        
        }.accentColor(.white)
    }
}

struct MosqueRow: View {
    var mosque: Mosque
    var body: some View {
        HStack{
            
            
            Image(mosque.name).resizable().scaledToFit().clipShape(Circle()).frame(width: 100)
            
            VStack{
                Text(mosque.name).font(.largeTitle)
                Text(mosque.location)
                
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MosquesListView().environment(\.colorScheme,.dark)
    }
}
