//
//  CheckMainView.swift
//  CheckPlay
//
//  Created by sole on 2023/02/20.
//

import SwiftUI
import MapKit

struct CheckMainView: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37, longitude: 128), latitudinalMeters: 500, longitudinalMeters: 500)
    @State var isActiveMyPage: Bool = false
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
            NavigationLink(destination: MyPageView(), isActive: $isActiveMyPage) {}
            
                .navigationTitle("2023년 2월 20일") // 현재 날짜
                .toolbar {
                    ToolbarItem {
                        Button(action: {
                            isActiveMyPage = true
                        }) {
                            Image(systemName: "person.circle.fill")
                                .font(.title3)
                        }
                    } // - ToolbarItem
                } // - toolbar
        } // - NavigationView
        
        
    }
}

struct CheckMainView_Previews: PreviewProvider {
    static var previews: some View {
        CheckMainView()
    }
}
