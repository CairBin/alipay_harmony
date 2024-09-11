@Component
export default struct MainYouCom{
  img:ResourceStr = ''
  price:number = 0
  title:string = ''
  messages:string[] = ['','']

  build() {
    Row() {

      Column() {
        Image(this.img).width(38).height(38)
      }.width("20%")
      .height(70)
      .backgroundColor("#F9FAFE")
      .justifyContent(FlexAlign.Center)
      .borderRadius(15)


      Row() {
        Column({space: 5}) {
          // first line
          Row({space: 5}) {
            Text(this.price + "元")
              .fontColor("#E87947")
              .fontWeight(500)
              .fontSize(14)

            Text(this.title)
              .fontWeight(800)
              .fontSize(15)
              .fontWeight(400)
          }
          //  second line
          Row({space: 5}) {
            Text(this.messages[0])
              .width(55)
              .height(15)
              .textAlign(TextAlign.Center)
              .fontColor("#E87947")
              .fontSize(12)
              .border({radius: 5, width: 0.5, color: "#E87947"})

            Text(this.messages[1])
              .fontColor("#ccc")
              .fontWeight(900)
              .fontSize(12)
          }
        }
        .alignItems(HorizontalAlign.Start)
        .margin({left: 8})

        Blank()

        Text("免费领")
          .textAlign(TextAlign.Center)
          .fontColor(Color.Orange)
          .fontWeight(500)
          .fontSize(13)
          .width(61)
          .height(20)
          .borderRadius(20)
          .backgroundColor("#F5E5E4")
          .margin({right: 10})
      }
      .width("80%")
      .height(70)
      .borderRadius(15)
      .backgroundColor("#F9FAFE")


    }
    .width("94%")

  }

}