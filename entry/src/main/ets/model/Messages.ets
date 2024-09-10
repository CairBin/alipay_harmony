// 聊天界面
export class Message {
  // 头像
  img: Resource
  //  昵称
  nickName: string
  //   消息
  message: string
  //   时间
  time: string

  constructor(img: Resource, nickName: string, message: string, time: string) {
    this.img = img
    this.nickName = nickName
    this.message = message
    this.time = time
  }
}