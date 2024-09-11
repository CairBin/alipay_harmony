import { Message } from '../model/Messages';
import data from '../utils/data';

@Entry
@Component
export default struct MessagePage{

  private message:Message[] = data.getMessageList()

  build(){
    Column(){
      Row({space:5}){
        Text("消息").fontColor('#fff')
          .fontSize(16)
          .fontWeight(600)

        Blank()

        Image($r("app.media.message_header1"))
          .width(30)
          .fillColor("#fff")

        Image($r("app.media.message_header2"))
          .width(30)
          .fillColor("#fff")

      }.width('100%')
      .padding(10)

      Search({placeholder: "搜索你的好友、最近转账联系人"})
        .backgroundColor("#fff")
        .width("90%")
        .height(40)
        .placeholderFont({size: 14})
        .searchButton("搜索")

      List({space:5}){
        ForEach(this.message, (msg:Message)=>{
          ListItem(){
            Row({space:10}){
              Image(msg.img)
                .width(45)
                .borderRadius(40)

              Column({space:6}){
                Text(msg.nickName)
                  .fontSize(17)
                  .fontWeight(700)
                Text(msg.message)
                  .fontSize(15)
                  .fontWeight(600)
              }.width(150)
              .alignItems(HorizontalAlign.Start)

              Blank()

              Text(msg.time)
                .fontSize(14)
                .fontWeight(500)
            }.padding(8)
            .width('90%')
            .height(70)
            .backgroundColor('#fff')
            .borderRadius(15)
          }
        })
      }.alignListItem(ListItemAlign.Center)
      .margin({top:20})


    }.width('100%')
    .height('100%')
    .backgroundColor("#2754D5")

  }
}