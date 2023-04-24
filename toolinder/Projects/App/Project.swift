//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 송영모 on 2023/04/21.
//

import ProjectDescription
import DependencyPlugin


let targets: [Target] = [
    .init(
        name: "iOSApp",
        platform: .iOS,
        product: .app,
        bundleId: "com.tamsadan.toolinder",
        infoPlist: .default,
        sources: "Sources/**",
        dependencies: [
            .project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
        ]
    )
]

let project: Project = .init(
    name: "App",
    targets: targets
)
