//
//  UserView.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import SwiftUI

struct UserView: View {
    
    
    @ObservedObject var userViewModel : UserViewModel

    var body: some View {
        
        Form {
            Section ("Data"){
                if let user = userViewModel.user{
                    formLabel(title: "Name", text: user.name)
                    formLabel(title: "Username", text:user.username )
                    formLabel(title: "Phone", text: user.phone )
                    formLabel(title: "Mail", text: user.email)
                    formLabel(title: "Web", text: user.website)
                    
                }else{
                    Text("Data is loading")
                }
            }
        }
    }
    
    func formLabel(title: String, text: String) -> some View {
        HStack {
            Text(title).opacity(0.8)
            Spacer()
            Text(text)
        }
    }
}

#Preview {
    UserView(userViewModel: UserViewModel(repository: MockRepository()))
}
