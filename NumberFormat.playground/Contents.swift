import UIKit


// MARK: - 数字处理

//原始数字（需要先转成NSNumber类型）
let number = NSNumber(value: 1234.5078)

// numberStyle 格式化

//四舍五入的整数
let none = NumberFormatter.localizedString(from: number, number: .none)
//小数形式（以国际化格式输出 保留三位小数,第四位小数四舍五入）
let decimal = NumberFormatter.localizedString(from: number, number: .decimal)
//百分数形式
let percent = NumberFormatter.localizedString(from: number, number: .percent)
//科学计数
let scientific = NumberFormatter.localizedString(from: number, number: .scientific)
//朗读形式（英文表示）
let spellOut = NumberFormatter.localizedString(from: number, number: .spellOut)
//序数形式
let ordinal = NumberFormatter.localizedString(from: number, number: .ordinal)
//货币形式（以货币通用格式输出 保留2位小数,第三位小数四舍五入,在前面添加货币符号）
let currency = NumberFormatter.localizedString(from: number, number: .currency)
//货币形式
let currencyISOCode = NumberFormatter.localizedString(from: number,
                                                      number: .currencyISOCode)
//货币形式
let currencyPlural = NumberFormatter.localizedString(from: number,
                                                     number: .currencyPlural)
//会计计数
let currencyAccounting = NumberFormatter.localizedString(from: number,
                                                         number: .currencyAccounting)
/// 本地话
let formatter = NumberFormatter()
formatter.locale = Locale(identifier: "zh_Hans_CN")
formatter.numberStyle = .currency
let currency1 = formatter.string(from: number) ?? ""

//打印结果
print("原始值 = \(number)")
print("none = \(none)")
print("decimal = \(decimal)")
print("percent = \(percent)")
print("scientific = \(scientific)")
print("spellOut = \(spellOut)")
print("ordinal = \(ordinal)")
print("currency = \(currency)")
print("currencyISOCode = \(currencyISOCode)")
print("currencyPlural = \(currencyPlural)")
print("currencyAccounting = \(currencyAccounting)")
print("currency1 = \(currency1)")


//创建一个NumberFormatter对象
let numberFormatter = NumberFormatter()

// 设置精度
numberFormatter.roundingMode = .down

//numberFormatter.numberStyle = .none //四舍五入的整数

//设置 分割形式
numberFormatter.usesGroupingSeparator = true //设置用组分隔
numberFormatter.groupingSeparator = "," //分隔符号
numberFormatter.groupingSize = 3 //分隔位数
/// 设置最大整数位数、最小整数位数
numberFormatter.formatWidth = 10 //补齐10位
numberFormatter.paddingCharacter = "0" //不足位数用0补
numberFormatter.paddingPosition = .beforePrefix  //补在前面
/// 最大整小位数、最小小数位数
numberFormatter.maximumFractionDigits = 2 //设置小数点后最多2位
numberFormatter.minimumFractionDigits = 0 //设置小数点后最少2位（不足补0）

numberFormatter.positivePrefix = "$" //自定义前缀
numberFormatter.positiveSuffix = "元" //自定义后缀

//numberFormatter.positiveFormat = "###,###.##" //设置格式

let str = "12323.599"

//格式化
let formatNumber = numberFormatter.string(from: NumberFormatter().number(from: str)!)

//打印结果
print("格式化结果 = \(formatNumber ?? "")")
