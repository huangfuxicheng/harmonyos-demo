@Component
export struct Header{
  private title: string
  build(){
    Row(){
      Image($r("app.media.back"))
        .width(30)
        .margin({right: 10})
      Text(this.title)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
      Blank()
      Image($r("app.media.refresh"))
        .width(30)
        .margin({right: 20})
    }
    .width('100%')
  }
}