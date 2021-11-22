import SwiftUI

struct DataInputPage: View {
    
    // var to present the Onboarding View
    @AppStorage("onboarding") var presentSheetView = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                DataInput()   // Struct into "DataInputModel" page
                    .ignoresSafeArea()
                
                Spacer()
                // To make the onboarding View appear (as a sheet view)
                .onAppear(perform: {
                    presentSheetView = true
                })
                .sheet(isPresented: $presentSheetView,content: {Onboarding(isPresented: $presentSheetView)})
            }
            .navigationTitle(Text("Getting Started"))
        }
    }
}
    
    
    struct DataInputPage_Previews: PreviewProvider {
        static var previews: some View {
            DataInputPage()
        }
    }
