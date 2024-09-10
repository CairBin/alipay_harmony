import { LiCaiApps } from '../model/LiCaiApps'
import { LifeApps } from '../model/LifeApps'
import { Message } from '../model/Messages'
import { MyService } from '../model/MyService'
import { MySettings } from '../model/MySetting'

class Data {
  /*
   * MainPage
   * */
//   1.滴滴出行、生活缴费等小程序
  getLifeApps(): LifeApps[] {
    return [
      new LifeApps($r("app.media.main_app1"), "滴滴出行"),
      new LifeApps($r("app.media.main_app2"), "生活缴费"),
      new LifeApps($r("app.media.main_app3"), "股票"),
      new LifeApps($r("app.media.main_app4"), "蚂蚁森林"),
      new LifeApps($r("app.media.main_app5"), "手机充值"),
      new LifeApps($r("app.media.main_app6"), "余额宝"),
      new LifeApps($r("app.media.main_app7"), "花呗"),
      new LifeApps($r("app.media.main_app8"), "飞猪出行"),
      new LifeApps($r("app.media.main_app9"), "淘票票"),
      new LifeApps($r("app.media.main_app10"), "饿了吗"),
      new LifeApps($r("app.media.main_app11"), "读书听书"),
      new LifeApps($r("app.media.main_app12"), "基金"),
      new LifeApps($r("app.media.main_app13"), "直播广场"),
      new LifeApps($r("app.media.main_app14"), "医疗健康"),
      new LifeApps($r("app.media.main_app15"), "更多"),
    ]
  }

  /*
   * 理财页面
   * */
  getLiCaiApps() :LiCaiApps[] {
    return [
      new LiCaiApps($r("app.media.money_app1"), "余额宝"),
      new LiCaiApps($r("app.media.money_app2"), "稳健理财"),
      new LiCaiApps($r("app.media.money_app3"), "进阶理财"),
      new LiCaiApps($r("app.media.money_app4"), "基金"),
      new LiCaiApps($r("app.media.money_app5"), "黄金"),
      new LiCaiApps($r("app.media.money_app6"), "股票"),
      new LiCaiApps($r("app.media.money_app7"), "定期"),
      new LiCaiApps($r("app.media.money_app8"), "保险"),
      new LiCaiApps($r("app.media.money_app9"), "全球投资"),
      new LiCaiApps($r("app.media.money_app10"), "养老金"),
    ]
  }

  /*
  * 消息页面==消息数据
  * */
  getMessageList() : Message[] {
    return [
      new Message($r('app.media.love01'), "安安", "在干嘛", "下午2：50"),
      new Message($r('app.media.love02'), "小妹", "上班了吗最近", "昨天8：50"),
      new Message($r('app.media.love03'), "王浩", "你好，加个微信呗", "昨天9：00"),
      new Message($r('app.media.love04'), "李文长", "作业怎么写的", "2024-05-01"),
      new Message($r('app.media.love05'), "权子", "有钱吗", "2024-04-28"),
      new Message($r('app.media.love06'), "君君", "在干嘛", "2024-04-26"),
      new Message($r('app.media.love07'), "王老师", "作业还没有交哦", "2024-04-03"),
      new Message($r('app.media.love08'), "老爸", "忙完了吧", "2024-02-01"),
      new Message($r('app.media.love01'), "安安", "在干嘛", "2024-02-01"),
      new Message($r('app.media.love02'), "小妹", "上班了吗最近", "2024-01-31"),
      new Message($r('app.media.love03'), "王浩", "你好，加个微信呗", "2024-01-21"),
      new Message($r('app.media.love04'), "李文长", "作业怎么写的", "2024-01-20"),
    ]
  }

  /*
   * 用户页面==服务数据
   * */
  getServices(): MyService[] {
    return [
      new MyService($r("app.media.user_s1"), "账单", ""),
      new MyService($r("app.media.user_s2"), "总资产", "新人专享福利"),
      new MyService($r("app.media.user_s3"), "余额", ""),
      new MyService($r("app.media.user_s4"), "余额宝", ""),
      new MyService($r("app.media.user_s5"), "花呗", ""),
      new MyService($r("app.media.user_s6"), "银行卡", ""),
      new MyService($r("app.media.user_s7"), "芝麻信用", ""),
      new MyService($r("app.media.user_s8"), "蚂蚁保", "开启3.5%终身用户"),
      new MyService($r("app.media.user_s9"), "网上银行", ""),
      new MyService($r("app.media.user_s10"), "公益", "")
    ]
  }
  //   我的设置页面
  getMySetting() : MySettings[] {
    return [
      new MySettings("头像", "", $r("app.media.user_tx")),
      new MySettings("昵称", "如意", ""),
      new MySettings("数字形象", "", ""),
      new MySettings("支付宝账号", "195*****61", ""),
      new MySettings("我的名片", "", $r("app.media.user_details_ewm")),
      new MySettings("我的主页", "", ""),
      new MySettings("我的档案", "", ""),
      new MySettings("我的收藏", "", ""),
    ]
  }
}
let data = new Data()
export default data