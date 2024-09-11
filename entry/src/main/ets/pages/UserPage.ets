import { User } from '../model/User';
import {MyService} from '../model/MyService'
import data from '../utils/data';



@Entry
@Component
export default struct UserPage{

  private user:User = new User('CairBin', 'HelloWorld',13177776666)
  private services:MyService[] = data.getServices()
  build(){
    Column(){
      Column(){
        Row({space:5}){
          Text("用户保护中心")
            .fontColor("#fff")
            .fontSize(15)
            .fontWeight(400)

          Image($r("app.media.user_header1"))
            .width(30)
            .fillColor("#fff")
          Blank()
          Image($r("app.media.user_header2"))
            .width(30)
            .fillColor("#fff")
          Image($r("app.media.user_header3"))
            .width(30)
            .fillColor("#fff")
        }.width('100%').padding(8)

        Row(){
          Image($r("app.media.user_tx"))
            .width(68)
            .borderRadius(10)
          Column({space: 5}) {
            Text(this.user?.username)
              .fontWeight(700)
              .fontColor("#fff")
              .fontSize(22)
            Text("" + this.user?.phone)
              .fontWeight(500)
              .fontColor("#fff")
              .fontSize(18)
          }.width(150)
          .alignItems(HorizontalAlign.Start)
          .margin({left: 10})

          Blank()
          Image($r("app.media.user_header1"))
            .width(30)
            .fillColor("#fff")
            .margin({right: 15})
        }.width('100%')
        .margin({left:30,top:30})

      }.width('100%')
      .height(160)
      .backgroundColor("#0C7DFF")

      Scroll() {
        // 各种服务
        Column({space: 10}) {
          // 支付宝会员
          MyServiceCom({img: $r("app.media.user_vip"), title: "支付宝会员", message: "积分兑换还款额度"})
          // 商家服务
          Column() {
            MyServiceCom({img: $r("app.media.user_service"), title: "商家服务", message: "查看收款明细"})
            Divider().strokeWidth(2).width("90%")
            Row() {
              this.myText("今日收益(元)", 100000.02)
              this.myText("商家积分", 0)
            }
            Column() {
              //   账单
              ForEach(this.services, (item: MyService) => {
                MyServiceCom({img: item.img, title: item.title, message: item.message})
                  .margin({top: item.title == "芝麻信用" || item.title == "公益" ? 10 : 2})
              })
            }  .margin({top: 10})
          }
        } .margin({top: 10}) .height(1200)
      } .edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%')


  }

  @Builder
  myText(text: string, count: number) {
    Column({space: 15}) {
      Text(text).fontSize(14).fontWeight(400).margin({top: 15})
      Text("" + count).fontSize(15).fontWeight(500)
    }.width("47.5%").height(80) .backgroundColor("#fff")
  }


}

@Component
struct MyServiceCom {
  img: ResourceStr = ""
  title: string = ""
  message: string = ""

  build() {
    Row({ space: 6 }) {
      Image(this.img)
        .width(25)
        .height(25)
      Text(this.title)
        .fontSize(16)
        .fontWeight(500)
      Blank()
      Text(this.message)
        .fontWeight(400)
        .fontSize(13)
      Image($r("app.media.user_header1"))
        .width(20)
    }.width("95%")
    .backgroundColor("#fff")
    .height(60)
    .borderRadius(10)
    .padding(8)
  }
}