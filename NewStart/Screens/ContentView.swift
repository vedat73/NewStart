//
//  ContentView.swift
//  NewStart
//
//  Created by Vedat Ozlu on 15.07.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive : Bool = true //this value will be assigned for once. AppStorage property wrapper allows us to use shared preferences
        //this true value will only be added to the property when the program does not find the "onboarding" key previously set in the device's permanent storage
        // if the program finds a previously created "onboarding" key, then it will ignore the value assigning.(right part after the equal sign)
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() 
    }
}
