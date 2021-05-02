//
//  ContentView.swift
//  Share
//
//  Created by Luciano Nicolini on 12/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//ShareViewCode
struct ShareView: View {
    @State private var isShareSheet = false
   
    var body: some View {
        Button(action: shareButton) {
            Image(systemName:"square.and.arrow.up")
                .font(.title3)
        }
    }
    
    func shareButton() {
        isShareSheet.toggle()
        let url = URL(string:"https://www.apple.com/la/")
        let av = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
        
        
    }
    
}


struct DetailView: View {
    var body: some View {
        ZStack {
            Color(.orange)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                ProducView()
                ShareView()
    
                Spacer()
                CardView()
            }

            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ProducView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { _ in
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }
        }.padding()
        .frame(width: UIScreen.main.bounds.width)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CardView: View {
    @State private var quantity = 1
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Placeholder")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("\(quantity) numero")
                    .foregroundColor(.secondary)
            }
            .padding(.top)
            .frame(maxWidth: .infinity ,alignment: .leading)
            
            HStack {
                Stepper("\(quantity)") {
                    quantity += 1
                } onDecrement: {
                    quantity -= 1
                }
                .frame(width:120)
                
                Spacer()
                Text("$\(quantity).00")
                    .font(.largeTitle)
                    .bold()
                        
                
            }
            .padding(.vertical)
            
            Text("Descripcion del Producto")
                .font(.title)
                .frame(maxWidth: .infinity,alignment: .leading)
            
            Text("Las ideas que comunica un texto están contenidas en lo que se suele denominar «macroproposiciones», unidades estructurales de nivel superior o global, que otorgan coherencia al texto constituyendo su hilo ")
                .fixedSize(horizontal: false, vertical: true)
                .padding(.vertical)
            
            HStack {
                Image(systemName: "heart")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.trailing)
                Button(action: {}, label: {
                    Spacer()
                        Text("add to cart")
                        .foregroundColor(.white)
                        .bold()
                        
                    Spacer()
                })
                .padding()
                .background(Color(.orange))
                .cornerRadius(30)
            }
            .padding(.bottom)

        }//FondoColor
    .padding()
    .background(Color(.systemBackground))
    .cornerRadius(30)
    }
}

