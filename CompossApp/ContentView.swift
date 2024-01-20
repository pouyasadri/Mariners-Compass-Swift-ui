//
//  ContentView.swift
//  CompossApp
//
//  Created by Pouya Sadri on 20/01/2024.
//
// don't forget to subsribe my channel : Pouya sadri dev
// Instagram: pouyasadri_dev

import SwiftUI
//MARK: - ContentView
struct ContentView: View {
    var body: some View {
        FinalView()
    }
}

#Preview {
    ContentView()
}

//MARK: - FinalView
struct FinalView: View {
	@State private var northAim = false
	var body: some View {
		ZStack{
			BackgroundGradientView()
			GearsView()
			NorthTextAnimation(northAim: $northAim)
			ArrowImage()
			HomeView()
		}
	}
}

//MARK: - Background gradient view
struct BackgroundGradientView: View {
	var body: some View {
		LinearGradient(Color.darkStart,Color.darkEnd)
			.ignoresSafeArea()
			.opacity(1)
	}
}

//MARK: - Gears View
struct GearsView: View {
	var body: some View {
		GearLayout(gearAim: false,widthN: 300,heightN: 300)
			.offset(x:-130, y: 300)
		GearLayout(gearAim: true,widthN: 300,heightN: 300)
			.offset(x:-130, y: 300)
	}
}

//MARK: - North Text animtaion
struct NorthTextAnimation : View {
	@Binding var northAim: Bool
	var body: some View {
		Text("N O R T H")
			.font(.largeTitle)
			.fontWeight(.light)
			.foregroundStyle(.white)
			.scaleEffect(northAim ? 1.1 : 1)
			.onAppear{
				withAnimation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true)){
					northAim.toggle()
				}
			}
			.offset(x:0,y:-320)
	}
}

//MARK: - Arrow Image
struct ArrowImage : View {
	var body: some View {
		Image("arrow")
			.resizable()
			.frame(width: 50,height: 50)
			.offset(x:0 , y:-260)
	}
}

//MARK: - Home View
struct HomeView: View {
	var body: some View {
		ZStack{
			BackgroundLayers()
			CircleLayers()
			NumberLayers()
			AnimationLayers()
		}
	}
}

//MARK: - Background Layers
struct BackgroundLayers : View {
	var body: some View {
		ZStack{
			Circle()
				.frame(width: 400,height: 400)
				.foregroundColor((Color("dkgreen")))
				.overlay{
					Circle().stroke(.yellow,lineWidth: 0.1)
				}
			
			Circle()
				.fill(LinearGradient(Color.darkEnd,Color.darkStart))
				.shadow(color: Color.darkStart, radius: 10,x:-2,y:-2)
				.shadow(color: Color.darkEnd, radius: 10,x:-5,y:-5)
				.frame(width: 320,height: 320)
				.overlay{
					Circle().stroke(.yellow,lineWidth: 0.1)
				}
		}
	}
}

//MARK: - Circle Layers
struct CircleLayers : View {
	var body: some View {
		ZStack{
			ForEach(0 ..< 60){
				Rectangle()
					.frame(width: 3,height: 9)
					.foregroundColor(.white)
					.offset(y:-120)
					.rotationEffect(.degrees(Double($0) * 45))
					.opacity(0.2)
			}
			
			ForEach(0 ..< 120){
				Rectangle()
					.frame(width: 3,height: 3)
					.foregroundColor(.white)
					.offset(y:-120)
					.rotationEffect(.degrees(Double($0) * 9))
					.opacity(0.2)
			}
		}
	}
}
//MARK: - Number layers
struct NumberLayers : View {
	var body: some View {
		ZStack{
			Text("0")
				.font(.subheadline)
				.foregroundStyle(.white)
				.offset(x:0 , y: -140)
			
			Text("45")
				.font(.subheadline)
				.foregroundStyle(.white)
				.offset(x:0 , y: -140)
				.rotationEffect(.degrees(45))
			
			Text("90")
				.font(.subheadline)
				.foregroundStyle(.white)
				.offset(x:0 , y: -140)
				.rotationEffect(.degrees(90))
			
			Text("135")
				.font(.subheadline)
				.foregroundStyle(.white)
				.offset(x:0 , y: -140)
				.rotationEffect(.degrees(135))

			Text("180")
				.font(.subheadline)
				.foregroundStyle(.white)
				.offset(x:0 , y: -140)
				.rotationEffect(.degrees(180))
			
			Text("225")
				.font(.subheadline)
				.foregroundStyle(.white)
				.offset(x:0 , y: -140)
				.rotationEffect(.degrees(225))
			
			Text("270")
				.font(.subheadline)
				.foregroundStyle(.white)
				.offset(x:0 , y: -140)
				.rotationEffect(.degrees(270))
			
			Text("315")
				.font(.subheadline)
				.foregroundStyle(.white)
				.offset(x:0 , y: -140)
				.rotationEffect(.degrees(315))
		}
	}
}

