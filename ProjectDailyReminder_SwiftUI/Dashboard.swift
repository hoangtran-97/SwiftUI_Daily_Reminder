//
//  Dashboard.swift
//  ProjectDailyReminder_SwiftUI
//
//  Created by Hoang Tran on 10/24/19.
//  Copyright © 2019 Hoang Tran. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    @State private var reminderData = [
        "Go home",
        "Do homework",
        "Do something"
    ]
    var body: some View {
        NavigationView{
            List{
                HStack{
                    ZStack{
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 80, height: 80)
                            .cornerRadius(10)
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    HStack{
                        VStack(alignment: .leading){
                            HStack{
                                Text("Reminder 0")
                                Text("-")
                                Text("Time")
                            }
                            .padding(5)
                            HStack(spacing: 20){
                                Text("M")
                                    .frame(width: 30, height: 30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 50)
                                            .stroke(Color.green, lineWidth: 5)
                                )
                                Text("T")
                                Text("W")
                                Text("T")
                                Text("F")
                                Text("S")
                                Text("S")
                                    .foregroundColor(.red)
                            }
                        }
                        
                    }
                    Spacer()
                }
                .padding(.trailing, 10)
                .background(Color.gray)
                .cornerRadius(10)
                
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
