//
//  ContentView.swift
//  MyDoctor
//
//  Created by Turma01-3 on 08/10/24.
//

import SwiftUI

struct NavBar: View {
    @State var remedios: [Remedio] = []
    var body: some View {
        
        TabView {
            
            Alarmes()
            
                .tabItem {
                    Text("Rosa").bold()
                    Image(systemName: "clock")
                }
            
            
            NovoRemedioView()
            
                .tabItem {
                    Text("Novo Tratemento").bold()
                    Image(systemName: "plus")
                }
            
            
            Estoque()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Lista")
                }
            
        }.onAppear{
           remedios = carregarRemedios()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack(alignment:.top){
            VStack{
                Spacer().frame(maxHeight: 130)
                NavBar()
            }
            Image("head").resizable().scaledToFit()
            
            
        }.ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
