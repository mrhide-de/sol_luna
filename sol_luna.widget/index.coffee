###

sol luna

by mrhide.de

###

#  S E T T I N G S

# language settings - 'en' or 'de'
lang = 'en'

# show the date - true or false
showCal = true

# show info - true or false
showEvents = true
# if set to false you can define a face title
watchFaceTitle = 'sol luna'

# set daylight saving time - true or false
dayLightSaving = false

# set daylight variables for your location
# go to https://www.timeanddate.com/sun/
# enter your town or a town nearby
# get the daylight total of 20th March
dl_equ_h = 12 # daylight at equinox in hours and minutes
dl_equ_min = 9
# get the daylight total of 21st June
dl_sol_h = 16 # daylight at solstice in hours and minutes
dl_sol_min = 50


# refresh settings - default: 60000 = 60sec
refreshFrequency: 60000

# Check out style section to find more options on layout and colors!

# Note
# It's easy to add another language. The related arrays are monthnames, weekdaynames and special_events.

command: "date +%H,%M,%m,%j,%Y,%d,%u"

style: """

  /*  S T Y L E  S E T T I N G S  */

  /* global zoom */
  glozoo = 1.2

  /* position */
  left: 20px
  top: 580px

  /* color annual ring */
  colannualring = rgba(255,255,255,0.4)

  /* color daylight ring */
  coldaylight = rgb(18, 35, 148)

  /* color moon */
  colmoonellipse = rgba(255,255,255,0.2)
  colmoonblack = rgb(18, 35, 148)
  colmoonwhite = rgba(255,255,255,1)

  /* color time display */
  coldisplay = rgba(255,255,255,0.8)

  /* color text */
  coltext = rgba(255,0,0,1)

  /* color sun */
  colsun = rgba(255,0,0,1)

  /* color watch background */
  background: rgba(0, 15, 31, .6)

  /*  S E T T I N G S  E N D  */

  /* main styles, render output and update ahead - edit with caution! */

  box-sizing: border-box
  margin-left: 15px * glozoo
  margin-bottom: 15px * glozoo
  width: 220px * glozoo
  height: 220px * glozoo
  padding: 2px * glozoo
  border-radius: 50%
  font-family: Arial
  svg
    width: 216px * glozoo
    height: 216px * glozoo
    position: absolute
    z-index: 2
  #annualring
    stroke: colannualring
    stroke-width: 3.5 * glozoo
    fill: none
    stroke-dasharray: 626.5
  #ringtext
    fill: colannualring
    font-size: 6px * glozoo
    letter-spacing: 1px * glozoo
  #daylight-g circle, #daylight-d circle
    stroke: coldaylight
    stroke-width: 3.5 * glozoo
  #daylightfir, #daylightsec
    fill: none
    stroke-dasharray: 546
    stroke-dashoffset: 274
  #timewrap
    position: absolute
    left: 55px * glozoo
    top: 92px * glozoo
    width: 110px * glozoo
    height: 38px * glozoo
    background-color: coldisplay
    font-size: 31px * glozoo
    font-smoothing: antialiased
    color: black
    border-radius: 20.5px * glozoo
    overflow: hidden
    box-shadow: inset -2px 2px 4px rgba(0,0,0,.2), inset 2px 2px 4px rgba(0,0,0,.6), inset 2px -2px 4px rgba(0,0,0,.2), inset -2px -2px 4px rgba(0,0,0,.2)
  .timegrid
    position: relative
    display: inline-block
    top: -9px * glozoo
    left: -5px * glozoo
    width: 21px * glozoo
    height: 50px * glozoo
    border: 1px*glozoo solid rgba(0,0,0,0.15)
    margin: 0 0 0 11px * glozoo
  .timegrid#secondtg
    width: 9px * glozoo
  .digits
    position: absolute
    top: 0
    width: 25px * glozoo
    padding: 0
    margin-top: 3px * glozoo
    margin-left: -6px * glozoo
    list-style: none
    transition-property: top
    transition-duration: 1.5s
    transition-timing-function: ccubic-bezier(0.68, -0.55, 0.265, 1.55)s
  .digits li
    height: 36px * glozoo
  #hours-one
    left: 15px * glozoo
  #hours-two
    left: 37px * glozoo
  #hours-points
    left: 55px * glozoo
    width: 15px * glozoo
    line-height: 31px * glozoo
    font-size: 32px * glozoo
    text-indent: .2px * glozoo
  #minutes-three
    left: 67px * glozoo
  #minutes-four
    left: 88px * glozoo
  #kreismondwrapwrap
    position: absolute
    top: 0
    left: 0
    height: 100%
    width: 100%
    transform: rotate(0deg)
  #kreismondwrap
    margin: 33px * glozoo auto
    height: 10px * glozoo
    width: 10px * glozoo
    background-color: colmoonblack
    border-radius: 8px * glozoo
    overflow: hidden
    transform: rotate(0deg)
  #kreismond
    position: relative
    height: 10px * glozoo
    width: 10px * glozoo
    border-top-width: 0
    border-bottom-width: 0
    border-style: solid
    border-color: colmoonwhite
    border-radius: 7px * glozoo
  #moonellipse
    position: absolute
    top: 38px * glozoo
    left: 38px * glozoo
    width: 144px * glozoo
    height: 144px * glozoo
    border: .5px*glozoo solid colmoonellipse
    border-radius: 50%
    border-top: none
    background: transparent
    z-index: -1
  #helioswrap
    position: absolute
    top: 0
    left: 0
    height: 100%
    width: 100%
    transform: rotate(0deg)
    z-index: 1
  #helios
    height: 8px * glozoo
    width: 8px * glozoo
    margin: 18.5px*glozoo auto
    background-color: colsun
    border-radius: 50%
  #calmonth
    position: absolute
    top: 0
    left: 0
    height: 100%
    width: 100%
    line-height: 422px * glozoo
    text-align: center
    color: colannualring
    font-size: 7.5px * glozoo
    letter-spacing: 1.2px * glozoo
    transform: rotate(0deg)
  #logos
    position: absolute
    top: 52px * glozoo
    left: 62px * glozoo
    width: 100px * glozoo
    letter-spacing: 1.5px * glozoo
    font-size: 7px * glozoo
    text-align: center
    color: coltext
  #daywrap
    position: absolute
    bottom: 60px * glozoo
    left: 62px * glozoo
    width: 100px * glozoo
    letter-spacing: 1.5px * glozoo
    font-size: 7px * glozoo
    text-align: center
    color: colannualring
  #getzoom
    position: absolute
    bottom: 0
    right: 0
    z-index: 1000 * glozoo
    border-color: colmoonblack
    background-color: colmoonwhite
"""
render: (output) -> """
<div id="helioswrap">
<div id="helios"></div>
</div>

<svg version="1.1" id="clockie" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 215 215" enable-background="new 0 0 215 215" xml:space="preserve">
  <g id="g19" transform="translate(216, 0) rotate(90)">
     <circle stroke-linecap="round" id="annualring" cx="108" cy="108" r="100"/>
  </g>
  <g id="daylight-g" transform="translate(216, 0) rotate(90)">
     <circle stroke-linecap="round" id="daylightfir" cx="108" cy="107.5" r="87" fill="none"/>
  </g>
  <g transform="translate(216, 0) scale(-1,1)">
    <g id="daylight-d" transform="translate(216,0) rotate(90)">
       <circle stroke-linecap="round" id="daylightsec" cx="108" cy="107.5" r="87" fill="none"/>
    </g>
  </g>
</svg>

<div id="logos">sol luna</div>

<div id="timewrap">
  <ul class="digits" id="hours-one"><li>0</li><li>1</li><li>2</li><li>0</li></ul>
  <ul class="digits" id="hours-two"><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li><li>7</li><li>8</li><li>9</li><li>0</li></ul>
  <div class="digits" id="hours-points">:</div>
  <ul class="digits" id="minutes-three"><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>0</li></ul>
  <ul class="digits" id="minutes-four"><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li><li>7</li><li>8</li><li>9</li><li>0</li></ul>
  <div class="timegrid"></div>
  <div class="timegrid" id="secondtg"></div>
  <div class="timegrid"></div>
</div>

<div id="kreismondwrapwrap">
  <div id="kreismondwrap">
    <div id="kreismond"></div>
  </div>
  <div id="moonellipse"></div>
</div>

<div id="daywrap"></div>
<div id="getzoom"></div>
"""

