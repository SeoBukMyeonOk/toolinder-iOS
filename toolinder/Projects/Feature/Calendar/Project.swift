//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 송영모 on 2023/04/24.
//

import ProjectDescription
import DependencyPlugin

let targets: [Target] = [
    .init(
        name: "FeatureCalendar",
        platform: .iOS,
        product: .framework,
        bundleId: "com.feature.calendar",
        infoPlist: .default,
        sources: ["Sources/**"],
        dependencies: [
            .target(name: "FeatureCalendarInterface"),
            .target(name: "FeatureCalendarTesting"),
            .target(name: "FeatureCalendarTests"),
            .project(target: "Core", path: .relativeToRoot("Projects/Core"))
        ]
    ),
    .init(
        name: "FeatureCalendarInterface",
        platform: .iOS,
        product: .staticFramework,
        bundleId: "com.feature.calendar.interface",
        infoPlist: .default,
        sources: ["Interface/Sources/**"],
        dependencies: [
            
        ]
    ),
    .init(
        name: "FeatureCalendarTesting",
        platform: .iOS,
        product: .staticFramework,
        bundleId: "com.feature.calendar.testing",
        infoPlist: .default,
        sources: ["Testing/Sources/**"],
        dependencies: [
            
        ]
    ),
    .init(
        name: "FeatureCalendarTests",
        platform: .iOS,
        product: .staticFramework,
        bundleId: "com.feature.calendar.tests",
        infoPlist: .default,
        sources: ["Tests/Sources/**"],
        dependencies: [
            
        ]
    ),
]

let project: Project = .init(
    name: "FeatureCalendar",
    targets: targets
)
