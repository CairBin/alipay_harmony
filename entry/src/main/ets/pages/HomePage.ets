import MainYouCom from '../components/MainYouCom';
import { LifeApps } from '../model/LifeApps'
import data from '../utils/data';

@Entry
@Component
export default struct HomePage{

  private miniPrograms: LifeApps[] = data.getLifeApps()


  @Builder
  myDiscount(img: Resource, message: string, count: number){
    Column({space: 3}) {
      Image(img)
        .width(35)
        .height(35)

      Row({space: 7}) {
        Text(message)
          .fontWeight(500)
          .fontSize(15)

        Text(count == 10 ? count + "+" : count + "")
          .fontWeight(700)
          .fontSize(15)
          .fontColor(Color.Orange)
      }
    }
  }

  build(){
    Column({space:10}){
      Column({space:20}){
        // --------- top search ----------
          Row(){
            Column({space:3}){
              Text('济南').fontColor('#fff')
                .fontSize(18)
              Text("晴30°C").fontColor('#fff')
            }
            Image($r('app.media.main_header1'))
              .width(18)
              .fillColor(Color.White)
              .margin({bottom:20})

            Search({placeholder:'欢迎来到济南'})
              .backgroundColor('#fff')
              .searchButton('搜索')
              .width(240)

            Image($r('app.media.main_header2'))
              .width(30)
              .fillColor('#fff')

          }.width('100%')
          .justifyContent(FlexAlign.SpaceEvenly)
          .margin({top:12})
        // ------------ top search end -----------

        // scan/quick pay ...(quick vistor)
        Row({space:50}){
          QuickVistor({img: $r("app.media.main_header_scan"), text: "扫一扫"})
          QuickVistor({img: $r("app.media.main_header_pay"), text: "支付"})
          QuickVistor({img: $r("app.media.main_header_card"), text: "卡包"})
          QuickVistor({img: $r("app.media.main_header_travel"), text: "出行"})
        }.width('100%')
        .justifyContent(FlexAlign.Center)

      }.width('100%')
      .height(180)
      .backgroundColor('#5B73E1')
      // ---------- quick vistor end ---------

      Scroll(){
        Column(){
          // ------------- mini-programs icon -----------
          Grid(){
            ForEach(this.miniPrograms, (app:LifeApps)=>{
              GridItem(){
                Column({space:'5'}){
                  Image(app.img).width(28)
                  Text(app.text).fontSize(14)
                }
              }
            })
          }.height(240)
          .rowsTemplate('1fr 1fr 1fr')
          .columnsTemplate('1fr 1fr 1fr 1fr 1fr')

          // --------- mini-programs icon end ---------

          // ---------- swiper ------------
          Row({space:4}){
            Swiper(){

              Image($r("app.media.main_swiper1"))
                .height(180)
              Image($r("app.media.main_swiper2"))
                .height(180)
              Image($r("app.media.main_swiper3"))
                .height(180)

            }.autoPlay(true)
            .interval(2000)

            Image($r("app.media.main_phone"))
              .height(180)
            Image($r("app.media.main_money"))
              .height(180)

          }.width('95%')
          .margin({top:10})
          // --------- swiper end ------

          // --------- discount --------
          Column({space:10}){
            activity($r("app.media.main_youlogo"), "领优惠 充值缴费")
            Row() {
              this.myDiscount($r("app.media.main_you1"), "即将过期券", 3)
              this.myDiscount($r("app.media.main_you2"), "我的优惠券", 3)
              this.myDiscount($r("app.media.main_you3"), "领券中心", 10)
            }.width('94%')
              .height(75)
              .backgroundColor("#F6FAFD")
              .borderRadius(15)
              .justifyContent(FlexAlign.SpaceEvenly)
            MainYouCom({img: $r("app.media.main_you4"), price: 1.28, title: "生活缴费红包", messages:['生活缴费', '缴费立减']})
            MainYouCom({img: $r("app.media.main_you5"), price: 0.5, title: "话费券", messages:['特惠充', '满100元可用']})
          }.width("95%")
          .height(300)
          .backgroundColor("#FFF")
          .margin({top: 8})
          .borderRadius(13)
          // ------------ discount end -------------

          // ------------- my express -----------

          Column() {
            activity($r("app.media.main_kuaiDi"), "我的快递")
            Row({space: 5}) {
              Image($r("app.media.main_kd1"))
                .width("50%")
                .height(80)
                .borderRadius(10)
              Image($r("app.media.main_kd2"))
                .width("50%")
                .height(80)
                .borderRadius(10)
            }
            .width("94%")
          }.width("95%")
          .margin({top: 10})
          .backgroundColor("#fff")
          .borderRadius(10)
          .height(130)

          //   天天秒杀
          MSXF({titleImg: $r("app.media.main_miaoSha"), text: "天天秒杀", imgs: [$r("app.media.main_ms1"), $r("app.media.main_ms2"), $r("app.media.main_ms3")]})
          // 消费圈
          MSXF({titleImg: $r("app.media.main_xiaoFei"), text: "消费圈", imgs: [$r("app.media.main_xf1"), $r("app.media.main_xf2"), $r("app.media.main_xf3")]})
          Image($r("app.media.main_bottom")).width("100%")
        }.height(1800)
        // ------------ my express end ---------
        }.edgeEffect(EdgeEffect.Spring) // spring effect

      }.width('100%').height('100%').backgroundColor('#F6F6F6')

  }
}


@Component
struct QuickVistor{
  img:ResourceStr = ''
  text:string = ''

  build(){
    Column({space:5}){
      Image(this.img).width(40)
        .height(40)
        .fillColor('#fff')

      Text(this.text).fontColor('#fff')
        .fontWeight(400)
    }


  }
}


@Builder
function activity(img:ResourceStr, text:string){
  Row({space:8}){
    Image(img)
      .width(25)
      .height(25)
      .interpolation(ImageInterpolation.High)

    Blank()

    Text("..").fontSize(20)
      .fontColor('#ccc')
      .fontWeight(800)
      .margin({bottom:10})
  }.width('90%').margin({top:8})

}

@Component
struct MSXF{
  titleImg:ResourceStr = ''
  text:string = ''
  imgs:ResourceStr[] = ['', '', '']

  build(){
    Column(){

      activity(this.titleImg, this.text)
      Row(){
        ForEach(this.imgs, (img:ResourceStr)=>{
          Image(img)
            .width("30%")
            .height(150)
            .borderRadius(10)
        })
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)

    }.width("95%")
    .margin({top: 10})
    .backgroundColor("#fff")
    .borderRadius(10)
    .height(200)

  }
}