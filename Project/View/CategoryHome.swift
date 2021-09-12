/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing featured landmarks above a list of landmarks grouped by category.
*/

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing:10) {
                    ScrollView(.vertical, showsIndicators: false, content: {
                      
                        
                        HStack {
                            Text("Nuestros Destinos")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                            Spacer()
                        }
                       
                        .padding(.horizontal)
                        .padding(.top,15)
                        .padding(.bottom,10)
                       
                        
                        VStack(spacing:0) {
                            //CARD CATEGORIA
                            ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                                CategoryRow(categoryName: key, items: modelData.categories[key]!)
                                    .padding(.vertical,20)
                            }
                            
                        }
                        Footer()
                            
                    })
                }
                //NavigationColor //NavigationLogo
                .navigationBarTitleDisplayMode(.inline)
                .navigationColor(background: UIColor.white)
                .toolbar {
                    ToolbarItem(placement: .principal){
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 30, alignment: .center)
                        }
                    }
                    
                }
            }
        }
    }
}


struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}

    
//NavigationColorExtencion
extension View {
    func navigationColor(background: UIColor) -> some View {
        return self
            .background(NavigationConfigurator(backgroundColor: background))
    }
}
