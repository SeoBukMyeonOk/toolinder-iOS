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
        name: "Feature",
        platform: .iOS,
        product: .framework,
        bundleId: "com.feature",
        infoPlist: .default,
        sources: ["Sources/**"],
        dependencies: [
            .project(target: "FeatureCalendar", path: .relativeToCurrentFile("Calendar")),
            .project(target: "FeatureChart", path: .relativeToCurrentFile("Chart"))
        ]
    )
]

let project: Project = .init(
    name: "Feature",
    targets: targets
)
