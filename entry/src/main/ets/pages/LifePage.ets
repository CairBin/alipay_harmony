

@Entry
@Component
export default struct LifePage{
  private controller: TabsController = new TabsController();

  build(){
    Column(){
      Tabs({
        barPosition: BarPosition.Start,
        controller: this.controller
      }){

        TabContent(){
          LifeAccount()
        }.size({width: "100%", height: "100%"})
        .tabBar("关注")

        TabContent(){
          TinyVideo().width('100%')
        }.size({width: "100%", height: "100%"})
        .tabBar("微剧")

        TabContent(){
          Live()
        }.size({width: "100%", height: "100%"})
        .tabBar("直播")

        TabContent(){
          Find()
        }.size({width: "100%", height: "100%"})
        .tabBar("发现")

      }.size({width: "100%", height: "100%"})

    }.width('100%')
    .height('100%')
    .padding(10)
  }
}

@Component
struct LifeAccount{
  build() {
    Column({space:20}){
      Row(){
        Text('生活号动态')
          .fontSize(22)
          .fontWeight(700)

        Blank()

        Text('推荐')
          .fontSize(15)
          .fontColor('#2C90EA')
          .fontWeight(600)

        Text('|最新')
          .fontSize(15)
          .fontWeight(600)
      }.width('100%').padding(10)

      List({space:10}){
        ListItem() {Image($r("app.media.life_gz1")).width(150)}
        ListItem() {Image($r("app.media.life_gz2")).width(150)}
        ListItem() {Image($r("app.media.life_gz3")).width(150)}
      }.listDirection(Axis.Horizontal)
      .height(200)
      .scrollBar(BarState.Off)
    }.width('100%')
    .height('100%')
    .backgroundColor('#EDEDED')
  }
}

@Component
struct TinyVideo{
  build(){
    Scroll(){
      Column(){
        Image($r('app.media.life_wei')).width('100%')

        Row(){
          Text('热播榜').fontSize(20).fontColor('#fff')
          Text('查看更多>').fontSize(14).fontColor('#fff')
        }.width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        List({space:10}){
          ListItem(){Image($r('app.media.life_wei1')).width(120)}
          ListItem(){Image($r('app.media.life_wei2')).width(120)}
          ListItem(){Image($r('app.media.life_wei3')).width(120)}
          ListItem(){Image($r('app.media.life_wei4')).width(120)}
          ListItem(){Image($r('app.media.life_wei5')).width(120)}
        }.height(200).listDirection(Axis.Horizontal)

        Image($r('app.media.preview'))
          .width('100%')
          .margin({top:10})
          .borderRadius(20)
          .height(1000)

      }.width('100%').height('100%')
      .backgroundColor(Color.Black)
      .padding(10)
    }.height(1400).width('100%')
  }
}

@Component
struct Live{
  build() {
    Column(){
      Image($r('app.media.life_fa')).width('100%').height('100%')
    }.backgroundColor(Color.Black)
    .width('100%')
    .height('100%')
  }
}

@Component
struct Find{
  build() {
    Column(){
      Image($r('app.media.life_fa')).width('100%').height('100%')
    }.backgroundColor(Color.Black)
    .width('100%')
    .height('100%')
  }
}