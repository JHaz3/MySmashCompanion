//
//  ultimateData.swift
//  MySmashCompanion
//
//  Created by Jake Haslam on 6/13/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

import Foundation
private struct CharacterMoves: Decodable {
    
    struct BackAir: Decodable {
        let activeFrames: String
        let image: String
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct BackThrow {
        let image: String
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct DashAttack {
        let activeFrames: String
        let image: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct DashGrab {
        let image: String
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct DownAir {
        let activeFrames: String
        let image: String
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct DownB {
        
    }
    struct DownSmash {
        let activeFrames: String
        let image: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct DownThrow {
        let image: String
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct DownTilt {
        let activeFrames: String
        let image: String
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardAir {
        let activeFrames: String
        let image: String
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardSmash {
        let activeFrames: String
        let image: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardThrow {
        let image: String
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct Grab {
        let image: String
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct Jab {
        let activeFrames: String
        let image: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Jab1 {
        let activeFrames: String
        let image: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Jab2 {
        let activeFrames: String
        let image: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Jab3 {
        let activeFrames: String
        let image: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    
    struct NeutralAir {
        let activeFrames: String
        let image: String
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct NeutralB {
        
    }
    struct PivotGrab {
        let image: String
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct Pummel {
        let image: String
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct SideB {
        
    }
    struct UpAir {
        let activeFrames: String
        let image: String
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct UpB {
        
    }
    struct UpSmash {
        let activeFrames: String
        let image: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct UpThrow {
        let image: String
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct UpTilt {
        let activeFrames: String
        let image: String
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
}
