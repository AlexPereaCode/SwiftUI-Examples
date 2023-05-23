import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Basics language")) {
                    NavigationLink("Int") {
                        IntExamples()
                    }
                }
            }
            .navigationTitle("Swift Examples")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
