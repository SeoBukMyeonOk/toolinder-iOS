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
        name: "FeatureChart",
        platform: .iOS,
        product: .framework,
        bundleId: "com.feature.chart",
        infoPlist: .default,
        sources: ["Sources/**"],
        dependencies: [
            .target(name: "FeatureChartInterface"),
            .target(name: "FeatureChartTesting"),
            .target(name: "FeatureChartTests"),
            .project(target: "Core", path: .relativeToRoot("Projects/Core"))
        ]
    ),
    .init(
        name: "FeatureChartInterface",
        platform: .iOS,
        product: .staticFramework,
        bundleId: "com.feature.chart.interface",
        infoPlist: .default,
        sources: ["Interface/Sources/**"],
        dependencies: [
            
        ]
    ),
    .init(
        name: "FeatureChartTesting",
        platform: .iOS,
        product: .staticFramework,
        bundleId: "com.feature.chart.testing",
        infoPlist: .default,
        sources: ["Testing/Sources/**"],
        dependencies: [
            
        ]
    ),
    .init(
        name: "FeatureChartTests",
        platform: .iOS,
        product: .staticFramework,
        bundleId: "com.feature.chart.tests",
        infoPlist: .default,
        sources: ["Tests/Sources/**"],
        dependencies: [
            
        ]
    ),
]

let project: Project = .init(
    name: "FeatureChart",
    targets: targets
)
