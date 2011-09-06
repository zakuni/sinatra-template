x = "world"

yeah = -> console.log("yeah")
yeah()

$ ->
  $('#hello').click => console.log(x)

  # 入力フォームが空でないかチェック
  $('form').submit =>
    x = $('#form1').val()
    if x isnt ""
      return true
    else
      alert("フォームが空です")
      return false

