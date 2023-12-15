class Item {
  name: string
  image: ResourceStr
  price: number
  discount?: number

  constructor(name:string,image:ResourceStr,price: number,discount?: number) {
    this.name = name
    this.image = image
    this.price = price
    this.discount = discount
  }
}

@Component
struct Header {
  private title: string
  build(){
    Row(){
      Text(this.title)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
    }
    .width('100%')
  }
}
@Entry
@Component
struct ItemPage {
  private items:Array<Item>=[
    new Item('华为Mate60','https://res.vmallres.com/pimages//uomcdn/CN/pms/202309/gbom/6942103107719/428_428_B60CE4EFDDD3AEBD2801A5E218B1EFFEmp.png',6999,500),
    new Item('华为Mate600','https://res.vmallres.com/pimages//uomcdn/CN/pms/202309/gbom/6942103107719/428_428_B60CE4EFDDD3AEBD2801A5E218B1EFFEmp.png',7999),
    new Item('华为Mate601','https://res.vmallres.com/pimages//uomcdn/CN/pms/202309/gbom/6942103107719/428_428_B60CE4EFDDD3AEBD2801A5E218B1EFFEmp.png',7999),
    new Item('华为Mate602','https://res.vmallres.com/pimages//uomcdn/CN/pms/202309/gbom/6942103107719/428_428_B60CE4EFDDD3AEBD2801A5E218B1EFFEmp.png',8999),
    new Item('华为Mate602','https://res.vmallres.com/pimages//uomcdn/CN/pms/202309/gbom/6942103107719/428_428_B60CE4EFDDD3AEBD2801A5E218B1EFFEmp.png',8999),
    new Item('华为Mate602','https://res.vmallres.com/pimages//uomcdn/CN/pms/202309/gbom/6942103107719/428_428_B60CE4EFDDD3AEBD2801A5E218B1EFFEmp.png',8999),
  ]
  build(){
    Column({space: 8}){
      Header({title:'商品列表'})
      .margin({bottom:20})
      List({space: 10}){
        ForEach(this.items,(item)=>{
        ListItem(){
          Row({space: 10}){
            Image(item.image)
              .width(100)
              .margin({right: 20})
            if(item.discount){
              Column({space: 4}){
                Text(item.name)
                  .fontSize(20)
                  .fontWeight(FontWeight.Bold)
                Text(`原价￥ ${item.price}`)
                  .fontColor('#CCC')
                  .fontSize(14)
                  .decoration({type:TextDecorationType.LineThrough})
                Text(`折扣价 ￥ ${item.price-item.discount}`)
                  .fontColor('#F36')
                  .fontSize(18)
                Text(`补贴 ￥ ${item.discount}`)
                  .fontColor('#F36')
                  .fontSize(18)
              }
              .height('100%')
              .justifyContent(FlexAlign.SpaceEvenly)
              .alignItems(HorizontalAlign.Start)
            }else{
              Column({space: 4}){
                Text(item.name)
                  .fontSize(20)
                  .fontWeight(FontWeight.Bold)
                Text(`￥ ${item.price}`)
                  .fontColor('#F36')
                  .fontSize(18)
              }
              .height('100%')
              .justifyContent(FlexAlign.SpaceEvenly)
              .alignItems(HorizontalAlign.Start)
            }
          }
          .width('100%')
          .backgroundColor('#FFF')
          .borderRadius(20)
          .height(120)
          .padding(10)
        }
        })
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#EFEFEF')
    .padding(20)
  }
}