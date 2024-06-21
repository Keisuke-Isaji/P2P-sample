import SwiftUI
import MultipeerConnectivity

struct ConnectionView: View {
    @ObservedObject var multipeerSession = MultipeerSession()

    var body: some View {
        VStack {
            Text("P2P Communication")
            Button(action: {
                self.sendData()
            }) {
                Text("Send Data")
            }
        }
    }

    func sendData() {
        let data = "Hello, World!".data(using: .utf8)!
        try? multipeerSession.session.send(data, toPeers: multipeerSession.session.connectedPeers, with: .reliable)
    }
}

#Preview {
    ConnectionView()
}
