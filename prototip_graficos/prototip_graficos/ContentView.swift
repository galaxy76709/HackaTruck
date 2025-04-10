import SwiftUI
import Charts

struct GraficoView: View {
    @StateObject private var info = information()
    @State private var dataSelecionada = Date()
    
    var body: some View {
        VStack {
            DatePicker("Escolha uma data", selection: $dataSelecionada, displayedComponents: [.date])
                .datePickerStyle(.compact)
                .padding()

            Text("Histórico de Batimentos - \(formatarData(dataSelecionada))")
                .font(.title2)
                .fontWeight(.bold)
            
            if filtradosPorDataSelecionada.isEmpty {
                Text("Sem dados disponíveis para essa data.")
                    .foregroundColor(.gray)
                    .padding()
            } else {
                Chart(filtradosPorDataSelecionada) { batimento in
                    if let bpm = Double(batimento.bpm) {
                        LineMark(
                            x: .value("Hora", batimento.hora),
                            y: .value("BPM", bpm)
                        )
                        PointMark(
                            x: .value("Hora", batimento.hora),
                            y: .value("BPM", bpm)
                        )
                        .foregroundStyle(.blue)
                    }
                }
                .frame(height: 200)
                .padding()
            }
        }
        .padding()
        .onAppear {
            info.fetch()
        }
    }
    
    func formatarData(_ data: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: data)
    }

    // Verifica se há batimentos exatamente nas horas cheias (minuto == "00")
    func existemBatimentosPorHoraCheia(na data: String) -> Bool {
        return info.arraydigi.contains { batimento in
            batimento.data == data && horaTemMinuto(batimento.hora, igualA: 0)
        }
    }
    
    // Função genérica para comparar minuto de uma hora com um valor (ex: 0 ou múltiplos)
    func horaTemMinuto(_ hora: String, igualA alvo: Int) -> Bool {
        let componentes = hora.split(separator: ":")
        if componentes.count >= 2, let minuto = Int(componentes[1]) {
            return minuto == alvo
        }
        return false
    }

    func horaMinutoMultiploDe5(_ hora: String) -> Bool {
        let componentes = hora.split(separator: ":")
        if componentes.count >= 2, let minuto = Int(componentes[1]) {
            return minuto % 5 == 0
        }
        return false
    }

    // Filtro dinâmico conforme os dados disponíveis
    var filtradosPorDataSelecionada: [Batimentos] {
        let dataFiltrada = formatarData(dataSelecionada)

        if existemBatimentosPorHoraCheia(na: dataFiltrada) {
            return info.arraydigi.filter { batimento in
                batimento.data == dataFiltrada && horaTemMinuto(batimento.hora, igualA: 0)
            }
        } else {
            return info.arraydigi.filter { batimento in
                batimento.data == dataFiltrada && horaMinutoMultiploDe5(batimento.hora)
            }
        }
    }
}
// Preview
#Preview {
    GraficoView()
}
