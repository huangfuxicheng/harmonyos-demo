@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        Image($r('app.media.icon'))
          .width(200)
          .interpolation(ImageInterpolation.High)

        Text($r('app.string.width_label'))
          .fontSize(30)
          .fontWeight(700)
      }
      .width('100%')
    }
    .height('100%')
  }
}