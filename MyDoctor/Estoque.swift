import SwiftUI

struct Gaveta: View {
    @State var remedio: Remedio
    var body: some View {
        HStack{
            Text("Remedio")
            Spacer()
            Text("Quantidade: \(remedio.estoque.formatted()) \(remedio.unidade)")
        }.padding(20).background(.gray)
    }
}


struct Estoque: View {
    @State var remedios:[Remedio] = carregarRemedios()
    var body: some View {
        ScrollView{
            ForEach(remedios){ remedio in
                Gaveta(remedio: remedio)
            }
        }
    }
}

#Preview {
    Estoque()
}
