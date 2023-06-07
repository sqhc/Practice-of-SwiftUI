//
//  OnboardingView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/4/23.
//

import SwiftUI

struct OnboardingView: View {
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add gender
     */
    @State var onboardingState: Int = 0
    let transistion: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            //Content
            ZStack{
                switch onboardingState{
                case 0:
                    welcomeSection
                        .transition(transistion)
                case 1:
                    addNameSection
                        .transition(transistion)
                case 2:
                    addAgeSection
                        .transition(transistion)
                case 3:
                    addGenderSection
                        .transition(transistion)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            
            //button
            VStack{
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(alertTitle, isPresented: $showAlert) {
            Text(alertTitle)
        }
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

//MARK: Components
extension OnboardingView{
    private var bottomButton: some View{
        Text(onboardingState == 0 ? "Sign up" : onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View{
        VStack(spacing: 40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                }
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwfitUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View{
        VStack(spacing: 40){
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here ...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View{
        VStack(spacing: 40){
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View{
        VStack(spacing: 40){
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }

            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

//MARK: Functions
extension OnboardingView{
    
    
    func handleNextButtonPressed(){
        // Check inputs
        switch onboardingState{
        case 1:
            guard name.count >= 3 else{
                showAlert(title: "Your name must be at least 3 characters long! 😩")
                return
            }
        case 3:
            guard gender.count > 1 else{
                showAlert(title: "Please select a gender before moving forward! 😅")
                return
            }
        default:
            break
        }
        
        // Go to next section
        if onboardingState == 3{
            signIn()
        }
        else{
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn(){
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String){
        alertTitle = title
        showAlert.toggle()
    }
}