//MARK: - Animation Layers
struct AnimationLayers : View {
	@State private var rotateAim = false
	var body: some View {
		ZStack{
			ZStack{
				Circle()
					.fill(LinearGradient(Color.darkEnd,Color.darkStart))
					.shadow(color: Color.darkStart, radius: 10,x: -2,y: -2)
					.shadow(color: Color.darkEnd, radius: 10,x: -5,y: -5)
					.frame(width: 200,height: 200)
					.overlay{
						Circle().stroke(Color("dkgreen"),lineWidth: 10)
					}
				
				Image("arrow")
					.resizable()
					.frame(width: 20,height: 20)
					.offset(x:0,y:-100)
				
				Circle()
					.foregroundColor(.yellow)
					.frame(width: 8,height: 8)
					.offset(x:0,y:-100)
					.rotationEffect(.degrees(90))
				
				Circle()
					.foregroundColor(.yellow)
					.frame(width: 8,height: 8)
					.offset(x:0,y:-100)
					.rotationEffect(.degrees(180))
				
				Circle()
					.foregroundColor(.yellow)
					.frame(width: 8,height: 8)
					.offset(x:0,y:-100)
					.rotationEffect(.degrees(270))
				
				Text("N")
					.font(.title2)
					.foregroundStyle(.red)
					.offset(x:0,y:-70)
				
				Text("E")
					.font(.title2)
					.foregroundStyle(.white)
					.offset(x:0,y:-70)
					.rotationEffect(.degrees(90))
				
				Text("S")
					.font(.title2)
					.foregroundStyle(.white)
					.offset(x:0,y:-70)
					.rotationEffect(.degrees(180))
				
				Text("W")
					.font(.title2)
					.foregroundStyle(.white)
					.offset(x:0,y:-70)
					.rotationEffect(.degrees(270))
			}
			.rotationEffect(.degrees(rotateAim ? 25 : -25))
			.onAppear{
				withAnimation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true)){
					rotateAim.toggle()
				}
			}
		}
	}
}
//MARK: - Gear Layout
struct GearLayout: View {
	@State var gearAim = false
	@State var widthN : CGFloat = 300
	@State var heightN : CGFloat = 300
	var body: some View {
		ZStack{
			Image(systemName: "gear")
				.resizable()
				.frame(width: widthN,height: heightN)
				.foregroundStyle(.gray)
				.opacity(0.03)
				.rotationEffect(.degrees(gearAim ? 25 : -25))
				.onAppear{
					withAnimation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true)){
						gearAim.toggle()
					}
				}
				
		}
	}
}
//MARK: - Color extention
extension Color{
	static let darkStart = Color("darkstart")
	static let darkEnd = Color("darkend")
}

//MARK: - Gradient Extention
extension LinearGradient{
	init(_ colors: Color...){
		self.init(gradient: Gradient(colors: colors), startPoint: .topTrailing, endPoint: .bottomTrailing)
	}
}

extension RadialGradient{
	init(_ colors: Color...){
		self.init(gradient:Gradient(colors: colors),center: .center,startRadius: 2,endRadius: 100)
	}
}
