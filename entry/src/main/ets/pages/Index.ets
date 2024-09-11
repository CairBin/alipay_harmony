// main page
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('Open').onClick(()=>{
          router.pushUrl({url:'pages/MainPage'})
        })
      }.width('100%')
    }.height('100%').backgroundColor(Color.Blue)
  }
}