update: (output) ->

  # set up defaults
  if lang == '' || lanf?
    lang = 'en'
  if showCal?
    showCal = false
  if showEvents?
    showEvents = true
  if watchFaceTitle == '' || watchFaceTitle?
    watchFaceTitle = 'sol luna'
  # if dayLightSaving?
  #   dayLightSaving = false
  if dl_equ_h == '' || dl_equ_h?
    dl_equ_h = 12
  if dl_equ_min == '' || dl_equ_min?
    dl_equ_min = 9
  if dl_sol_h == '' || dl_sol_h?
    dl_sol_h = 16
  if dl_sol_min == '' || dl_sol_min?
    dl_sol_min = 50


  # setting array
  time = output.split(',')
  # make sure all elements are integers
  for key, value of time
    time[key] = +time[key]
  # time[0] hour, time[1] minute, time[2] month, time[3] day of year, time[4] year, time[5] day of month, time[6] day of week, time[7] moon phases, time[8] daylight, time[9] corrected day of year (+9days)

  #  T E S T
  # time[0] = 16
  # time[1] = 23


  #  A N N U A L  R I N G

  $('#annualring').css('stroke-dashoffset', (366-time[3])*1.712 )


  #  C A L E N D E R

  if showCal == true
    if lang == 'de'
      monthnames = ['JAN','FEB','MRZ','APR','MAI','JUN','JUL','AUG','SEP','OKT','NOV','DEZ']
      weekdaynames = ['MO','DI','MI','DO','FR','SA','SO']
      $('#daywrap').text( weekdaynames[time[6]-1] + ' ' + time[5] + '. ' + monthnames[time[2]-1] + ' ' + time[4])
    if lang == 'en'
      monthnames = ['JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC']
      weekdaynames = ['MON','TUE','WED','THU','FRI','SAT','SUN']
      $('#daywrap').text( weekdaynames[time[6]-1] + ' ' + time[5] + ' ' + monthnames[time[2]-1] + ' ' + time[4])


  #  D A Y L I G H T

  # set a 10 day shift
  time[9] = time[3] + 10
  if time[9] > 366
    time[9] = time[9] - 365

  # 15 deg off to turn back time : )
  if dayLightSaving
    daylisa = 15
  else
    daylisa = 0

  # calculate daylight
  dlaverage = dl_equ_h + dl_equ_min*5/300 # calculate hours with minutes as decimals
  dlsolstice = dl_sol_h + dl_sol_min*5/300
  dldifference = dlsolstice - dlaverage # difference between equinox and solstice
  DaysInYear = time[9]
  daylighthours = dlaverage - dldifference * Math.sin( ( 2 * Math.PI * DaysInYear / 365 ) + ( Math.PI / 2 ) ) # calculate hours of daylight

  # transfer result to dashoffset scale (546 for the entire circle)
  time[8] = 273+(daylighthours/24*273)+8

  # render result
  $('#daylightfir').css('stroke-dashoffset', time[8])
  $('#daylightsec').css('stroke-dashoffset', time[8])

  # set the sun
  $('#helioswrap').css('transform','rotate('+( time[0] * 15 + time[1] * 0.25 + 180 - daylisa)+'deg)')


  #  M O O N   P H A S E S

  # calculate todays phase  (by John Conway)
  jcyear = time[4]
  jcmonth = time[2]
  jcday = time[5]
  jcr = jcyear % 100
  jcr %= 19
  jcr -= 19 if jcr > 9
  jcr = (jcr * 11) % 30 + jcmonth + jcday
  jcr += 2 if jcmonth < 3
  jcr -= if jcyear < 2000 then 4 else 8.3
  jcr = Math.floor(jcr + 0.5) % 30
  jcr += 30 if jcr < 0
  time[7] = Math.floor(jcr*8/3) / 10

  # test moon
  # time[7] = 6.7

  # prepare moon phases
  moonfactor = (time[7]%2)*3
  mooncirclefactor = time[7] * 45 + 180
  moonradius = parseInt($('#kreismond').css('height'), 10)
  moonblack = $('#getzoom').css('border-color')
  moonwhite = $('#getzoom').css('background-color')
  if time[7] >= 0 && time[7] < 2
    mondphleft = 0
    mondphright = moonfactor
    mondphcolBack = moonblack
    mondphcolFor = moonwhite
    mondphbreite = moonradius - mondphright

  if time[7] >= 2 && time[7] < 4
    mondphleft = moonradius/2-moonfactor
    mondphright = 0
    mondphcolBack = moonwhite
    mondphcolFor = moonblack
    mondphbreite = moonradius

  if time[7] >= 4 && time[7] < 6
    mondphleft = 0
    mondphright = moonfactor
    mondphcolBack = moonwhite
    mondphcolFor = moonblack
    mondphbreite = moonradius - mondphright

  if time[7] >= 6 && time[7] < 8
    mondphleft = moonradius/2-moonfactor
    mondphright = 0
    mondphcolBack = moonblack
    mondphcolFor = moonwhite
    mondphbreite = moonradius

  # render moon phases
  $('#kreismond').css({'border-right-width': mondphright+'px', 'width': mondphbreite+'px', 'border-left-width': mondphleft+'px', 'border-color': mondphcolFor})
  $('#kreismondwrap').css({'background-color': mondphcolBack, 'transform': 'rotate(-'+mooncirclefactor+'deg)'})
  $('#kreismondwrapwrap').css('transform', 'rotate('+mooncirclefactor+'deg)')


  #  S P E C I A L  E V E N T S

  if showEvents == true

    # set vocabulary
    if lang == 'de'
      special_events = ['sol luna','Neumond','Vollmond','Sonnenwende','Sonnenwende','Äquinoktium','Mitternacht']
    if lang == 'en'
      special_events = ['sol luna','new moon','full moon','summer solstice','winter solstice','equinox','midnight']
    if watchFaceTitle != ''
      special_events[0] = watchFaceTitle

    # checks for special dates and sets priorities
    aev = 0
    if time[7] == 0 # new moon
      aev = 1
    if time[7] == 4 # full moon
      aev = 2
    if time[9] == 183 # summer solstice
      aev = 3
    if time[9] == 0 # winter solstice
      aev = 4
    if time[9] == 91 || time[9] == 274 # Equinox
      aev = 5
    if time[0] == 0 && time[1] == 0 # midnight
      aev = 6
    $('#logos').text(special_events[aev])
  else
    $('#logos').text(watchFaceTitle)


  #  T I M E

  digitreset = [0,0,0,0] # stores which digit is in need of resetting to zero without transition
  digitsnames = ['#hours-one','#hours-two','#minutes-three','#minutes-four'] # digits ids
  thone = (time[0]-time[0]%10)/10 # hour decadic
  thtwo = time[0]%10 # hour single
  tmthree = (time[1]-time[1]%10)/10 # minute decadic
  tmfour = time[1]%10 # minute single

  # prepare for animation
  if thone == 0
    thone = 3 # go to the additional zero
    digitreset[0] = 1 # enlist for reset
  if thtwo == 0
    thtwo = 10
    digitreset[1] = 1
  if tmthree == 0
    tmthree = 6
    digitreset[2] = 1
  if tmfour == 0
    tmfour = 10
    digitreset[3] = 1

  # using z-indexes as memory bank
  zoomfactor = $('#getzoom').css('z-index') / 1000
  # I had to gross it up to 1000. Why doesn't 1.1 * 100 work as z-index??

  # render time digits
  if thone != parseInt($('#hours-one').css('z-index'),10) # change digit, if time has changed
    $('#hours-one').css('top', thone * -36 * zoomfactor) # apply new top
    $('#hours-one').css('z-index', thone)

  if thtwo != parseInt($('#hours-two').css('z-index'),10)
    $('#hours-two').css('top', thtwo * -36 * zoomfactor)
    $('#hours-two').css('z-index', thtwo)

  if tmthree != parseInt($('#minutes-three').css('z-index'),10)
    $('#minutes-three').css('top', tmthree * -36 * zoomfactor)
    $('#minutes-three').css('z-index', tmthree)

  if tmfour != parseInt($('#minutes-four').css('z-index'),10)
    $('#minutes-four').css('top', tmfour * -36 * zoomfactor)
    $('#minutes-four').css('z-index', tmfour)

  # reset time digits
    if digitreset[0] + digitreset[1] + digitreset[2] + digitreset[3] != 0
      setTimeout ->
        $('#hours-one, #hours-two, #minutes-three, #minutes-four').css('transition-property', 'none') # disengage transition
        for i,k in digitreset # check for digits and set to 0
          if i == 1
            $(digitsnames[k]).css('top',0)
            digitreset[k] = 0
      , 2000
      $('#hours-one, #hours-two, #minutes-three, #minutes-four').css('transition-property', 'top') # engage transition


# Big thanks to the people of Übersicht!
