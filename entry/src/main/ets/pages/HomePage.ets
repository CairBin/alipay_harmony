import { LifeApps } from '../model/LifeApps'
import data from '../utils/data';

@Entry
@Component
export default struct HomePage{

  private miniPrograms: LifeApps[] = data.getLifeApps()

  build(){
    Column(){
      Column({space:15}){
        // --------- top search ----------
        Row(){
          Row(){
            Column(){
              Text('济南').fontColor('#fff')
                .fontSize(18)
            }
            Image($r('app.media.main_header1'))
              .width(18)
              .fillColor(Color.White)
              .margin({bottom:12})
          }

          Search({placeholder:'欢迎来到济南'})
            .backgroundColor('#fff')
            .searchButton('搜索')
            .width(240)
          Image($r('app.media.main_header2'))
            .width(30)
            .fillColor('#fff')

        }.width('100%')
        .justifyContent(FlexAlign.SpaceEvenly)
        .margin({top:0})
        // ------------ top search end -----------

        // scan/quick pay ...(quick vistor)
        Row({space:50}){
          QuickVistor({img: $r("app.media.main_header_scan"), text: "扫一扫"})
          QuickVistor({img: $r("app.media.main_header_pay"), text: "支付"})
          QuickVistor({img: $r("app.media.main_header_card"), text: "卡包"})
          QuickVistor({img: $r("app.media.main_header_travel"), text: "出行"})
        }.width('100%').justifyContent(FlexAlign.Center)

        // ---------- quick vistor end ---------

      }.width('100%')
      .height(160)
      .backgroundColor('#5B73E1')

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
      Row(){
        Swiper(){

          Image($r("app.media.main_swiper1"))
            .height(180)
          Image($r("app.media.main_swiper2"))
            .height(180)
          Image($r("app.media.main_swiper3"))
            .height(180)

        }.autoPlay(true)
          .interval(3000)

        Image($r("app.media.main_phone"))
          .height(180)
        Image($r("app.media.main_money"))
          .height(180)

      }.width('100%')


    }.width('100%').height('100%')

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
