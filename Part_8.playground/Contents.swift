import UIKit


var v = UIView(frame: CGRect (x: 0, y: 0, width: 240, height: 170)) // 建背景 位置,範圍
var iosClassText = UITextView(frame: CGRect(x: 10, y: 120, width: 220, height: 40)) // 建"ios Class" text 位置,範圍
var nameText = UITextView(frame: CGRect(x: 140, y: 20, width: 100, height: 80)) // 建"Jerry" text 位置,範圍
var myImage = UIImageView(frame: CGRect(x: 10, y: 10, width: 120, height: 100)) // 建 imgage 位置,範圍


v.backgroundColor = UIColor.white // 背景底色
// 文字設定
iosClassText.text = "ios Class" // 內文
iosClassText.font = UIFont(name: "Helvetica-Light", size: 20) // 字型 ,大小
iosClassText.textColor = UIColor.white // 文字顏色
iosClassText.backgroundColor = UIColor.orange // 底色
iosClassText.textAlignment = .center // 文字位置->置中


nameText.text = "Jerry Chang"
nameText.font = UIFont(name: "Helvetica-Light", size: 25)
nameText.textColor = UIColor.black

// image 設定
//myImage.backgroundColor = UIColor.gray
myImage.image = UIImage(named: "owl_icon.jpg")

// out
v.addSubview(iosClassText);
v.addSubview(nameText);
v.addSubview(myImage);
v


























