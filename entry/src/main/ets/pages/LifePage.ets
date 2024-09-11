

@Entry
@Component
export default struct LifePage{
  build(){
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