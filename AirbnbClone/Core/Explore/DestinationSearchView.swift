//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Yıldız Aydın on 10.01.2025.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}



struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    
    
    
    var body: some View {
        VStack{
            HStack{
                Button {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                }label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !destination.isEmpty{
                    Button("Clear") {
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to go?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray))
                    }
                }else {
                    CollapsedPickerVİew(title: "where", description: "add destination")
                    
                    
                }
                
                
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .location }
                
            }
            
            // date selection
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                    Text("when's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack{
                        DatePicker("From",selection: $startDate, displayedComponents: .date)
                            .onTapGesture(count: 99 , perform: {})
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                            .onTapGesture(count: 99 , perform: {})
                        
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                } else {
                    CollapsedPickerVİew(title: "when", description: "add dates")
                    
                    
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                if selectedOption != .dates {
                    withAnimation(.snappy) {selectedOption = .dates}
                }
            }
            
            VStack(alignment: .leading){
                if selectedOption == .guests {
                    Text("who's coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("\(numGuests) adults")
                    } onIncrement: {
                        numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }
                    .onTapGesture(count: 99 , perform: {})
                    
                } else {
                    CollapsedPickerVİew(title: "who", description: "add guests")
                    
                    
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .guests}
                
            }
            Spacer()
            
        }
    }
    
}
#Preview {
    DestinationSearchView(show: .constant(false))
}
struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
    
}

struct CollapsedPickerVİew: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }

        }
    }
}
