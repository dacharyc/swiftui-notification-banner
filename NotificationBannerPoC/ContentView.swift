//
//  ContentView.swift
//  NotificationBannerPoC
//
//  Created by Dachary Carey on 9/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var showBanner:Bool = false
    @State var bannerData: BannerModifier.BannerData = BannerModifier.BannerData(title: "Default Title", detail: "Default text", type: .Info)
    
    var body: some View {
        VStack {
            Text("Hello Trailing Closure")
            Button(action: {
                self.bannerData.type = .Info
                self.showBanner = true
                self.bannerData.title = "Default title"
                self.bannerData.detail = "This is the detail text"
            }) {
                Text("[ Info Banner ]")
            }
            Button(action: {
                self.bannerData.type = .Success
                self.showBanner = true
                self.bannerData.title = "Success!"
                self.bannerData.detail = "You did an awesome thing"
            }) {
                Text("[ Success Banner ]")
            }
            Button(action: {
                self.bannerData.type = .Warning
                self.showBanner = true
                self.bannerData.title = "Warning"
                self.bannerData.detail = "Something bad might happen"
            }) {
                Text("[ Warning Banner ]")
            }
            Button(action: {
                self.bannerData.type = .Error
                self.showBanner = true
                self.bannerData.title = "Error"
                self.bannerData.detail = "Some failure occurred"
            }) {
                Text("[ Error Banner ]")
            }
        }
        .banner(data: $bannerData, show: $showBanner)
        .padding()
        .frame(width: 400, height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
