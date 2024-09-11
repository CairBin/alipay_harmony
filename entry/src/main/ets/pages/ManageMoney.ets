import { LiCaiApps } from '../model/LiCaiApps';
import data from '../utils/data';

@Entry
@Component
export default struct ManageMoney{

  private miniApps:LiCaiApps[] = data.getLiCaiApps()
  build() {
    Column({ space: 10 }) {
      Column() {
        // search
        Row() {
          Image($r("app.media.money_header1")).width(30)
          Search({ placeholder: "余额宝" })
            .searchButton("搜索")
            .width(250)
            .height(30)
            .backgroundColor("#fff")
          Image($r("app.media.money_header2")).width(30)
        }.width("100%")
        .padding(7)
        .justifyContent(FlexAlign.SpaceEvenly)

        Row({ space: 45 }) {
          myMoney("总资产(元)", 1.18)
          myMoney("昨日收益", 0.18)
          myMoney("家庭保障", 3)
        }.width("100%")
        .margin({ top: 15 })
        .justifyContent(FlexAlign.Center)

        Row() {
          Image($r("app.media.money_liCaiFen")).width(40).height(15).interpolation(ImageInterpolation.High)
          Blank()
          Text("分期付，学会理财").fontColor("#fff").fontSize(11).fontWeight(400)
        }.width("90%")
        .height(30)
        .padding(10)
        .borderRadius(10)
        .margin({ top: 15 })
        .backgroundColor("#2754D5")
      }.width("100%")
      .height(180)
      .backgroundColor("#367CFE")

      Scroll() {
        Column({ space: 10 }) {
          Grid() {
            ForEach(this.miniApps, (item: LiCaiApps) => {
              GridItem() {
                Column({ space: 5 }) {
                  Image(item.img).width(30)
                    .height(30)
                  Text(item.text).fontWeight(500)
                    .fontSize(16)
                }
              }
            })
          }
          .columnsTemplate("1fr 1fr 1fr 1fr 1fr")
          .rowsTemplate("1fr 1fr")
          .height(190)
          .width("94%")
          .borderRadius(10)
          .backgroundColor("#fff")

          //   轮播图片
          Swiper() {
            Image($r("app.media.money_sw1")).width("94%").height(130)
            Image($r("app.media.money_sw2")).width("94%").height(130)
            Image($r("app.media.money_sw3")).width("94%").height(130)
            Image($r("app.media.money_sw4")).width("94%").height(130)
          }
          .autoPlay(true)

          Image($r("app.media.Money_adv_0")).width("100%")
          Image($r("app.media.Money_adv_1")).width("100%")
          Image($r("app.media.Money_adv_2")).width("100%")
          Image($r("app.media.Money_adv_3")).width("100%")
        }
        .width("100%")
        .height("100%")
        .backgroundColor("#F1F2F6")
      }
      .height(2000)
    }
  }

}

@Builder
function myMoney(text: string, money: number) {
  Column({space: 10}) {
    Row({space: 5}) {
      if(text == "总资产(元)") {
        Text(text).fontColor("#fff").fontSize(14).fontWeight(400)
        Image($r("app.media.money_eye")).width(18)
      }else Text(text).fontColor("#fff").fontSize(14).fontWeight(400)

    }
    if(money == 3) {
      Row({space: 5}) {
        Text(money + "").fontColor("#fff").fontWeight(700).fontSize(22)
        Text("份").fontColor("#fff").fontWeight(500).fontSize(14).margin({top: 5})
      }
    }else Text(money + "").fontColor("#fff").fontWeight(700).fontSize(22)
  }
}

