/*
 * 用户页面==服务
 * */
export class MyService {
  img: ResourceStr
  title: string
  message: string

  constructor(img: ResourceStr, title: string, message: string) {
    this.img = img
    this.title = title
    this.message = message
  }

}