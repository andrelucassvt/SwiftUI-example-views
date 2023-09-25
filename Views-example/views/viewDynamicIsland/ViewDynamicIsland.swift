//
//  ViewDynamicIsland.swift
//  Views-example
//
//  Created by André  Lucas on 25/09/23.
//
import ActivityKit
import SwiftUI

@available(iOS 16.1, *)
struct ViewDynamicIsland: View {
    var body: some View {
        VStack {
            Button {
                startSoccerLive()
            } label: {
                HStack{
                    Text("Start")
                        .font(.title)
                    Image(systemName: "soccerball")
                        .font(.title)
                }
            }
        }
    }
    
    
    
    func startSoccerLive() {
        let SoccerEntity = DynamicEntity(name: "aaaa")
        let initialContentState = DynamicEntity.ContentState(value: 1)

        do {
            let activity = try Activity<DynamicEntity>.request(
                attributes: SoccerEntity,
                contentState: initialContentState,
                pushType: nil)
            print("Requested a Live Activity \(activity.id)")
        } catch (let error) {
            print("Error requesting Live Activity \(error.localizedDescription)")
        }
    }

    
}

@available(iOS 16.1, *)
struct ViewDynamicIsland_Previews: PreviewProvider {
    static var previews: some View {
        ViewDynamicIsland()
    }
}
