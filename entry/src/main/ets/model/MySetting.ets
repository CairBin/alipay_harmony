export class MySettings {
  title: string
  message: string
  img: ResourceStr

  constructor(title: string, message: string, img: ResourceStr) {
    this.title = title
    this.message = message
    this.img = img
  }
}