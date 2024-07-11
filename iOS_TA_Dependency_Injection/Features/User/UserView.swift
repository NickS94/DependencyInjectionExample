//
//  UserView.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import SwiftUI

struct UserView: View {
    
    var body: some View {
        Form {
            formLabel(title: "Name", text: MockData.user.name)
            formLabel(title: "Username", text: MockData.user.username)
            formLabel(title: "Phone", text: MockData.user.phone)
            formLabel(title: "Mail", text: MockData.user.email)
            formLabel(title: "Web", text: MockData.user.website)
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
    UserView()
}
