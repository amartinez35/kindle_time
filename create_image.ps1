for($i=0;$i -lt 1440;$i++){
  $hours = [Math]::Floor($i/60)
  $minutes = (($i/60) - $hours) * 60
  $minutes = [Math]::Round($minutes)
  If(($minutes).tostring().length -eq 1){
    $minutes = '0' + $minutes
  }
  If(($hours).tostring().length -eq 1){
    $hours = '0' + $hours
  }
  $file = 'images/quote_'+ $hours + $minutes + '_0.png'
  convert -size 600x800 -background white -fill black -font Georgia -pointsize 320 -gravity North caption:"$hours\n$minutes" $file
}