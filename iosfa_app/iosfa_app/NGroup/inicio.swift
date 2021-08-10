//
//  inicio.swift
//  iosfa_app
//
//  Created by Luciano Nicolini on 12/06/2021.
//

import SwiftUI

struct inicio: View {
    var body: some View {
        Home()
            .edgesIgnoringSafeArea(.all)
            
    }
}

struct inicio_Previews: PreviewProvider {
    static var previews: some View {
        inicio()
    }
}

struct Home: View {
    var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    @State var selected : Travel = data[0]
    @State var show = false
    
    @Namespace var namespace
    @State var loadView = false
    
    var body: some View {
        ZStack {
            //gridView vista primera parte
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("Nuestros Destinos")
                        .font(.system(size: 35,weight: .bold,design: .rounded))
                        .foregroundColor(.black)
                    Spacer()
                    Button(action:{}) {
                        Image("Menu")
                            .renderingMode(.original)
                        
                    }
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding([.horizontal,.top])
               
                LazyVGrid(columns: columns,spacing: 25){
                    ForEach(data){ travel in
                      
                        VStack(alignment: .leading,spacing: 10) {
                         
                            Image(travel.image)
                                .resizable()
                                .frame(height:180)
                                .cornerRadius(15)
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        show.toggle()
                                        selected = travel
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                            loadView.toggle()
                                        }
                                    }
                                }
                                .matchedGeometryEffect(id: travel.id, in: namespace)
                         
                            Text(travel.title)
                                .font(.system(size: 18,weight: .medium,design: .rounded))
                            
                        }
                        
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
          
            //heroview vista segunda parte
            if show {
                VStack {
                   
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                        TabView {
                            ForEach(0 ..< 5) { _ in
                                Image(selected.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .matchedGeometryEffect(id: selected.id, in: namespace)
                                    
                                    
                                
                            }
                            .padding(.top)
                           
                        }
                        .frame(width:UIScreen.main.bounds.width)
                        .tabViewStyle(PageTabViewStyle())
                        
        
                        
                        //La X
                        if loadView {
                            HStack {
                                Button {
                                    loadView.toggle()
                                    withAnimation(.spring()) {
                                        show.toggle()
                                    }
                                } label: {
                                    Image(systemName: "xmark")
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.black.opacity(0.5))
                                        .clipShape(Circle())
                                }
                                Spacer()
                            }
                            .padding(.top,35)
                            .padding(.horizontal)
                        }
                        
                    }
                    
                   //detail.
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            HStack {
                                Text(selected.title)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.top)
                            .padding(.horizontal)
                           
                            //Descripcion
                            Text("Un texto es una composición de signos codificados en un sistema de escritura que forma una unidad de sentido. También es una composición de caracteres imprimibles generados por un algoritmo de cifrado que, aunque no tienen sentido para cualquier persona, sí puede ser descifrado por su destina")
                                .multilineTextAlignment(.leading)
                                .padding(.top)
                                .padding(.horizontal)
                            
                            HStack {
                                Text("reviews")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Spacer()
                            }
                            .padding(.top)
                            .padding(.horizontal)
                            
                            HStack(spacing: 15) {
                                ForEach(1...5,id: \.self) { i in
                                    Image("r\(i)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                        .offset(x: -CGFloat(i * 20))
                                }
                                Spacer(minLength: 0)
                                Button(action: {}) {
                                    Text("hola")
                                        .fontWeight(.bold)
                                }
                            }
                            .padding(.leading,20)
                            .padding(.top)
                            .padding(.horizontal)
                            
                            //...
                            
                        }
                    }
                    
                }
                .background(Color.white)
            }
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
        .statusBar(hidden: show ? true : false)
    }
}



struct Travel: Identifiable {
    var id : Int
    var image : String
    var title : String
}

var data = [
    Travel(id: 1, image: "p2", title: "Buenos Aires"),
    Travel(id: 2, image: "p3", title: "Mar del Plata"),
    
    Travel(id: 0, image: "p1", title: "Bariloche"),
    Travel(id: 3, image: "p4", title: "Sierras de Cordoba")
    
]


