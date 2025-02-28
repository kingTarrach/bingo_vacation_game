//
//  P2PConnectManager.swift
//  Bingo_Vacation_Game
//
//  Created by Austin Tarrach on 2/27/25.
//

import MultipeerConnectivity
import SwiftUI

class P2PManager: NSObject, ObservableObject {
    private let serviceType = "bingo-vacation"
    private let myPeerID = MCPeerID(displayName: UIDevice.current.name)
    internal private(set) var session: MCSession
    private var advertiser: MCNearbyServiceAdvertiser
    private var browser: MCNearbyServiceBrowser
    
    @Published var connectedPeers: [MCPeerID] = []
    
    override init() {
        self.session = MCSession(peer: myPeerID, securityIdentity: nil, encryptionPreference: .required)
        self.advertiser = MCNearbyServiceAdvertiser(peer: myPeerID, discoveryInfo: nil, serviceType: serviceType)
        self.browser = MCNearbyServiceBrowser(peer: myPeerID, serviceType: serviceType)
        
        super.init()
        
        session.delegate = self
        advertiser.delegate = self
        browser.delegate = self
    }
    
    func startHosting() {
        advertiser.startAdvertisingPeer()
    }
    
    func stopHosting() {
        advertiser.stopAdvertisingPeer()
    }
    
    func startBrowsing() {
        browser.startBrowsingForPeers()
    }
    
    func stopBrowsing() {
        browser.stopBrowsingForPeers()
    }
    
    func sendData(_ data: Data) {
        if !session.connectedPeers.isEmpty {
            do {
                try session.send(data, toPeers: session.connectedPeers, with: .reliable)
            } catch {
                print("Error sending data: \(error.localizedDescription)")
            }
        }
    }
}
