//
//  ultimateData.swift
//  MySmashCompanion
//
//  Created by Jake Haslam on 6/13/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

import Foundation
struct CharacterData: Decodable {
    
    // MARK: - Standard Moves
    struct BackAir: Decodable {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct BackThrow {
        let image: String?
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct DashAttack {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct DashGrab {
        let image: String?
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct DownAir {
        let activeFrames: String
        let image: String?
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
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct DownThrow {
        let image: String?
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct DownTilt {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardAir {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardSmash {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardThrow {
        let image: String?
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct ForwardTilt {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardTilt1 {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardTilt2 {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String?
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Grab {
        let image: String?
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct Jab {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Jab1 {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Jab2 {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Jab3 {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct RapidJab {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct RapidJabFinisher {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    
    struct NeutralAir {
        let activeFrames: String
        let image: String?
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
        let image: String?
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct Pummel {
        let image: String?
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct SideB {
        
    }
    struct UpAir {
        let activeFrames: String
        let image: String?
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
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct UpThrow {
        let image: String?
        let notes: String
        let startup: String
        let totalFrames: String
    }
    struct UpTilt {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    
    // MARK: - Unique Moves
    // MARK: - Hero
    struct Acceleratle {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Bang {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Bounce {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct FlameSlash {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct HatchetMan {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Heal {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct HocusPocus {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Kaboom {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Kaclang {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct KacrakleSlash {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Kamikazee {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct MagicBurst {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct MetalSlash {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Oomph {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct PsychUp {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Sizz {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Sizzle {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Snooze {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Thwack {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Whack {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Zoom {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    // MARK: - Ken & Ryu
    struct DownTiltHeavy {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct DownTiltLight {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct UpTiltLight {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct UpTiltHeavy {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardTiltHeavy {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardTiltLightClose {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct ForwardTiltLightFar {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct JabHeavyClose {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct JabHeavyFar {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct Jab1Light {
        let activeFrames: String
        let image: String?
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    // MARK: - Ken Input Commands
    struct NataOtoshiGeri {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct OosotoMawashiGeri {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    // both Ken and Ryu
    struct SideBAir {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct TrueFlameShoryuken {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    // Both Ken and Ryu
    struct TrueShoryuken {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct UpBFlameShryuken {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    // Both Ryu and Ken UpBShoryu & FocusAttackDashCancel
    struct UpBShoryuken {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    struct FocusAttackDashCancel {
        let activeFrames: String
        let image: String?
        let notes: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
    // MARK: - Ryu Input Commands
    struct ShankynetsuHadouken {
        let activeFrames: String
        let image: String?
        let landingLag: String
        let onShield: String
        let shieldLag: String
        let shieldStun: String
        let totalFrames: String
    }
}



