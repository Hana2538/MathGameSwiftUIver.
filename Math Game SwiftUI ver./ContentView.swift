import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 背景画像
            Image("blackbord")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                // タイトル
                Text("算数ゲーム")
                    .font(.custom("Hiragino Maru Gothic Pro W4", size: 50))
                    .frame(maxWidth: .infinity, maxHeight: 400, alignment: .top)
                    .foregroundColor(.white)
                
                Spacer()
                
                // ボタン
                Button(action: {
                    print("ボタンがタップされました！")
                }) {
                    Text("スタート")
                        .font(.custom("Hiragino Maru Gothic Pro W4", size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.yellow) // 背景色を黄色に変更
                        .foregroundColor(.black) // テキスト色を黒に変更
                        .cornerRadius(10) // 角を丸くする
                }
                .padding(.bottom, 50) // ボタンの下側に余白を追加
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
