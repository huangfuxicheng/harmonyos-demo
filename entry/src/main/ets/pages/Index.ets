@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{
            console.log('111')
          })
        Image($r('app.media.icon'))
          .width(200)
          .interpolation(ImageInterpolation.High)
      }
      .width('100%')
    }
    .height('100%')
  }
}