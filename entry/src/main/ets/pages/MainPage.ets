// MainPage

import HomePage from './HomePage';
import LifePage from './LifePage';
import ManageMoney from './ManageMoney';
import MessagePage from './MessagePage';
import UserPage from './UserPage';

@Entry
@Component
struct MainPage{

  @State currentIndex:number = 0;

  private controller:TabsController = new TabsController()


  //customer navigate style
  @Builder
  tabStyle(text:string, img:Resource, selectedImg:Resource, selected:number){
    Column({ space: 3 }){
      Image(this.currentIndex === selected ? selectedImg : img)
        .width(31)  // unit: vp (self-adaption)
        .height(31)

      Text(text)
        .fontSize(15)
        .fontWeight(500)
        .fontColor(this.currentIndex === selected ? Color.Blue : Color.Black)
    }.onClick(()=>{
      this.currentIndex = selected
      this.controller.changeIndex(selected)
    })
  }

  build(){

    // bottom navigate
    Tabs({barPosition: BarPosition.End, controller:this.controller}){
      TabContent(){
        HomePage()
      }.tabBar(this.tabStyle(
        '首页',
        $r("app.media.main_tab1"),
        $r("app.media.main_tabSelect1"),
        0
      ))

      TabContent(){
        ManageMoney()
      }.tabBar(this.tabStyle(
        '理财',
        $r("app.media.main_tab2"),
        $r("app.media.main_tabSelect2"),
        1
      ))

      TabContent(){
        LifePage()
      }.tabBar(this.tabStyle(
        '生活',
        $r("app.media.main_tab3"),
        $r("app.media.main_tabSelect3"),
        2
      ))

      TabContent(){
        MessagePage()
      }.tabBar(this.tabStyle(
        '消息',
        $r("app.media.main_tab4"),
        $r("app.media.main_tabSelect4"),
        3
      ))

      TabContent(){
        UserPage()
      }.tabBar(this.tabStyle(
        '我的',
        $r("app.media.main_tab5"),
        $r("app.media.main_tabSelect5"),
        4
      ))

    }.onChange((index)=>{
      this.currentIndex = index
    })


  }
}