//
//  DynamicLiveActivity.swift
//  Dynamic
//
//  Created by André  Lucas on 25/09/23.
//

import ActivityKit
import WidgetKit
import SwiftUI


struct DynamicLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: DynamicEntity.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                
                DynamicIslandExpandedRegion(.leading) {
                    HStack{
                        VStack{
                            Image("remo")
                                 .resizable()
                                 .frame(width: 40,height: 40)
                            Text("Remo")
                                .fontWeight(.bold)
                        }
                        Spacer()
                        Text("2")
                    }
                }
                DynamicIslandExpandedRegion(.trailing) {
                    HStack{
                        Text("1")
                        Spacer()
                        VStack{
                            Image("paysandu")
                                 .resizable()
                                 .frame(width: 40,height: 40)
                            Text("Paysandu")
                                .fontWeight(.bold)
                        }
                    }
                }
                DynamicIslandExpandedRegion(.bottom) {
                    HStack{
                        Image(systemName: "lanyardcard.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "lanyardcard.fill")
                            .foregroundColor(.yellow)
                        Capsule()
                            .frame(width: 70,height: 30)
                            .overlay{
                                Text("45 min")
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                            }
                            .padding()
                        Image(systemName: "lanyardcard.fill")
                            .foregroundColor(.red)
                        Image(systemName: "lanyardcard.fill")
                            .foregroundColor(.yellow)
                    }

                }
                DynamicIslandExpandedRegion(.center) {
                    Image(systemName: "soccerball")
                        .font(.title)
                        .padding(.bottom)
                    // more content
                }
            } compactLeading: {
                HStack{
                    Image("remo")
                         .resizable()
                         .frame(width: 15,height: 15)
                    Text("2")
                }
            } compactTrailing: {
                HStack{
                    Text("1")
                    Image("paysandu")
                         .resizable()
                         .frame(width: 15,height: 15)
                }

            } minimal: {
                Text("Min")
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

struct DynamicLiveActivity_Previews: PreviewProvider {
    static let attributes = DynamicEntity(name: "Me")
    static let contentState = DynamicEntity.ContentState(value: 3)

    static var previews: some View {
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.compact))
            .previewDisplayName("Island Compact")
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.expanded))
            .previewDisplayName("Island Expanded")
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.minimal))
            .previewDisplayName("Minimal")
        attributes
            .previewContext(contentState, viewKind: .content)
            .previewDisplayName("Notification")
    }
}
