--[[
     _      ___         ____  ______
    | | /| / (_)__  ___/ / / / /  _/
    | |/ |/ / / _ \/ _  / /_/ // /  
    |__/|__/_/_//_/\_,_/\____/___/
    
    by .ftgs#0 (Discord)
    
    This script is NOT intended to be modified.
    To view the source code, see the 'Src' folder on the official GitHub repository.
    
    Author: .ftgs#0 (Discord User)
    Github: https://github.com/Footagesus/WindUI
    Discord: https://discord.gg/84CNGY5wAV
]]


local a a={cache={}, load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}end return a.cache[b].c end}do function a.a()return{
Name="Dark",

Accent="#181818",
Outline="#FFFFFF",

Text="#FFFFFF",
PlaceholderText="#999999",
}end function a.b()
return{
Name="Light",

Accent="#FFFFFF",
Outline="#000000",

Text="#000000",
PlaceholderText="#777777"
}end function a.c()
return{
Name="Lime",

Accent="#ecfccb",
Outline="#FFFFFF",

Text="#1a2e05",
PlaceholderText="#999999"
}end function a.d()
return{
Dark=a.load'a',
Light=a.load'b',
Lime=a.load'c',
}end function a.e()
local b={accessibility=
{ImageRectPosition=
Vector2.new(0,0),_Size=
Vector2.new(48,48),
},activity=
{ImageRectPosition=
Vector2.new(48,0),_Size=
Vector2.new(48,48),
},
["air-vent"]={ImageRectPosition=
Vector2.new(96,0),_Size=
Vector2.new(48,48),
},
["alarm-clock-check"]={ImageRectPosition=
Vector2.new(144,0),_Size=
Vector2.new(48,48),
},album=
{ImageRectPosition=
Vector2.new(192,0),_Size=
Vector2.new(48,48),
},
["clock-9"]={ImageRectPosition=
Vector2.new(240,0),_Size=
Vector2.new(48,48),
},
["alarm-smoke"]={ImageRectPosition=
Vector2.new(288,0),_Size=
Vector2.new(48,48),
},
["align-center"]={ImageRectPosition=
Vector2.new(336,0),_Size=
Vector2.new(48,48),
},
["align-center-vertical"]={ImageRectPosition=
Vector2.new(384,0),_Size=
Vector2.new(48,48),
},
["align-end-vertical"]={ImageRectPosition=
Vector2.new(432,0),_Size=
Vector2.new(48,48),
},
["align-horizontal-distribute-end"]={ImageRectPosition=
Vector2.new(480,0),_Size=
Vector2.new(48,48),
},
["align-horizontal-distribute-start"]={ImageRectPosition=
Vector2.new(528,0),_Size=
Vector2.new(48,48),
},
["align-horizontal-justify-center"]={ImageRectPosition=
Vector2.new(576,0),_Size=
Vector2.new(48,48),
},
["align-horizontal-justify-start"]={ImageRectPosition=
Vector2.new(624,0),_Size=
Vector2.new(48,48),
},
["align-horizontal-space-around"]={ImageRectPosition=
Vector2.new(672,0),_Size=
Vector2.new(48,48),
},
["align-left"]={ImageRectPosition=
Vector2.new(720,0),_Size=
Vector2.new(48,48),
},
["a-arrow-up"]={ImageRectPosition=
Vector2.new(768,0),_Size=
Vector2.new(48,48),
},airplay=
{ImageRectPosition=
Vector2.new(816,0),_Size=
Vector2.new(48,48),
},
["align-start-vertical"]={ImageRectPosition=
Vector2.new(864,0),_Size=
Vector2.new(48,48),
},
["align-vertical-distribute-end"]={ImageRectPosition=
Vector2.new(912,0),_Size=
Vector2.new(48,48),
},
["align-vertical-distribute-start"]={ImageRectPosition=
Vector2.new(960,0),_Size=
Vector2.new(48,48),
},
["align-vertical-justify-center"]={ImageRectPosition=
Vector2.new(1008,0),_Size=
Vector2.new(48,48),
},
["align-vertical-justify-start"]={ImageRectPosition=
Vector2.new(1056,0),_Size=
Vector2.new(48,48),
},
["align-vertical-space-between"]={ImageRectPosition=
Vector2.new(1104,0),_Size=
Vector2.new(48,48),
},ambulance=
{ImageRectPosition=
Vector2.new(1152,0),_Size=
Vector2.new(48,48),
},amphora=
{ImageRectPosition=
Vector2.new(1200,0),_Size=
Vector2.new(48,48),
},anchor=
{ImageRectPosition=
Vector2.new(1248,0),_Size=
Vector2.new(48,48),
},annoyed=
{ImageRectPosition=
Vector2.new(1296,0),_Size=
Vector2.new(48,48),
},anvil=
{ImageRectPosition=
Vector2.new(1344,0),_Size=
Vector2.new(48,48),
},
["app-window-mac"]={ImageRectPosition=
Vector2.new(1392,0),_Size=
Vector2.new(48,48),
},apple=
{ImageRectPosition=
Vector2.new(1440,0),_Size=
Vector2.new(48,48),
},
["archive-x"]={ImageRectPosition=
Vector2.new(1488,0),_Size=
Vector2.new(48,48),
},armchair=
{ImageRectPosition=
Vector2.new(1536,0),_Size=
Vector2.new(48,48),
},
["arrow-big-down-dash"]={ImageRectPosition=
Vector2.new(1584,0),_Size=
Vector2.new(48,48),
},
["arrow-big-left-dash"]={ImageRectPosition=
Vector2.new(1632,0),_Size=
Vector2.new(48,48),
},asterisk=
{ImageRectPosition=
Vector2.new(1680,0),_Size=
Vector2.new(48,48),
},
["arrow-big-right-dash"]={ImageRectPosition=
Vector2.new(1728,0),_Size=
Vector2.new(48,48),
},
["arrow-big-up"]={ImageRectPosition=
Vector2.new(1776,0),_Size=
Vector2.new(48,48),
},
["arrow-down-1-0"]={ImageRectPosition=
Vector2.new(1824,0),_Size=
Vector2.new(48,48),
},
["arrow-down-from-line"]={ImageRectPosition=
Vector2.new(0,48),_Size=
Vector2.new(48,48),
},
["arrow-down-left"]={ImageRectPosition=
Vector2.new(48,48),_Size=
Vector2.new(48,48),
},
["arrow-down-to-dot"]={ImageRectPosition=
Vector2.new(96,48),_Size=
Vector2.new(48,48),
},atom=
{ImageRectPosition=
Vector2.new(144,48),_Size=
Vector2.new(48,48),
},
["arrow-down-up"]={ImageRectPosition=
Vector2.new(192,48),_Size=
Vector2.new(48,48),
},
["arrow-down-z-a"]={ImageRectPosition=
Vector2.new(240,48),_Size=
Vector2.new(48,48),
},ban=
{ImageRectPosition=
Vector2.new(288,48),_Size=
Vector2.new(48,48),
},
["arrow-left-right"]={ImageRectPosition=
Vector2.new(336,48),_Size=
Vector2.new(48,48),
},
["arrow-right"]={ImageRectPosition=
Vector2.new(384,48),_Size=
Vector2.new(48,48),
},
["arrow-right-left"]={ImageRectPosition=
Vector2.new(432,48),_Size=
Vector2.new(48,48),
},
["arrow-right-to-line"]={ImageRectPosition=
Vector2.new(480,48),_Size=
Vector2.new(48,48),
},
["arrow-up"]={ImageRectPosition=
Vector2.new(528,48),_Size=
Vector2.new(48,48),
},
["arrow-up-a-z"]={ImageRectPosition=
Vector2.new(576,48),_Size=
Vector2.new(48,48),
},
["arrow-up-from-dot"]={ImageRectPosition=
Vector2.new(624,48),_Size=
Vector2.new(48,48),
},
["arrow-up-left"]={ImageRectPosition=
Vector2.new(672,48),_Size=
Vector2.new(48,48),
},
["arrow-up-right"]={ImageRectPosition=
Vector2.new(720,48),_Size=
Vector2.new(48,48),
},
["badge-x"]={ImageRectPosition=
Vector2.new(768,48),_Size=
Vector2.new(48,48),
},
["arrow-up-wide-narrow"]={ImageRectPosition=
Vector2.new(816,48),_Size=
Vector2.new(48,48),
},
["arrow-up-z-a"]={ImageRectPosition=
Vector2.new(864,48),_Size=
Vector2.new(48,48),
},
["arrow-down-wide-narrow"]={ImageRectPosition=
Vector2.new(912,48),_Size=
Vector2.new(48,48),
},
["badge-indian-rupee"]={ImageRectPosition=
Vector2.new(960,48),_Size=
Vector2.new(48,48),
},award=
{ImageRectPosition=
Vector2.new(1008,48),_Size=
Vector2.new(48,48),
},axe=
{ImageRectPosition=
Vector2.new(1056,48),_Size=
Vector2.new(48,48),
},baby=
{ImageRectPosition=
Vector2.new(1104,48),_Size=
Vector2.new(48,48),
},badge=
{ImageRectPosition=
Vector2.new(1152,48),_Size=
Vector2.new(48,48),
},
["badge-dollar-sign"]={ImageRectPosition=
Vector2.new(1200,48),_Size=
Vector2.new(48,48),
},
["badge-help"]={ImageRectPosition=
Vector2.new(1248,48),_Size=
Vector2.new(48,48),
},
["badge-check"]={ImageRectPosition=
Vector2.new(1296,48),_Size=
Vector2.new(48,48),
},
["badge-percent"]={ImageRectPosition=
Vector2.new(1344,48),_Size=
Vector2.new(48,48),
},
["badge-russian-ruble"]={ImageRectPosition=
Vector2.new(1392,48),_Size=
Vector2.new(48,48),
},bell=
{ImageRectPosition=
Vector2.new(1440,48),_Size=
Vector2.new(48,48),
},
["baggage-claim"]={ImageRectPosition=
Vector2.new(1488,48),_Size=
Vector2.new(48,48),
},
["beer-off"]={ImageRectPosition=
Vector2.new(1536,48),_Size=
Vector2.new(48,48),
},banana=
{ImageRectPosition=
Vector2.new(1584,48),_Size=
Vector2.new(48,48),
},
["battery-medium"]={ImageRectPosition=
Vector2.new(1632,48),_Size=
Vector2.new(48,48),
},
["align-justify"]={ImageRectPosition=
Vector2.new(1680,48),_Size=
Vector2.new(48,48),
},
["battery-warning"]={ImageRectPosition=
Vector2.new(1728,48),_Size=
Vector2.new(48,48),
},
["bed-double"]={ImageRectPosition=
Vector2.new(1776,48),_Size=
Vector2.new(48,48),
},
["bell-dot"]={ImageRectPosition=
Vector2.new(1824,48),_Size=
Vector2.new(48,48),
},
["bell-plus"]={ImageRectPosition=
Vector2.new(0,96),_Size=
Vector2.new(48,48),
},bitcoin=
{ImageRectPosition=
Vector2.new(48,96),_Size=
Vector2.new(48,48),
},blend=
{ImageRectPosition=
Vector2.new(96,96),_Size=
Vector2.new(48,48),
},
["between-horizontal-start"]={ImageRectPosition=
Vector2.new(144,96),_Size=
Vector2.new(48,48),
},
["book-open-text"]={ImageRectPosition=
Vector2.new(192,96),_Size=
Vector2.new(48,48),
},bot=
{ImageRectPosition=
Vector2.new(240,96),_Size=
Vector2.new(48,48),
},brackets=
{ImageRectPosition=
Vector2.new(288,96),_Size=
Vector2.new(48,48),
},brush=
{ImageRectPosition=
Vector2.new(336,96),_Size=
Vector2.new(48,48),
},
["building-2"]={ImageRectPosition=
Vector2.new(384,96),_Size=
Vector2.new(48,48),
},calendar=
{ImageRectPosition=
Vector2.new(432,96),_Size=
Vector2.new(48,48),
},camera=
{ImageRectPosition=
Vector2.new(480,96),_Size=
Vector2.new(48,48),
},
["calendar-range"]={ImageRectPosition=
Vector2.new(528,96),_Size=
Vector2.new(48,48),
},
["calendar-minus"]={ImageRectPosition=
Vector2.new(576,96),_Size=
Vector2.new(48,48),
},
["calendar-search"]={ImageRectPosition=
Vector2.new(624,96),_Size=
Vector2.new(48,48),
},
["calendar-x"]={ImageRectPosition=
Vector2.new(672,96),_Size=
Vector2.new(48,48),
},castle=
{ImageRectPosition=
Vector2.new(720,96),_Size=
Vector2.new(48,48),
},
["chef-hat"]={ImageRectPosition=
Vector2.new(768,96),_Size=
Vector2.new(48,48),
},
["chevron-left"]={ImageRectPosition=
Vector2.new(816,96),_Size=
Vector2.new(48,48),
},
["chevrons-right-left"]={ImageRectPosition=
Vector2.new(864,96),_Size=
Vector2.new(48,48),
},
["circle-arrow-right"]={ImageRectPosition=
Vector2.new(912,96),_Size=
Vector2.new(48,48),
},
["circle-check"]={ImageRectPosition=
Vector2.new(960,96),_Size=
Vector2.new(48,48),
},
["circle-chevron-down"]={ImageRectPosition=
Vector2.new(1008,96),_Size=
Vector2.new(48,48),
},
["circle-chevron-up"]={ImageRectPosition=
Vector2.new(1056,96),_Size=
Vector2.new(48,48),
},
["circle-ellipsis"]={ImageRectPosition=
Vector2.new(1104,96),_Size=
Vector2.new(48,48),
},
["clock-11"]={ImageRectPosition=
Vector2.new(1152,96),_Size=
Vector2.new(48,48),
},clipboard=
{ImageRectPosition=
Vector2.new(1200,96),_Size=
Vector2.new(48,48),
},
["clock-5"]={ImageRectPosition=
Vector2.new(1248,96),_Size=
Vector2.new(48,48),
},
["clock-8"]={ImageRectPosition=
Vector2.new(1296,96),_Size=
Vector2.new(48,48),
},
["cloud-rain-wind"]={ImageRectPosition=
Vector2.new(1344,96),_Size=
Vector2.new(48,48),
},cloudy=
{ImageRectPosition=
Vector2.new(1392,96),_Size=
Vector2.new(48,48),
},clover=
{ImageRectPosition=
Vector2.new(1440,96),_Size=
Vector2.new(48,48),
},bold=
{ImageRectPosition=
Vector2.new(1488,96),_Size=
Vector2.new(48,48),
},bike=
{ImageRectPosition=
Vector2.new(1536,96),_Size=
Vector2.new(48,48),
},blinds=
{ImageRectPosition=
Vector2.new(1584,96),_Size=
Vector2.new(48,48),
},bone=
{ImageRectPosition=
Vector2.new(1632,96),_Size=
Vector2.new(48,48),
},
["bookmark-x"]={ImageRectPosition=
Vector2.new(1680,96),_Size=
Vector2.new(48,48),
},
["bot-message-square"]={ImageRectPosition=
Vector2.new(1728,96),_Size=
Vector2.new(48,48),
},check=
{ImageRectPosition=
Vector2.new(1776,96),_Size=
Vector2.new(48,48),
},
["briefcase-conveyor-belt"]={ImageRectPosition=
Vector2.new(1824,96),_Size=
Vector2.new(48,48),
},cake=
{ImageRectPosition=
Vector2.new(0,144),_Size=
Vector2.new(48,48),
},
["calendar-arrow-down"]={ImageRectPosition=
Vector2.new(48,144),_Size=
Vector2.new(48,48),
},
["calendar-plus"]={ImageRectPosition=
Vector2.new(96,144),_Size=
Vector2.new(48,48),
},cannabis=
{ImageRectPosition=
Vector2.new(144,144),_Size=
Vector2.new(48,48),
},caravan=
{ImageRectPosition=
Vector2.new(192,144),_Size=
Vector2.new(48,48),
},cctv=
{ImageRectPosition=
Vector2.new(240,144),_Size=
Vector2.new(48,48),
},
["bean-off"]={ImageRectPosition=
Vector2.new(288,144),_Size=
Vector2.new(48,48),
},
["circle-arrow-down"]={ImageRectPosition=
Vector2.new(336,144),_Size=
Vector2.new(48,48),
},
["chevron-last"]={ImageRectPosition=
Vector2.new(384,144),_Size=
Vector2.new(48,48),
},
["chevrons-down-up"]={ImageRectPosition=
Vector2.new(432,144),_Size=
Vector2.new(48,48),
},
["chevrons-right"]={ImageRectPosition=
Vector2.new(480,144),_Size=
Vector2.new(48,48),
},
["circle-user"]={ImageRectPosition=
Vector2.new(528,144),_Size=
Vector2.new(48,48),
},
["circle-alert"]={ImageRectPosition=
Vector2.new(576,144),_Size=
Vector2.new(48,48),
},
["circle-off"]={ImageRectPosition=
Vector2.new(624,144),_Size=
Vector2.new(48,48),
},archive=
{ImageRectPosition=
Vector2.new(672,144),_Size=
Vector2.new(48,48),
},
["circle-user-round"]={ImageRectPosition=
Vector2.new(720,144),_Size=
Vector2.new(48,48),
},
["clipboard-paste"]={ImageRectPosition=
Vector2.new(768,144),_Size=
Vector2.new(48,48),
},
["clipboard-pen"]={ImageRectPosition=
Vector2.new(816,144),_Size=
Vector2.new(48,48),
},
["clipboard-type"]={ImageRectPosition=
Vector2.new(864,144),_Size=
Vector2.new(48,48),
},
["cloud-download"]={ImageRectPosition=
Vector2.new(912,144),_Size=
Vector2.new(48,48),
},
["cloud-off"]={ImageRectPosition=
Vector2.new(960,144),_Size=
Vector2.new(48,48),
},
["cloud-snow"]={ImageRectPosition=
Vector2.new(1008,144),_Size=
Vector2.new(48,48),
},code=
{ImageRectPosition=
Vector2.new(1056,144),_Size=
Vector2.new(48,48),
},
["contact-round"]={ImageRectPosition=
Vector2.new(1104,144),_Size=
Vector2.new(48,48),
},copyright=
{ImageRectPosition=
Vector2.new(1152,144),_Size=
Vector2.new(48,48),
},cpu=
{ImageRectPosition=
Vector2.new(1200,144),_Size=
Vector2.new(48,48),
},crop=
{ImageRectPosition=
Vector2.new(1248,144),_Size=
Vector2.new(48,48),
},
["columns-4"]={ImageRectPosition=
Vector2.new(1296,144),_Size=
Vector2.new(48,48),
},computer=
{ImageRectPosition=
Vector2.new(1344,144),_Size=
Vector2.new(48,48),
},contrast=
{ImageRectPosition=
Vector2.new(1392,144),_Size=
Vector2.new(48,48),
},cuboid=
{ImageRectPosition=
Vector2.new(1440,144),_Size=
Vector2.new(48,48),
},cylinder=
{ImageRectPosition=
Vector2.new(1488,144),_Size=
Vector2.new(48,48),
},
["dice-5"]={ImageRectPosition=
Vector2.new(1536,144),_Size=
Vector2.new(48,48),
},eye=
{ImageRectPosition=
Vector2.new(1584,144),_Size=
Vector2.new(48,48),
},
["arrow-up-1-0"]={ImageRectPosition=
Vector2.new(1632,144),_Size=
Vector2.new(48,48),
},fence=
{ImageRectPosition=
Vector2.new(1680,144),_Size=
Vector2.new(48,48),
},
["file-axis-3d"]={ImageRectPosition=
Vector2.new(1728,144),_Size=
Vector2.new(48,48),
},
["file-text"]={ImageRectPosition=
Vector2.new(1776,144),_Size=
Vector2.new(48,48),
},
["file-warning"]={ImageRectPosition=
Vector2.new(1824,144),_Size=
Vector2.new(48,48),
},files=
{ImageRectPosition=
Vector2.new(0,192),_Size=
Vector2.new(48,48),
},
["fish-off"]={ImageRectPosition=
Vector2.new(48,192),_Size=
Vector2.new(48,48),
},
["flower-2"]={ImageRectPosition=
Vector2.new(96,192),_Size=
Vector2.new(48,48),
},beef=
{ImageRectPosition=
Vector2.new(144,192),_Size=
Vector2.new(48,48),
},candy=
{ImageRectPosition=
Vector2.new(192,192),_Size=
Vector2.new(48,48),
},bird=
{ImageRectPosition=
Vector2.new(240,192),_Size=
Vector2.new(48,48),
},blocks=
{ImageRectPosition=
Vector2.new(288,192),_Size=
Vector2.new(48,48),
},
["bluetooth-searching"]={ImageRectPosition=
Vector2.new(336,192),_Size=
Vector2.new(48,48),
},book=
{ImageRectPosition=
Vector2.new(384,192),_Size=
Vector2.new(48,48),
},
["book-down"]={ImageRectPosition=
Vector2.new(432,192),_Size=
Vector2.new(48,48),
},
["book-image"]={ImageRectPosition=
Vector2.new(480,192),_Size=
Vector2.new(48,48),
},
["book-plus"]={ImageRectPosition=
Vector2.new(528,192),_Size=
Vector2.new(48,48),
},
["book-up"]={ImageRectPosition=
Vector2.new(576,192),_Size=
Vector2.new(48,48),
},
["bookmark-check"]={ImageRectPosition=
Vector2.new(624,192),_Size=
Vector2.new(48,48),
},box=
{ImageRectPosition=
Vector2.new(672,192),_Size=
Vector2.new(48,48),
},boxes=
{ImageRectPosition=
Vector2.new(720,192),_Size=
Vector2.new(48,48),
},angry=
{ImageRectPosition=
Vector2.new(768,192),_Size=
Vector2.new(48,48),
},building=
{ImageRectPosition=
Vector2.new(816,192),_Size=
Vector2.new(48,48),
},antenna=
{ImageRectPosition=
Vector2.new(864,192),_Size=
Vector2.new(48,48),
},cable=
{ImageRectPosition=
Vector2.new(912,192),_Size=
Vector2.new(48,48),
},
["calendar-heart"]={ImageRectPosition=
Vector2.new(960,192),_Size=
Vector2.new(48,48),
},
["case-lower"]={ImageRectPosition=
Vector2.new(1008,192),_Size=
Vector2.new(48,48),
},aperture=
{ImageRectPosition=
Vector2.new(1056,192),_Size=
Vector2.new(48,48),
},cat=
{ImageRectPosition=
Vector2.new(1104,192),_Size=
Vector2.new(48,48),
},
["car-taxi-front"]={ImageRectPosition=
Vector2.new(1152,192),_Size=
Vector2.new(48,48),
},
["chart-bar"]={ImageRectPosition=
Vector2.new(1200,192),_Size=
Vector2.new(48,48),
},
["chart-bar-big"]={ImageRectPosition=
Vector2.new(1248,192),_Size=
Vector2.new(48,48),
},
["chart-candlestick"]={ImageRectPosition=
Vector2.new(1296,192),_Size=
Vector2.new(48,48),
},
["chart-column"]={ImageRectPosition=
Vector2.new(1344,192),_Size=
Vector2.new(48,48),
},
["chart-column-decreasing"]={ImageRectPosition=
Vector2.new(1392,192),_Size=
Vector2.new(48,48),
},
["chart-no-axes-column"]={ImageRectPosition=
Vector2.new(1440,192),_Size=
Vector2.new(48,48),
},
["chart-no-axes-combined"]={ImageRectPosition=
Vector2.new(1488,192),_Size=
Vector2.new(48,48),
},cherry=
{ImageRectPosition=
Vector2.new(1536,192),_Size=
Vector2.new(48,48),
},
["chevron-first"]={ImageRectPosition=
Vector2.new(1584,192),_Size=
Vector2.new(48,48),
},
["video-off"]={ImageRectPosition=
Vector2.new(1632,192),_Size=
Vector2.new(48,48),
},chrome=
{ImageRectPosition=
Vector2.new(1680,192),_Size=
Vector2.new(48,48),
},clock=
{ImageRectPosition=
Vector2.new(1728,192),_Size=
Vector2.new(48,48),
},
["circle-dot"]={ImageRectPosition=
Vector2.new(1776,192),_Size=
Vector2.new(48,48),
},
["circle-power"]={ImageRectPosition=
Vector2.new(1824,192),_Size=
Vector2.new(48,48),
},
["clock-2"]={ImageRectPosition=
Vector2.new(0,240),_Size=
Vector2.new(48,48),
},
["clock-6"]={ImageRectPosition=
Vector2.new(48,240),_Size=
Vector2.new(48,48),
},
["clock-7"]={ImageRectPosition=
Vector2.new(96,240),_Size=
Vector2.new(48,48),
},cloud=
{ImageRectPosition=
Vector2.new(144,240),_Size=
Vector2.new(48,48),
},
["cloud-moon-rain"]={ImageRectPosition=
Vector2.new(192,240),_Size=
Vector2.new(48,48),
},baseline=
{ImageRectPosition=
Vector2.new(240,240),_Size=
Vector2.new(48,48),
},bean=
{ImageRectPosition=
Vector2.new(288,240),_Size=
Vector2.new(48,48),
},
["biceps-flexed"]={ImageRectPosition=
Vector2.new(336,240),_Size=
Vector2.new(48,48),
},
["brain-circuit"]={ImageRectPosition=
Vector2.new(384,240),_Size=
Vector2.new(48,48),
},bomb=
{ImageRectPosition=
Vector2.new(432,240),_Size=
Vector2.new(48,48),
},
["book-copy"]={ImageRectPosition=
Vector2.new(480,240),_Size=
Vector2.new(48,48),
},
["book-key"]={ImageRectPosition=
Vector2.new(528,240),_Size=
Vector2.new(48,48),
},
["book-open"]={ImageRectPosition=
Vector2.new(576,240),_Size=
Vector2.new(48,48),
},
["book-user"]={ImageRectPosition=
Vector2.new(624,240),_Size=
Vector2.new(48,48),
},braces=
{ImageRectPosition=
Vector2.new(672,240),_Size=
Vector2.new(48,48),
},bus=
{ImageRectPosition=
Vector2.new(720,240),_Size=
Vector2.new(48,48),
},
["calendar-fold"]={ImageRectPosition=
Vector2.new(768,240),_Size=
Vector2.new(48,48),
},circle=
{ImageRectPosition=
Vector2.new(816,240),_Size=
Vector2.new(48,48),
},captions=
{ImageRectPosition=
Vector2.new(864,240),_Size=
Vector2.new(48,48),
},
["captions-off"]={ImageRectPosition=
Vector2.new(912,240),_Size=
Vector2.new(48,48),
},
["chart-bar-decreasing"]={ImageRectPosition=
Vector2.new(960,240),_Size=
Vector2.new(48,48),
},view=
{ImageRectPosition=
Vector2.new(1008,240),_Size=
Vector2.new(48,48),
},
["chart-pie"]={ImageRectPosition=
Vector2.new(1056,240),_Size=
Vector2.new(48,48),
},
["chart-scatter"]={ImageRectPosition=
Vector2.new(1104,240),_Size=
Vector2.new(48,48),
},
["chevron-down"]={ImageRectPosition=
Vector2.new(1152,240),_Size=
Vector2.new(48,48),
},videotape=
{ImageRectPosition=
Vector2.new(1200,240),_Size=
Vector2.new(48,48),
},voicemail=
{ImageRectPosition=
Vector2.new(1248,240),_Size=
Vector2.new(48,48),
},
["circle-arrow-up"]={ImageRectPosition=
Vector2.new(1296,240),_Size=
Vector2.new(48,48),
},
["circle-check-big"]={ImageRectPosition=
Vector2.new(1344,240),_Size=
Vector2.new(48,48),
},
["circle-dollar-sign"]={ImageRectPosition=
Vector2.new(1392,240),_Size=
Vector2.new(48,48),
},
["circle-help"]={ImageRectPosition=
Vector2.new(1440,240),_Size=
Vector2.new(48,48),
},
["circle-percent"]={ImageRectPosition=
Vector2.new(1488,240),_Size=
Vector2.new(48,48),
},
["a-arrow-down"]={ImageRectPosition=
Vector2.new(1536,240),_Size=
Vector2.new(48,48),
},
["circle-plus"]={ImageRectPosition=
Vector2.new(1584,240),_Size=
Vector2.new(48,48),
},
["circle-slash-2"]={ImageRectPosition=
Vector2.new(1632,240),_Size=
Vector2.new(48,48),
},citrus=
{ImageRectPosition=
Vector2.new(1680,240),_Size=
Vector2.new(48,48),
},
["clipboard-copy"]={ImageRectPosition=
Vector2.new(1728,240),_Size=
Vector2.new(48,48),
},
["clipboard-plus"]={ImageRectPosition=
Vector2.new(1776,240),_Size=
Vector2.new(48,48),
},
["clock-1"]={ImageRectPosition=
Vector2.new(1824,240),_Size=
Vector2.new(48,48),
},
["clock-10"]={ImageRectPosition=
Vector2.new(0,288),_Size=
Vector2.new(48,48),
},
["clock-4"]={ImageRectPosition=
Vector2.new(48,288),_Size=
Vector2.new(48,48),
},
["clock-arrow-up"]={ImageRectPosition=
Vector2.new(96,288),_Size=
Vector2.new(48,48),
},
["cloud-lightning"]={ImageRectPosition=
Vector2.new(144,288),_Size=
Vector2.new(48,48),
},
["code-xml"]={ImageRectPosition=
Vector2.new(192,288),_Size=
Vector2.new(48,48),
},
["columns-2"]={ImageRectPosition=
Vector2.new(240,288),_Size=
Vector2.new(48,48),
},compass=
{ImageRectPosition=
Vector2.new(288,288),_Size=
Vector2.new(48,48),
},
["copy-x"]={ImageRectPosition=
Vector2.new(336,288),_Size=
Vector2.new(48,48),
},
["flame-kindling"]={ImageRectPosition=
Vector2.new(384,288),_Size=
Vector2.new(48,48),
},
["folder-git-2"]={ImageRectPosition=
Vector2.new(432,288),_Size=
Vector2.new(48,48),
},
["gallery-vertical-end"]={ImageRectPosition=
Vector2.new(480,288),_Size=
Vector2.new(48,48),
},
["git-fork"]={ImageRectPosition=
Vector2.new(528,288),_Size=
Vector2.new(48,48),
},ham=
{ImageRectPosition=
Vector2.new(576,288),_Size=
Vector2.new(48,48),
},hotel=
{ImageRectPosition=
Vector2.new(624,288),_Size=
Vector2.new(48,48),
},
["indian-rupee"]={ImageRectPosition=
Vector2.new(672,288),_Size=
Vector2.new(48,48),
},
["lamp-wall-up"]={ImageRectPosition=
Vector2.new(720,288),_Size=
Vector2.new(48,48),
},list=
{ImageRectPosition=
Vector2.new(768,288),_Size=
Vector2.new(48,48),
},
["mail-minus"]={ImageRectPosition=
Vector2.new(816,288),_Size=
Vector2.new(48,48),
},mailbox=
{ImageRectPosition=
Vector2.new(864,288),_Size=
Vector2.new(48,48),
},
["map-pin-off"]={ImageRectPosition=
Vector2.new(912,288),_Size=
Vector2.new(48,48),
},factory=
{ImageRectPosition=
Vector2.new(960,288),_Size=
Vector2.new(48,48),
},
["move-3d"]={ImageRectPosition=
Vector2.new(1008,288),_Size=
Vector2.new(48,48),
},network=
{ImageRectPosition=
Vector2.new(1056,288),_Size=
Vector2.new(48,48),
},option=
{ImageRectPosition=
Vector2.new(1104,288),_Size=
Vector2.new(48,48),
},
["party-popper"]={ImageRectPosition=
Vector2.new(1152,288),_Size=
Vector2.new(48,48),
},pencil=
{ImageRectPosition=
Vector2.new(1200,288),_Size=
Vector2.new(48,48),
},
["plane-takeoff"]={ImageRectPosition=
Vector2.new(1248,288),_Size=
Vector2.new(48,48),
},diamond=
{ImageRectPosition=
Vector2.new(1296,288),_Size=
Vector2.new(48,48),
},
["dice-6"]={ImageRectPosition=
Vector2.new(1344,288),_Size=
Vector2.new(48,48),
},
["file-diff"]={ImageRectPosition=
Vector2.new(1392,288),_Size=
Vector2.new(48,48),
},
["folder-pen"]={ImageRectPosition=
Vector2.new(1440,288),_Size=
Vector2.new(48,48),
},framer=
{ImageRectPosition=
Vector2.new(1488,288),_Size=
Vector2.new(48,48),
},ghost=
{ImageRectPosition=
Vector2.new(1536,288),_Size=
Vector2.new(48,48),
},
["chevrons-up"]={ImageRectPosition=
Vector2.new(1584,288),_Size=
Vector2.new(48,48),
},joystick=
{ImageRectPosition=
Vector2.new(1632,288),_Size=
Vector2.new(48,48),
},library=
{ImageRectPosition=
Vector2.new(1680,288),_Size=
Vector2.new(48,48),
},
["lock-keyhole"]={ImageRectPosition=
Vector2.new(1728,288),_Size=
Vector2.new(48,48),
},
["mail-plus"]={ImageRectPosition=
Vector2.new(1776,288),_Size=
Vector2.new(48,48),
},
["panel-right-open"]={ImageRectPosition=
Vector2.new(1824,288),_Size=
Vector2.new(48,48),
},
["picture-in-picture"]={ImageRectPosition=
Vector2.new(0,336),_Size=
Vector2.new(48,48),
},
["picture-in-picture-2"]={ImageRectPosition=
Vector2.new(48,336),_Size=
Vector2.new(48,48),
},coins=
{ImageRectPosition=
Vector2.new(96,336),_Size=
Vector2.new(48,48),
},croissant=
{ImageRectPosition=
Vector2.new(144,336),_Size=
Vector2.new(48,48),
},crown=
{ImageRectPosition=
Vector2.new(192,336),_Size=
Vector2.new(48,48),
},
["disc-album"]={ImageRectPosition=
Vector2.new(240,336),_Size=
Vector2.new(48,48),
},donut=
{ImageRectPosition=
Vector2.new(288,336),_Size=
Vector2.new(48,48),
},
["drafting-compass"]={ImageRectPosition=
Vector2.new(336,336),_Size=
Vector2.new(48,48),
},
["file-x-2"]={ImageRectPosition=
Vector2.new(384,336),_Size=
Vector2.new(48,48),
},folder=
{ImageRectPosition=
Vector2.new(432,336),_Size=
Vector2.new(48,48),
},
["folder-lock"]={ImageRectPosition=
Vector2.new(480,336),_Size=
Vector2.new(48,48),
},
["layers-2"]={ImageRectPosition=
Vector2.new(528,336),_Size=
Vector2.new(48,48),
},
["folder-search-2"]={ImageRectPosition=
Vector2.new(576,336),_Size=
Vector2.new(48,48),
},
["folder-sync"]={ImageRectPosition=
Vector2.new(624,336),_Size=
Vector2.new(48,48),
},footprints=
{ImageRectPosition=
Vector2.new(672,336),_Size=
Vector2.new(48,48),
},
["keyboard-off"]={ImageRectPosition=
Vector2.new(720,336),_Size=
Vector2.new(48,48),
},leaf=
{ImageRectPosition=
Vector2.new(768,336),_Size=
Vector2.new(48,48),
},medal=
{ImageRectPosition=
Vector2.new(816,336),_Size=
Vector2.new(48,48),
},
["message-square-plus"]={ImageRectPosition=
Vector2.new(864,336),_Size=
Vector2.new(48,48),
},
["message-square-quote"]={ImageRectPosition=
Vector2.new(912,336),_Size=
Vector2.new(48,48),
},
["message-square-share"]={ImageRectPosition=
Vector2.new(960,336),_Size=
Vector2.new(48,48),
},
["messages-square"]={ImageRectPosition=
Vector2.new(1008,336),_Size=
Vector2.new(48,48),
},
["monitor-stop"]={ImageRectPosition=
Vector2.new(1056,336),_Size=
Vector2.new(48,48),
},newspaper=
{ImageRectPosition=
Vector2.new(1104,336),_Size=
Vector2.new(48,48),
},nut=
{ImageRectPosition=
Vector2.new(1152,336),_Size=
Vector2.new(48,48),
},
["package-check"]={ImageRectPosition=
Vector2.new(1200,336),_Size=
Vector2.new(48,48),
},pen=
{ImageRectPosition=
Vector2.new(1248,336),_Size=
Vector2.new(48,48),
},
["phone-off"]={ImageRectPosition=
Vector2.new(1296,336),_Size=
Vector2.new(48,48),
},radar=
{ImageRectPosition=
Vector2.new(1344,336),_Size=
Vector2.new(48,48),
},
["file-volume"]={ImageRectPosition=
Vector2.new(1392,336),_Size=
Vector2.new(48,48),
},
["folder-clock"]={ImageRectPosition=
Vector2.new(1440,336),_Size=
Vector2.new(48,48),
},
["folder-input"]={ImageRectPosition=
Vector2.new(1488,336),_Size=
Vector2.new(48,48),
},
["folder-plus"]={ImageRectPosition=
Vector2.new(1536,336),_Size=
Vector2.new(48,48),
},
["hand-coins"]={ImageRectPosition=
Vector2.new(1584,336),_Size=
Vector2.new(48,48),
},
["hard-drive"]={ImageRectPosition=
Vector2.new(1632,336),_Size=
Vector2.new(48,48),
},hash=
{ImageRectPosition=
Vector2.new(1680,336),_Size=
Vector2.new(48,48),
},headphones=
{ImageRectPosition=
Vector2.new(1728,336),_Size=
Vector2.new(48,48),
},lectern=
{ImageRectPosition=
Vector2.new(1776,336),_Size=
Vector2.new(48,48),
},
["message-circle-warning"]={ImageRectPosition=
Vector2.new(1824,336),_Size=
Vector2.new(48,48),
},file=
{ImageRectPosition=
Vector2.new(0,384),_Size=
Vector2.new(48,48),
},
["package-search"]={ImageRectPosition=
Vector2.new(48,384),_Size=
Vector2.new(48,48),
},
["panel-left-close"]={ImageRectPosition=
Vector2.new(96,384),_Size=
Vector2.new(48,48),
},
["panel-top-dashed"]={ImageRectPosition=
Vector2.new(144,384),_Size=
Vector2.new(48,48),
},
["paw-print"]={ImageRectPosition=
Vector2.new(192,384),_Size=
Vector2.new(48,48),
},
["scan-line"]={ImageRectPosition=
Vector2.new(240,384),_Size=
Vector2.new(48,48),
},
["server-crash"]={ImageRectPosition=
Vector2.new(288,384),_Size=
Vector2.new(48,48),
},
["thumbs-up"]={ImageRectPosition=
Vector2.new(336,384),_Size=
Vector2.new(48,48),
},tornado=
{ImageRectPosition=
Vector2.new(384,384),_Size=
Vector2.new(48,48),
},university=
{ImageRectPosition=
Vector2.new(432,384),_Size=
Vector2.new(48,48),
},
["wallet-minimal"]={ImageRectPosition=
Vector2.new(480,384),_Size=
Vector2.new(48,48),
},map=
{ImageRectPosition=
Vector2.new(528,384),_Size=
Vector2.new(48,48),
},
["corner-left-up"]={ImageRectPosition=
Vector2.new(576,384),_Size=
Vector2.new(48,48),
},
["diamond-minus"]={ImageRectPosition=
Vector2.new(624,384),_Size=
Vector2.new(48,48),
},download=
{ImageRectPosition=
Vector2.new(672,384),_Size=
Vector2.new(48,48),
},drum=
{ImageRectPosition=
Vector2.new(720,384),_Size=
Vector2.new(48,48),
},
["file-box"]={ImageRectPosition=
Vector2.new(768,384),_Size=
Vector2.new(48,48),
},
["file-json"]={ImageRectPosition=
Vector2.new(816,384),_Size=
Vector2.new(48,48),
},
["file-pen-line"]={ImageRectPosition=
Vector2.new(864,384),_Size=
Vector2.new(48,48),
},
["folder-dot"]={ImageRectPosition=
Vector2.new(912,384),_Size=
Vector2.new(48,48),
},key=
{ImageRectPosition=
Vector2.new(960,384),_Size=
Vector2.new(48,48),
},
["key-round"]={ImageRectPosition=
Vector2.new(1008,384),_Size=
Vector2.new(48,48),
},luggage=
{ImageRectPosition=
Vector2.new(1056,384),_Size=
Vector2.new(48,48),
},
["map-pin-x"]={ImageRectPosition=
Vector2.new(1104,384),_Size=
Vector2.new(48,48),
},
["message-square-heart"]={ImageRectPosition=
Vector2.new(1152,384),_Size=
Vector2.new(48,48),
},
["milk-off"]={ImageRectPosition=
Vector2.new(1200,384),_Size=
Vector2.new(48,48),
},
["fast-forward"]={ImageRectPosition=
Vector2.new(1248,384),_Size=
Vector2.new(48,48),
},
["move-diagonal"]={ImageRectPosition=
Vector2.new(1296,384),_Size=
Vector2.new(48,48),
},
["notebook-tabs"]={ImageRectPosition=
Vector2.new(1344,384),_Size=
Vector2.new(48,48),
},origami=
{ImageRectPosition=
Vector2.new(1392,384),_Size=
Vector2.new(48,48),
},package=
{ImageRectPosition=
Vector2.new(1440,384),_Size=
Vector2.new(48,48),
},
["package-plus"]={ImageRectPosition=
Vector2.new(1488,384),_Size=
Vector2.new(48,48),
},
["refresh-ccw"]={ImageRectPosition=
Vector2.new(1536,384),_Size=
Vector2.new(48,48),
},
["disc-2"]={ImageRectPosition=
Vector2.new(1584,384),_Size=
Vector2.new(48,48),
},
["file-type-2"]={ImageRectPosition=
Vector2.new(1632,384),_Size=
Vector2.new(48,48),
},film=
{ImageRectPosition=
Vector2.new(1680,384),_Size=
Vector2.new(48,48),
},
["folder-tree"]={ImageRectPosition=
Vector2.new(1728,384),_Size=
Vector2.new(48,48),
},instagram=
{ImageRectPosition=
Vector2.new(1776,384),_Size=
Vector2.new(48,48),
},
["message-square-text"]={ImageRectPosition=
Vector2.new(1824,384),_Size=
Vector2.new(48,48),
},nfc=
{ImageRectPosition=
Vector2.new(0,432),_Size=
Vector2.new(48,48),
},notebook=
{ImageRectPosition=
Vector2.new(48,432),_Size=
Vector2.new(48,48),
},
["notepad-text-dashed"]={ImageRectPosition=
Vector2.new(96,432),_Size=
Vector2.new(48,48),
},
["octagon-x"]={ImageRectPosition=
Vector2.new(144,432),_Size=
Vector2.new(48,48),
},
["pc-case"]={ImageRectPosition=
Vector2.new(192,432),_Size=
Vector2.new(48,48),
},
["pointer-off"]={ImageRectPosition=
Vector2.new(240,432),_Size=
Vector2.new(48,48),
},popcorn=
{ImageRectPosition=
Vector2.new(288,432),_Size=
Vector2.new(48,48),
},
["receipt-indian-rupee"]={ImageRectPosition=
Vector2.new(336,432),_Size=
Vector2.new(48,48),
},
["rows-3"]={ImageRectPosition=
Vector2.new(384,432),_Size=
Vector2.new(48,48),
},sandwich=
{ImageRectPosition=
Vector2.new(432,432),_Size=
Vector2.new(48,48),
},search=
{ImageRectPosition=
Vector2.new(480,432),_Size=
Vector2.new(48,48),
},cookie=
{ImageRectPosition=
Vector2.new(528,432),_Size=
Vector2.new(48,48),
},
["copy-plus"]={ImageRectPosition=
Vector2.new(576,432),_Size=
Vector2.new(48,48),
},dna=
{ImageRectPosition=
Vector2.new(624,432),_Size=
Vector2.new(48,48),
},
["dna-off"]={ImageRectPosition=
Vector2.new(672,432),_Size=
Vector2.new(48,48),
},
["arrow-left"]={ImageRectPosition=
Vector2.new(720,432),_Size=
Vector2.new(48,48),
},
["fish-symbol"]={ImageRectPosition=
Vector2.new(768,432),_Size=
Vector2.new(48,48),
},
["git-merge"]={ImageRectPosition=
Vector2.new(816,432),_Size=
Vector2.new(48,48),
},
["git-pull-request"]={ImageRectPosition=
Vector2.new(864,432),_Size=
Vector2.new(48,48),
},
["hdmi-port"]={ImageRectPosition=
Vector2.new(912,432),_Size=
Vector2.new(48,48),
},
["image-up"]={ImageRectPosition=
Vector2.new(960,432),_Size=
Vector2.new(48,48),
},
["key-square"]={ImageRectPosition=
Vector2.new(1008,432),_Size=
Vector2.new(48,48),
},lock=
{ImageRectPosition=
Vector2.new(1056,432),_Size=
Vector2.new(48,48),
},
["message-circle-question"]={ImageRectPosition=
Vector2.new(1104,432),_Size=
Vector2.new(48,48),
},mouse=
{ImageRectPosition=
Vector2.new(1152,432),_Size=
Vector2.new(48,48),
},music=
{ImageRectPosition=
Vector2.new(1200,432),_Size=
Vector2.new(48,48),
},
["panel-left"]={ImageRectPosition=
Vector2.new(1248,432),_Size=
Vector2.new(48,48),
},
["panel-right"]={ImageRectPosition=
Vector2.new(1296,432),_Size=
Vector2.new(48,48),
},parentheses=
{ImageRectPosition=
Vector2.new(1344,432),_Size=
Vector2.new(48,48),
},
["rotate-ccw"]={ImageRectPosition=
Vector2.new(1392,432),_Size=
Vector2.new(48,48),
},database=
{ImageRectPosition=
Vector2.new(1440,432),_Size=
Vector2.new(48,48),
},drama=
{ImageRectPosition=
Vector2.new(1488,432),_Size=
Vector2.new(48,48),
},droplet=
{ImageRectPosition=
Vector2.new(1536,432),_Size=
Vector2.new(48,48),
},
["arrow-left-from-line"]={ImageRectPosition=
Vector2.new(1584,432),_Size=
Vector2.new(48,48),
},
["file-down"]={ImageRectPosition=
Vector2.new(1632,432),_Size=
Vector2.new(48,48),
},
["file-stack"]={ImageRectPosition=
Vector2.new(1680,432),_Size=
Vector2.new(48,48),
},
["file-symlink"]={ImageRectPosition=
Vector2.new(1728,432),_Size=
Vector2.new(48,48),
},
["flask-conical-off"]={ImageRectPosition=
Vector2.new(1776,432),_Size=
Vector2.new(48,48),
},
["folder-check"]={ImageRectPosition=
Vector2.new(1824,432),_Size=
Vector2.new(48,48),
},fullscreen=
{ImageRectPosition=
Vector2.new(0,480),_Size=
Vector2.new(48,48),
},gamepad=
{ImageRectPosition=
Vector2.new(48,480),_Size=
Vector2.new(48,48),
},grape=
{ImageRectPosition=
Vector2.new(96,480),_Size=
Vector2.new(48,48),
},heater=
{ImageRectPosition=
Vector2.new(144,480),_Size=
Vector2.new(48,48),
},
["ice-cream-cone"]={ImageRectPosition=
Vector2.new(192,480),_Size=
Vector2.new(48,48),
},laugh=
{ImageRectPosition=
Vector2.new(240,480),_Size=
Vector2.new(48,48),
},
["list-filter"]={ImageRectPosition=
Vector2.new(288,480),_Size=
Vector2.new(48,48),
},
["log-out"]={ImageRectPosition=
Vector2.new(336,480),_Size=
Vector2.new(48,48),
},
["message-circle-code"]={ImageRectPosition=
Vector2.new(384,480),_Size=
Vector2.new(48,48),
},
["mic-vocal"]={ImageRectPosition=
Vector2.new(432,480),_Size=
Vector2.new(48,48),
},microscope=
{ImageRectPosition=
Vector2.new(480,480),_Size=
Vector2.new(48,48),
},
["panel-left-open"]={ImageRectPosition=
Vector2.new(528,480),_Size=
Vector2.new(48,48),
},signature=
{ImageRectPosition=
Vector2.new(576,480),_Size=
Vector2.new(48,48),
},
["square-minus"]={ImageRectPosition=
Vector2.new(624,480),_Size=
Vector2.new(48,48),
},
["tally-3"]={ImageRectPosition=
Vector2.new(672,480),_Size=
Vector2.new(48,48),
},
["unfold-horizontal"]={ImageRectPosition=
Vector2.new(720,480),_Size=
Vector2.new(48,48),
},
["flask-round"]={ImageRectPosition=
Vector2.new(768,480),_Size=
Vector2.new(48,48),
},
["folder-search"]={ImageRectPosition=
Vector2.new(816,480),_Size=
Vector2.new(48,48),
},
["grid-2x2-x"]={ImageRectPosition=
Vector2.new(864,480),_Size=
Vector2.new(48,48),
},
["house-plus"]={ImageRectPosition=
Vector2.new(912,480),_Size=
Vector2.new(48,48),
},laptop=
{ImageRectPosition=
Vector2.new(960,480),_Size=
Vector2.new(48,48),
},
["layout-dashboard"]={ImageRectPosition=
Vector2.new(1008,480),_Size=
Vector2.new(48,48),
},
["list-tree"]={ImageRectPosition=
Vector2.new(1056,480),_Size=
Vector2.new(48,48),
},mail=
{ImageRectPosition=
Vector2.new(1104,480),_Size=
Vector2.new(48,48),
},mails=
{ImageRectPosition=
Vector2.new(1152,480),_Size=
Vector2.new(48,48),
},meh=
{ImageRectPosition=
Vector2.new(1200,480),_Size=
Vector2.new(48,48),
},
["panel-left-dashed"]={ImageRectPosition=
Vector2.new(1248,480),_Size=
Vector2.new(48,48),
},
["pen-line"]={ImageRectPosition=
Vector2.new(1296,480),_Size=
Vector2.new(48,48),
},percent=
{ImageRectPosition=
Vector2.new(1344,480),_Size=
Vector2.new(48,48),
},pipette=
{ImageRectPosition=
Vector2.new(1392,480),_Size=
Vector2.new(48,48),
},pointer=
{ImageRectPosition=
Vector2.new(1440,480),_Size=
Vector2.new(48,48),
},
["power-off"]={ImageRectPosition=
Vector2.new(1488,480),_Size=
Vector2.new(48,48),
},radio=
{ImageRectPosition=
Vector2.new(1536,480),_Size=
Vector2.new(48,48),
},droplets=
{ImageRectPosition=
Vector2.new(1584,480),_Size=
Vector2.new(48,48),
},
["ethernet-port"]={ImageRectPosition=
Vector2.new(1632,480),_Size=
Vector2.new(48,48),
},backpack=
{ImageRectPosition=
Vector2.new(1680,480),_Size=
Vector2.new(48,48),
},
["file-badge"]={ImageRectPosition=
Vector2.new(1728,480),_Size=
Vector2.new(48,48),
},
["file-chart-pie"]={ImageRectPosition=
Vector2.new(1776,480),_Size=
Vector2.new(48,48),
},
["file-sliders"]={ImageRectPosition=
Vector2.new(1824,480),_Size=
Vector2.new(48,48),
},flag=
{ImageRectPosition=
Vector2.new(0,528),_Size=
Vector2.new(48,48),
},
["git-pull-request-closed"]={ImageRectPosition=
Vector2.new(48,528),_Size=
Vector2.new(48,48),
},
["glass-water"]={ImageRectPosition=
Vector2.new(96,528),_Size=
Vector2.new(48,48),
},history=
{ImageRectPosition=
Vector2.new(144,528),_Size=
Vector2.new(48,48),
},house=
{ImageRectPosition=
Vector2.new(192,528),_Size=
Vector2.new(48,48),
},
["list-start"]={ImageRectPosition=
Vector2.new(240,528),_Size=
Vector2.new(48,48),
},
["map-pin-minus-inside"]={ImageRectPosition=
Vector2.new(288,528),_Size=
Vector2.new(48,48),
},
["map-pinned"]={ImageRectPosition=
Vector2.new(336,528),_Size=
Vector2.new(48,48),
},
["mic-off"]={ImageRectPosition=
Vector2.new(384,528),_Size=
Vector2.new(48,48),
},
["navigation-off"]={ImageRectPosition=
Vector2.new(432,528),_Size=
Vector2.new(48,48),
},
["notebook-pen"]={ImageRectPosition=
Vector2.new(480,528),_Size=
Vector2.new(48,48),
},
["plug-zap"]={ImageRectPosition=
Vector2.new(528,528),_Size=
Vector2.new(48,48),
},plus=
{ImageRectPosition=
Vector2.new(576,528),_Size=
Vector2.new(48,48),
},
["layers-3"]={ImageRectPosition=
Vector2.new(624,528),_Size=
Vector2.new(48,48),
},reply=
{ImageRectPosition=
Vector2.new(672,528),_Size=
Vector2.new(48,48),
},ruler=
{ImageRectPosition=
Vector2.new(720,528),_Size=
Vector2.new(48,48),
},cone=
{ImageRectPosition=
Vector2.new(768,528),_Size=
Vector2.new(48,48),
},
["credit-card"]={ImageRectPosition=
Vector2.new(816,528),_Size=
Vector2.new(48,48),
},
["dice-2"]={ImageRectPosition=
Vector2.new(864,528),_Size=
Vector2.new(48,48),
},
["disc-3"]={ImageRectPosition=
Vector2.new(912,528),_Size=
Vector2.new(48,48),
},
["folder-code"]={ImageRectPosition=
Vector2.new(960,528),_Size=
Vector2.new(48,48),
},
["graduation-cap"]={ImageRectPosition=
Vector2.new(1008,528),_Size=
Vector2.new(48,48),
},
["hard-hat"]={ImageRectPosition=
Vector2.new(1056,528),_Size=
Vector2.new(48,48),
},heading=
{ImageRectPosition=
Vector2.new(1104,528),_Size=
Vector2.new(48,48),
},highlighter=
{ImageRectPosition=
Vector2.new(1152,528),_Size=
Vector2.new(48,48),
},linkedin=
{ImageRectPosition=
Vector2.new(1200,528),_Size=
Vector2.new(48,48),
},
["message-square-reply"]={ImageRectPosition=
Vector2.new(1248,528),_Size=
Vector2.new(48,48),
},
["moon-star"]={ImageRectPosition=
Vector2.new(1296,528),_Size=
Vector2.new(48,48),
},
["move-down-left"]={ImageRectPosition=
Vector2.new(1344,528),_Size=
Vector2.new(48,48),
},puzzle=
{ImageRectPosition=
Vector2.new(1392,528),_Size=
Vector2.new(48,48),
},
["rail-symbol"]={ImageRectPosition=
Vector2.new(1440,528),_Size=
Vector2.new(48,48),
},
["rows-4"]={ImageRectPosition=
Vector2.new(1488,528),_Size=
Vector2.new(48,48),
},dices=
{ImageRectPosition=
Vector2.new(1536,528),_Size=
Vector2.new(48,48),
},banknote=
{ImageRectPosition=
Vector2.new(1584,528),_Size=
Vector2.new(48,48),
},feather=
{ImageRectPosition=
Vector2.new(1632,528),_Size=
Vector2.new(48,48),
},
["file-input"]={ImageRectPosition=
Vector2.new(1680,528),_Size=
Vector2.new(48,48),
},
["flask-conical"]={ImageRectPosition=
Vector2.new(1728,528),_Size=
Vector2.new(48,48),
},gavel=
{ImageRectPosition=
Vector2.new(1776,528),_Size=
Vector2.new(48,48),
},
["git-compare-arrows"]={ImageRectPosition=
Vector2.new(1824,528),_Size=
Vector2.new(48,48),
},
["git-pull-request-draft"]={ImageRectPosition=
Vector2.new(0,576),_Size=
Vector2.new(48,48),
},italic=
{ImageRectPosition=
Vector2.new(48,576),_Size=
Vector2.new(48,48),
},kanban=
{ImageRectPosition=
Vector2.new(96,576),_Size=
Vector2.new(48,48),
},
["lamp-desk"]={ImageRectPosition=
Vector2.new(144,576),_Size=
Vector2.new(48,48),
},
["layout-panel-left"]={ImageRectPosition=
Vector2.new(192,576),_Size=
Vector2.new(48,48),
},
["letter-text"]={ImageRectPosition=
Vector2.new(240,576),_Size=
Vector2.new(48,48),
},ligature=
{ImageRectPosition=
Vector2.new(288,576),_Size=
Vector2.new(48,48),
},
["list-checks"]={ImageRectPosition=
Vector2.new(336,576),_Size=
Vector2.new(48,48),
},
["locate-off"]={ImageRectPosition=
Vector2.new(384,576),_Size=
Vector2.new(48,48),
},
["mail-open"]={ImageRectPosition=
Vector2.new(432,576),_Size=
Vector2.new(48,48),
},martini=
{ImageRectPosition=
Vector2.new(480,576),_Size=
Vector2.new(48,48),
},menu=
{ImageRectPosition=
Vector2.new(528,576),_Size=
Vector2.new(48,48),
},minimize=
{ImageRectPosition=
Vector2.new(576,576),_Size=
Vector2.new(48,48),
},
["mouse-pointer-click"]={ImageRectPosition=
Vector2.new(624,576),_Size=
Vector2.new(48,48),
},
["move-right"]={ImageRectPosition=
Vector2.new(672,576),_Size=
Vector2.new(48,48),
},
["octagon-pause"]={ImageRectPosition=
Vector2.new(720,576),_Size=
Vector2.new(48,48),
},pentagon=
{ImageRectPosition=
Vector2.new(768,576),_Size=
Vector2.new(48,48),
},
["heading-3"]={ImageRectPosition=
Vector2.new(816,576),_Size=
Vector2.new(48,48),
},
["shopping-cart"]={ImageRectPosition=
Vector2.new(864,576),_Size=
Vector2.new(48,48),
},sigma=
{ImageRectPosition=
Vector2.new(912,576),_Size=
Vector2.new(48,48),
},sprout=
{ImageRectPosition=
Vector2.new(960,576),_Size=
Vector2.new(48,48),
},
["square-arrow-up-right"]={ImageRectPosition=
Vector2.new(1008,576),_Size=
Vector2.new(48,48),
},sticker=
{ImageRectPosition=
Vector2.new(1056,576),_Size=
Vector2.new(48,48),
},
["corner-right-up"]={ImageRectPosition=
Vector2.new(1104,576),_Size=
Vector2.new(48,48),
},
["corner-up-left"]={ImageRectPosition=
Vector2.new(1152,576),_Size=
Vector2.new(48,48),
},eclipse=
{ImageRectPosition=
Vector2.new(1200,576),_Size=
Vector2.new(48,48),
},flower=
{ImageRectPosition=
Vector2.new(1248,576),_Size=
Vector2.new(48,48),
},gem=
{ImageRectPosition=
Vector2.new(1296,576),_Size=
Vector2.new(48,48),
},
["globe-lock"]={ImageRectPosition=
Vector2.new(1344,576),_Size=
Vector2.new(48,48),
},haze=
{ImageRectPosition=
Vector2.new(1392,576),_Size=
Vector2.new(48,48),
},layers=
{ImageRectPosition=
Vector2.new(1440,576),_Size=
Vector2.new(48,48),
},link=
{ImageRectPosition=
Vector2.new(1488,576),_Size=
Vector2.new(48,48),
},
["message-circle-dashed"]={ImageRectPosition=
Vector2.new(1536,576),_Size=
Vector2.new(48,48),
},
["message-square"]={ImageRectPosition=
Vector2.new(1584,576),_Size=
Vector2.new(48,48),
},
["message-square-more"]={ImageRectPosition=
Vector2.new(1632,576),_Size=
Vector2.new(48,48),
},facebook=
{ImageRectPosition=
Vector2.new(1680,576),_Size=
Vector2.new(48,48),
},
["monitor-play"]={ImageRectPosition=
Vector2.new(1728,576),_Size=
Vector2.new(48,48),
},
["move-down-right"]={ImageRectPosition=
Vector2.new(1776,576),_Size=
Vector2.new(48,48),
},pi=
{ImageRectPosition=
Vector2.new(1824,576),_Size=
Vector2.new(48,48),
},pizza=
{ImageRectPosition=
Vector2.new(0,624),_Size=
Vector2.new(48,48),
},dumbbell=
{ImageRectPosition=
Vector2.new(48,624),_Size=
Vector2.new(48,48),
},
["file-digit"]={ImageRectPosition=
Vector2.new(96,624),_Size=
Vector2.new(48,48),
},
["fold-vertical"]={ImageRectPosition=
Vector2.new(144,624),_Size=
Vector2.new(48,48),
},
["gallery-thumbnails"]={ImageRectPosition=
Vector2.new(192,624),_Size=
Vector2.new(48,48),
},gitlab=
{ImageRectPosition=
Vector2.new(240,624),_Size=
Vector2.new(48,48),
},grip=
{ImageRectPosition=
Vector2.new(288,624),_Size=
Vector2.new(48,48),
},
["grip-vertical"]={ImageRectPosition=
Vector2.new(336,624),_Size=
Vector2.new(48,48),
},
["circle-x"]={ImageRectPosition=
Vector2.new(384,624),_Size=
Vector2.new(48,48),
},inbox=
{ImageRectPosition=
Vector2.new(432,624),_Size=
Vector2.new(48,48),
},
["indent-increase"]={ImageRectPosition=
Vector2.new(480,624),_Size=
Vector2.new(48,48),
},infinity=
{ImageRectPosition=
Vector2.new(528,624),_Size=
Vector2.new(48,48),
},
["inspection-panel"]={ImageRectPosition=
Vector2.new(576,624),_Size=
Vector2.new(48,48),
},
["keyboard-music"]={ImageRectPosition=
Vector2.new(624,624),_Size=
Vector2.new(48,48),
},
["lamp-wall-down"]={ImageRectPosition=
Vector2.new(672,624),_Size=
Vector2.new(48,48),
},lasso=
{ImageRectPosition=
Vector2.new(720,624),_Size=
Vector2.new(48,48),
},
["list-x"]={ImageRectPosition=
Vector2.new(768,624),_Size=
Vector2.new(48,48),
},locate=
{ImageRectPosition=
Vector2.new(816,624),_Size=
Vector2.new(48,48),
},
["mail-x"]={ImageRectPosition=
Vector2.new(864,624),_Size=
Vector2.new(48,48),
},
["message-circle-off"]={ImageRectPosition=
Vector2.new(912,624),_Size=
Vector2.new(48,48),
},milk=
{ImageRectPosition=
Vector2.new(960,624),_Size=
Vector2.new(48,48),
},
["mouse-off"]={ImageRectPosition=
Vector2.new(1008,624),_Size=
Vector2.new(48,48),
},
["mouse-pointer-ban"]={ImageRectPosition=
Vector2.new(1056,624),_Size=
Vector2.new(48,48),
},orbit=
{ImageRectPosition=
Vector2.new(1104,624),_Size=
Vector2.new(48,48),
},
["paintbrush-vertical"]={ImageRectPosition=
Vector2.new(1152,624),_Size=
Vector2.new(48,48),
},
["pen-off"]={ImageRectPosition=
Vector2.new(1200,624),_Size=
Vector2.new(48,48),
},
["person-standing"]={ImageRectPosition=
Vector2.new(1248,624),_Size=
Vector2.new(48,48),
},
["piggy-bank"]={ImageRectPosition=
Vector2.new(1296,624),_Size=
Vector2.new(48,48),
},
["pilcrow-right"]={ImageRectPosition=
Vector2.new(1344,624),_Size=
Vector2.new(48,48),
},
["receipt-pound-sterling"]={ImageRectPosition=
Vector2.new(1392,624),_Size=
Vector2.new(48,48),
},
["redo-2"]={ImageRectPosition=
Vector2.new(1440,624),_Size=
Vector2.new(48,48),
},rocket=
{ImageRectPosition=
Vector2.new(1488,624),_Size=
Vector2.new(48,48),
},salad=
{ImageRectPosition=
Vector2.new(1536,624),_Size=
Vector2.new(48,48),
},
["corner-up-right"]={ImageRectPosition=
Vector2.new(1584,624),_Size=
Vector2.new(48,48),
},
["database-zap"]={ImageRectPosition=
Vector2.new(1632,624),_Size=
Vector2.new(48,48),
},ear=
{ImageRectPosition=
Vector2.new(1680,624),_Size=
Vector2.new(48,48),
},
["file-image"]={ImageRectPosition=
Vector2.new(1728,624),_Size=
Vector2.new(48,48),
},
["file-key"]={ImageRectPosition=
Vector2.new(1776,624),_Size=
Vector2.new(48,48),
},
["flip-horizontal"]={ImageRectPosition=
Vector2.new(1824,624),_Size=
Vector2.new(48,48),
},
["folder-closed"]={ImageRectPosition=
Vector2.new(0,672),_Size=
Vector2.new(48,48),
},
["folder-cog"]={ImageRectPosition=
Vector2.new(48,672),_Size=
Vector2.new(48,48),
},
["folder-x"]={ImageRectPosition=
Vector2.new(96,672),_Size=
Vector2.new(48,48),
},gauge=
{ImageRectPosition=
Vector2.new(144,672),_Size=
Vector2.new(48,48),
},
["hand-platter"]={ImageRectPosition=
Vector2.new(192,672),_Size=
Vector2.new(48,48),
},
["list-restart"]={ImageRectPosition=
Vector2.new(240,672),_Size=
Vector2.new(48,48),
},
["map-pin-house"]={ImageRectPosition=
Vector2.new(288,672),_Size=
Vector2.new(48,48),
},
["message-square-diff"]={ImageRectPosition=
Vector2.new(336,672),_Size=
Vector2.new(48,48),
},mountain=
{ImageRectPosition=
Vector2.new(384,672),_Size=
Vector2.new(48,48),
},pocket=
{ImageRectPosition=
Vector2.new(432,672),_Size=
Vector2.new(48,48),
},
["radio-tower"]={ImageRectPosition=
Vector2.new(480,672),_Size=
Vector2.new(48,48),
},rat=
{ImageRectPosition=
Vector2.new(528,672),_Size=
Vector2.new(48,48),
},
["receipt-japanese-yen"]={ImageRectPosition=
Vector2.new(576,672),_Size=
Vector2.new(48,48),
},drumstick=
{ImageRectPosition=
Vector2.new(624,672),_Size=
Vector2.new(48,48),
},
["egg-fried"]={ImageRectPosition=
Vector2.new(672,672),_Size=
Vector2.new(48,48),
},
["file-search"]={ImageRectPosition=
Vector2.new(720,672),_Size=
Vector2.new(48,48),
},
["file-up"]={ImageRectPosition=
Vector2.new(768,672),_Size=
Vector2.new(48,48),
},
["flip-vertical"]={ImageRectPosition=
Vector2.new(816,672),_Size=
Vector2.new(48,48),
},
["folder-up"]={ImageRectPosition=
Vector2.new(864,672),_Size=
Vector2.new(48,48),
},
["git-compare"]={ImageRectPosition=
Vector2.new(912,672),_Size=
Vector2.new(48,48),
},
["git-pull-request-arrow"]={ImageRectPosition=
Vector2.new(960,672),_Size=
Vector2.new(48,48),
},globe=
{ImageRectPosition=
Vector2.new(1008,672),_Size=
Vector2.new(48,48),
},
["clock-12"]={ImageRectPosition=
Vector2.new(1056,672),_Size=
Vector2.new(48,48),
},
["list-end"]={ImageRectPosition=
Vector2.new(1104,672),_Size=
Vector2.new(48,48),
},loader=
{ImageRectPosition=
Vector2.new(1152,672),_Size=
Vector2.new(48,48),
},
["maximize-2"]={ImageRectPosition=
Vector2.new(1200,672),_Size=
Vector2.new(48,48),
},
["megaphone-off"]={ImageRectPosition=
Vector2.new(1248,672),_Size=
Vector2.new(48,48),
},
["minimize-2"]={ImageRectPosition=
Vector2.new(1296,672),_Size=
Vector2.new(48,48),
},
["tally-5"]={ImageRectPosition=
Vector2.new(1344,672),_Size=
Vector2.new(48,48),
},
["square-activity"]={ImageRectPosition=
Vector2.new(1392,672),_Size=
Vector2.new(48,48),
},
["square-dashed"]={ImageRectPosition=
Vector2.new(1440,672),_Size=
Vector2.new(48,48),
},
["square-pilcrow"]={ImageRectPosition=
Vector2.new(1488,672),_Size=
Vector2.new(48,48),
},
["square-user-round"]={ImageRectPosition=
Vector2.new(1536,672),_Size=
Vector2.new(48,48),
},
["image-play"]={ImageRectPosition=
Vector2.new(1584,672),_Size=
Vector2.new(48,48),
},snail=
{ImageRectPosition=
Vector2.new(1632,672),_Size=
Vector2.new(48,48),
},sparkle=
{ImageRectPosition=
Vector2.new(1680,672),_Size=
Vector2.new(48,48),
},
["square-library"]={ImageRectPosition=
Vector2.new(1728,672),_Size=
Vector2.new(48,48),
},undo=
{ImageRectPosition=
Vector2.new(1776,672),_Size=
Vector2.new(48,48),
},
["user-round-minus"]={ImageRectPosition=
Vector2.new(1824,672),_Size=
Vector2.new(48,48),
},worm=
{ImageRectPosition=
Vector2.new(0,720),_Size=
Vector2.new(48,48),
},octagon=
{ImageRectPosition=
Vector2.new(48,720),_Size=
Vector2.new(48,48),
},volume=
{ImageRectPosition=
Vector2.new(96,720),_Size=
Vector2.new(48,48),
},
["square-scissors"]={ImageRectPosition=
Vector2.new(144,720),_Size=
Vector2.new(48,48),
},
["mouse-pointer-2"]={ImageRectPosition=
Vector2.new(192,720),_Size=
Vector2.new(48,48),
},
["panel-bottom"]={ImageRectPosition=
Vector2.new(240,720),_Size=
Vector2.new(48,48),
},
["panels-left-bottom"]={ImageRectPosition=
Vector2.new(288,720),_Size=
Vector2.new(48,48),
},
["pencil-ruler"]={ImageRectPosition=
Vector2.new(336,720),_Size=
Vector2.new(48,48),
},
["lightbulb-off"]={ImageRectPosition=
Vector2.new(384,720),_Size=
Vector2.new(48,48),
},signpost=
{ImageRectPosition=
Vector2.new(432,720),_Size=
Vector2.new(48,48),
},
["vibrate-off"]={ImageRectPosition=
Vector2.new(480,720),_Size=
Vector2.new(48,48),
},
["ticket-percent"]={ImageRectPosition=
Vector2.new(528,720),_Size=
Vector2.new(48,48),
},wallpaper=
{ImageRectPosition=
Vector2.new(576,720),_Size=
Vector2.new(48,48),
},workflow=
{ImageRectPosition=
Vector2.new(624,720),_Size=
Vector2.new(48,48),
},
["remove-formatting"]={ImageRectPosition=
Vector2.new(672,720),_Size=
Vector2.new(48,48),
},spline=
{ImageRectPosition=
Vector2.new(720,720),_Size=
Vector2.new(48,48),
},
["square-code"]={ImageRectPosition=
Vector2.new(768,720),_Size=
Vector2.new(48,48),
},
["navigation-2"]={ImageRectPosition=
Vector2.new(816,720),_Size=
Vector2.new(48,48),
},
["octagon-minus"]={ImageRectPosition=
Vector2.new(864,720),_Size=
Vector2.new(48,48),
},pilcrow=
{ImageRectPosition=
Vector2.new(912,720),_Size=
Vector2.new(48,48),
},megaphone=
{ImageRectPosition=
Vector2.new(960,720),_Size=
Vector2.new(48,48),
},
["rotate-cw-square"]={ImageRectPosition=
Vector2.new(1008,720),_Size=
Vector2.new(48,48),
},
["shopping-bag"]={ImageRectPosition=
Vector2.new(1056,720),_Size=
Vector2.new(48,48),
},slash=
{ImageRectPosition=
Vector2.new(1104,720),_Size=
Vector2.new(48,48),
},
["square-square"]={ImageRectPosition=
Vector2.new(1152,720),_Size=
Vector2.new(48,48),
},tent=
{ImageRectPosition=
Vector2.new(1200,720),_Size=
Vector2.new(48,48),
},waves=
{ImageRectPosition=
Vector2.new(1248,720),_Size=
Vector2.new(48,48),
},projector=
{ImageRectPosition=
Vector2.new(1296,720),_Size=
Vector2.new(48,48),
},rss=
{ImageRectPosition=
Vector2.new(1344,720),_Size=
Vector2.new(48,48),
},
["shield-ban"]={ImageRectPosition=
Vector2.new(1392,720),_Size=
Vector2.new(48,48),
},shrub=
{ImageRectPosition=
Vector2.new(1440,720),_Size=
Vector2.new(48,48),
},star=
{ImageRectPosition=
Vector2.new(1488,720),_Size=
Vector2.new(48,48),
},play=
{ImageRectPosition=
Vector2.new(1536,720),_Size=
Vector2.new(48,48),
},
["test-tube-diagonal"]={ImageRectPosition=
Vector2.new(1584,720),_Size=
Vector2.new(48,48),
},presentation=
{ImageRectPosition=
Vector2.new(1632,720),_Size=
Vector2.new(48,48),
},flashlight=
{ImageRectPosition=
Vector2.new(1680,720),_Size=
Vector2.new(48,48),
},
["circle-dashed"]={ImageRectPosition=
Vector2.new(1728,720),_Size=
Vector2.new(48,48),
},server=
{ImageRectPosition=
Vector2.new(1776,720),_Size=
Vector2.new(48,48),
},
["octagon-alert"]={ImageRectPosition=
Vector2.new(1824,720),_Size=
Vector2.new(48,48),
},
["tree-deciduous"]={ImageRectPosition=
Vector2.new(0,768),_Size=
Vector2.new(48,48),
},
["table-rows-split"]={ImageRectPosition=
Vector2.new(48,768),_Size=
Vector2.new(48,48),
},
["trending-up-down"]={ImageRectPosition=
Vector2.new(96,768),_Size=
Vector2.new(48,48),
},
["russian-ruble"]={ImageRectPosition=
Vector2.new(144,768),_Size=
Vector2.new(48,48),
},
["save-all"]={ImageRectPosition=
Vector2.new(192,768),_Size=
Vector2.new(48,48),
},satellite=
{ImageRectPosition=
Vector2.new(240,768),_Size=
Vector2.new(48,48),
},
["server-off"]={ImageRectPosition=
Vector2.new(288,768),_Size=
Vector2.new(48,48),
},pin=
{ImageRectPosition=
Vector2.new(336,768),_Size=
Vector2.new(48,48),
},
["lock-keyhole-open"]={ImageRectPosition=
Vector2.new(384,768),_Size=
Vector2.new(48,48),
},
["map-pin-plus-inside"]={ImageRectPosition=
Vector2.new(432,768),_Size=
Vector2.new(48,48),
},fan=
{ImageRectPosition=
Vector2.new(480,768),_Size=
Vector2.new(48,48),
},filter=
{ImageRectPosition=
Vector2.new(528,768),_Size=
Vector2.new(48,48),
},guitar=
{ImageRectPosition=
Vector2.new(576,768),_Size=
Vector2.new(48,48),
},
["square-dashed-kanban"]={ImageRectPosition=
Vector2.new(624,768),_Size=
Vector2.new(48,48),
},swords=
{ImageRectPosition=
Vector2.new(672,768),_Size=
Vector2.new(48,48),
},trees=
{ImageRectPosition=
Vector2.new(720,768),_Size=
Vector2.new(48,48),
},
["route-off"]={ImageRectPosition=
Vector2.new(768,768),_Size=
Vector2.new(48,48),
},
["move-up-right"]={ImageRectPosition=
Vector2.new(816,768),_Size=
Vector2.new(48,48),
},
["panels-right-bottom"]={ImageRectPosition=
Vector2.new(864,768),_Size=
Vector2.new(48,48),
},
["rectangle-horizontal"]={ImageRectPosition=
Vector2.new(912,768),_Size=
Vector2.new(48,48),
},settings=
{ImageRectPosition=
Vector2.new(960,768),_Size=
Vector2.new(48,48),
},
["square-check"]={ImageRectPosition=
Vector2.new(1008,768),_Size=
Vector2.new(48,48),
},minus=
{ImageRectPosition=
Vector2.new(1056,768),_Size=
Vector2.new(48,48),
},touchpad=
{ImageRectPosition=
Vector2.new(1104,768),_Size=
Vector2.new(48,48),
},
["traffic-cone"]={ImageRectPosition=
Vector2.new(1152,768),_Size=
Vector2.new(48,48),
},user=
{ImageRectPosition=
Vector2.new(1200,768),_Size=
Vector2.new(48,48),
},warehouse=
{ImageRectPosition=
Vector2.new(1248,768),_Size=
Vector2.new(48,48),
},
["repeat"]={ImageRectPosition=
Vector2.new(1296,768),_Size=
Vector2.new(48,48),
},
["scan-barcode"]={ImageRectPosition=
Vector2.new(1344,768),_Size=
Vector2.new(48,48),
},
["signal-medium"]={ImageRectPosition=
Vector2.new(1392,768),_Size=
Vector2.new(48,48),
},
["smile-plus"]={ImageRectPosition=
Vector2.new(1440,768),_Size=
Vector2.new(48,48),
},
["square-arrow-left"]={ImageRectPosition=
Vector2.new(1488,768),_Size=
Vector2.new(48,48),
},
["wand-sparkles"]={ImageRectPosition=
Vector2.new(1536,768),_Size=
Vector2.new(48,48),
},wifi=
{ImageRectPosition=
Vector2.new(1584,768),_Size=
Vector2.new(48,48),
},
["user-minus"]={ImageRectPosition=
Vector2.new(1632,768),_Size=
Vector2.new(48,48),
},sofa=
{ImageRectPosition=
Vector2.new(1680,768),_Size=
Vector2.new(48,48),
},
["monitor-x"]={ImageRectPosition=
Vector2.new(1728,768),_Size=
Vector2.new(48,48),
},
["paint-roller"]={ImageRectPosition=
Vector2.new(1776,768),_Size=
Vector2.new(48,48),
},
["rectangle-vertical"]={ImageRectPosition=
Vector2.new(1824,768),_Size=
Vector2.new(48,48),
},
["image-minus"]={ImageRectPosition=
Vector2.new(0,816),_Size=
Vector2.new(48,48),
},
["message-square-lock"]={ImageRectPosition=
Vector2.new(48,816),_Size=
Vector2.new(48,48),
},figma=
{ImageRectPosition=
Vector2.new(96,816),_Size=
Vector2.new(48,48),
},
["file-check"]={ImageRectPosition=
Vector2.new(144,816),_Size=
Vector2.new(48,48),
},
["venetian-mask"]={ImageRectPosition=
Vector2.new(192,816),_Size=
Vector2.new(48,48),
},wallet=
{ImageRectPosition=
Vector2.new(240,816),_Size=
Vector2.new(48,48),
},
["sticky-note"]={ImageRectPosition=
Vector2.new(288,816),_Size=
Vector2.new(48,48),
},sunset=
{ImageRectPosition=
Vector2.new(336,816),_Size=
Vector2.new(48,48),
},
["square-percent"]={ImageRectPosition=
Vector2.new(384,816),_Size=
Vector2.new(48,48),
},
["life-buoy"]={ImageRectPosition=
Vector2.new(432,816),_Size=
Vector2.new(48,48),
},
["flag-triangle-right"]={ImageRectPosition=
Vector2.new(480,816),_Size=
Vector2.new(48,48),
},
["settings-2"]={ImageRectPosition=
Vector2.new(528,816),_Size=
Vector2.new(48,48),
},twitch=
{ImageRectPosition=
Vector2.new(576,816),_Size=
Vector2.new(48,48),
},
["undo-2"]={ImageRectPosition=
Vector2.new(624,816),_Size=
Vector2.new(48,48),
},
["wrap-text"]={ImageRectPosition=
Vector2.new(672,816),_Size=
Vector2.new(48,48),
},
["pen-tool"]={ImageRectPosition=
Vector2.new(720,816),_Size=
Vector2.new(48,48),
},
["heart-handshake"]={ImageRectPosition=
Vector2.new(768,816),_Size=
Vector2.new(48,48),
},image=
{ImageRectPosition=
Vector2.new(816,816),_Size=
Vector2.new(48,48),
},
["message-circle"]={ImageRectPosition=
Vector2.new(864,816),_Size=
Vector2.new(48,48),
},plane=
{ImageRectPosition=
Vector2.new(912,816),_Size=
Vector2.new(48,48),
},
["receipt-swiss-franc"]={ImageRectPosition=
Vector2.new(960,816),_Size=
Vector2.new(48,48),
},send=
{ImageRectPosition=
Vector2.new(1008,816),_Size=
Vector2.new(48,48),
},
["square-radical"]={ImageRectPosition=
Vector2.new(1056,816),_Size=
Vector2.new(48,48),
},
["train-front"]={ImageRectPosition=
Vector2.new(1104,816),_Size=
Vector2.new(48,48),
},
["utility-pole"]={ImageRectPosition=
Vector2.new(1152,816),_Size=
Vector2.new(48,48),
},wrench=
{ImageRectPosition=
Vector2.new(1200,816),_Size=
Vector2.new(48,48),
},
["user-pen"]={ImageRectPosition=
Vector2.new(1248,816),_Size=
Vector2.new(48,48),
},sailboat=
{ImageRectPosition=
Vector2.new(1296,816),_Size=
Vector2.new(48,48),
},save=
{ImageRectPosition=
Vector2.new(1344,816),_Size=
Vector2.new(48,48),
},scissors=
{ImageRectPosition=
Vector2.new(1392,816),_Size=
Vector2.new(48,48),
},
["spell-check-2"]={ImageRectPosition=
Vector2.new(1440,816),_Size=
Vector2.new(48,48),
},
["shield-check"]={ImageRectPosition=
Vector2.new(1488,816),_Size=
Vector2.new(48,48),
},truck=
{ImageRectPosition=
Vector2.new(1536,816),_Size=
Vector2.new(48,48),
},
["undo-dot"]={ImageRectPosition=
Vector2.new(1584,816),_Size=
Vector2.new(48,48),
},ungroup=
{ImageRectPosition=
Vector2.new(1632,816),_Size=
Vector2.new(48,48),
},
["repeat-2"]={ImageRectPosition=
Vector2.new(1680,816),_Size=
Vector2.new(48,48),
},store=
{ImageRectPosition=
Vector2.new(1728,816),_Size=
Vector2.new(48,48),
},
["sun-snow"]={ImageRectPosition=
Vector2.new(1776,816),_Size=
Vector2.new(48,48),
},
["list-video"]={ImageRectPosition=
Vector2.new(1824,816),_Size=
Vector2.new(48,48),
},
["folder-key"]={ImageRectPosition=
Vector2.new(0,864),_Size=
Vector2.new(48,48),
},type=
{ImageRectPosition=
Vector2.new(48,864),_Size=
Vector2.new(48,48),
},youtube=
{ImageRectPosition=
Vector2.new(96,864),_Size=
Vector2.new(48,48),
},ticket=
{ImageRectPosition=
Vector2.new(144,864),_Size=
Vector2.new(48,48),
},
["scan-qr-code"]={ImageRectPosition=
Vector2.new(192,864),_Size=
Vector2.new(48,48),
},
["square-mouse-pointer"]={ImageRectPosition=
Vector2.new(240,864),_Size=
Vector2.new(48,48),
},trash=
{ImageRectPosition=
Vector2.new(288,864),_Size=
Vector2.new(48,48),
},
["user-round-x"]={ImageRectPosition=
Vector2.new(336,864),_Size=
Vector2.new(48,48),
},utensils=
{ImageRectPosition=
Vector2.new(384,864),_Size=
Vector2.new(48,48),
},thermometer=
{ImageRectPosition=
Vector2.new(432,864),_Size=
Vector2.new(48,48),
},
["toy-brick"]={ImageRectPosition=
Vector2.new(480,864),_Size=
Vector2.new(48,48),
},square=
{ImageRectPosition=
Vector2.new(528,864),_Size=
Vector2.new(48,48),
},
["nut-off"]={ImageRectPosition=
Vector2.new(576,864),_Size=
Vector2.new(48,48),
},
["receipt-russian-ruble"]={ImageRectPosition=
Vector2.new(624,864),_Size=
Vector2.new(48,48),
},
["refresh-cw"]={ImageRectPosition=
Vector2.new(672,864),_Size=
Vector2.new(48,48),
},
["heading-1"]={ImageRectPosition=
Vector2.new(720,864),_Size=
Vector2.new(48,48),
},
["satellite-dish"]={ImageRectPosition=
Vector2.new(768,864),_Size=
Vector2.new(48,48),
},
["ship-wheel"]={ImageRectPosition=
Vector2.new(816,864),_Size=
Vector2.new(48,48),
},slack=
{ImageRectPosition=
Vector2.new(864,864),_Size=
Vector2.new(48,48),
},
["square-user"]={ImageRectPosition=
Vector2.new(912,864),_Size=
Vector2.new(48,48),
},
["step-forward"]={ImageRectPosition=
Vector2.new(960,864),_Size=
Vector2.new(48,48),
},umbrella=
{ImageRectPosition=
Vector2.new(1008,864),_Size=
Vector2.new(48,48),
},
["umbrella-off"]={ImageRectPosition=
Vector2.new(1056,864),_Size=
Vector2.new(48,48),
},unlink=
{ImageRectPosition=
Vector2.new(1104,864),_Size=
Vector2.new(48,48),
},
["unlink-2"]={ImageRectPosition=
Vector2.new(1152,864),_Size=
Vector2.new(48,48),
},wand=
{ImageRectPosition=
Vector2.new(1200,864),_Size=
Vector2.new(48,48),
},webcam=
{ImageRectPosition=
Vector2.new(1248,864),_Size=
Vector2.new(48,48),
},
["share-2"]={ImageRectPosition=
Vector2.new(1296,864),_Size=
Vector2.new(48,48),
},
["shield-half"]={ImageRectPosition=
Vector2.new(1344,864),_Size=
Vector2.new(48,48),
},
["skip-forward"]={ImageRectPosition=
Vector2.new(1392,864),_Size=
Vector2.new(48,48),
},
["monitor-speaker"]={ImageRectPosition=
Vector2.new(1440,864),_Size=
Vector2.new(48,48),
},move=
{ImageRectPosition=
Vector2.new(1488,864),_Size=
Vector2.new(48,48),
},
["move-up"]={ImageRectPosition=
Vector2.new(1536,864),_Size=
Vector2.new(48,48),
},
["align-end-horizontal"]={ImageRectPosition=
Vector2.new(1584,864),_Size=
Vector2.new(48,48),
},biohazard=
{ImageRectPosition=
Vector2.new(1632,864),_Size=
Vector2.new(48,48),
},
["bug-play"]={ImageRectPosition=
Vector2.new(1680,864),_Size=
Vector2.new(48,48),
},
["file-lock"]={ImageRectPosition=
Vector2.new(1728,864),_Size=
Vector2.new(48,48),
},cigarette=
{ImageRectPosition=
Vector2.new(1776,864),_Size=
Vector2.new(48,48),
},
["monitor-check"]={ImageRectPosition=
Vector2.new(1824,864),_Size=
Vector2.new(48,48),
},unplug=
{ImageRectPosition=
Vector2.new(0,912),_Size=
Vector2.new(48,48),
},
["square-arrow-down-right"]={ImageRectPosition=
Vector2.new(48,912),_Size=
Vector2.new(48,48),
},
["square-chevron-up"]={ImageRectPosition=
Vector2.new(96,912),_Size=
Vector2.new(48,48),
},
["square-dashed-bottom"]={ImageRectPosition=
Vector2.new(144,912),_Size=
Vector2.new(48,48),
},plug=
{ImageRectPosition=
Vector2.new(192,912),_Size=
Vector2.new(48,48),
},lamp=
{ImageRectPosition=
Vector2.new(240,912),_Size=
Vector2.new(48,48),
},
["file-chart-line"]={ImageRectPosition=
Vector2.new(288,912),_Size=
Vector2.new(48,48),
},
["file-clock"]={ImageRectPosition=
Vector2.new(336,912),_Size=
Vector2.new(48,48),
},shapes=
{ImageRectPosition=
Vector2.new(384,912),_Size=
Vector2.new(48,48),
},speaker=
{ImageRectPosition=
Vector2.new(432,912),_Size=
Vector2.new(48,48),
},
["square-arrow-up-left"]={ImageRectPosition=
Vector2.new(480,912),_Size=
Vector2.new(48,48),
},
["user-round-search"]={ImageRectPosition=
Vector2.new(528,912),_Size=
Vector2.new(48,48),
},wind=
{ImageRectPosition=
Vector2.new(576,912),_Size=
Vector2.new(48,48),
},
["separator-horizontal"]={ImageRectPosition=
Vector2.new(624,912),_Size=
Vector2.new(48,48),
},
["square-chevron-down"]={ImageRectPosition=
Vector2.new(672,912),_Size=
Vector2.new(48,48),
},
["text-cursor"]={ImageRectPosition=
Vector2.new(720,912),_Size=
Vector2.new(48,48),
},theater=
{ImageRectPosition=
Vector2.new(768,912),_Size=
Vector2.new(48,48),
},
["user-search"]={ImageRectPosition=
Vector2.new(816,912),_Size=
Vector2.new(48,48),
},
["swatch-book"]={ImageRectPosition=
Vector2.new(864,912),_Size=
Vector2.new(48,48),
},
["timer-off"]={ImageRectPosition=
Vector2.new(912,912),_Size=
Vector2.new(48,48),
},
["volume-x"]={ImageRectPosition=
Vector2.new(960,912),_Size=
Vector2.new(48,48),
},
["square-arrow-up"]={ImageRectPosition=
Vector2.new(1008,912),_Size=
Vector2.new(48,48),
},palette=
{ImageRectPosition=
Vector2.new(1056,912),_Size=
Vector2.new(48,48),
},pause=
{ImageRectPosition=
Vector2.new(1104,912),_Size=
Vector2.new(48,48),
},magnet=
{ImageRectPosition=
Vector2.new(1152,912),_Size=
Vector2.new(48,48),
},podcast=
{ImageRectPosition=
Vector2.new(1200,912),_Size=
Vector2.new(48,48),
},quote=
{ImageRectPosition=
Vector2.new(1248,912),_Size=
Vector2.new(48,48),
},receipt=
{ImageRectPosition=
Vector2.new(1296,912),_Size=
Vector2.new(48,48),
},shuffle=
{ImageRectPosition=
Vector2.new(1344,912),_Size=
Vector2.new(48,48),
},
["sun-moon"]={ImageRectPosition=
Vector2.new(1392,912),_Size=
Vector2.new(48,48),
},
["tower-control"]={ImageRectPosition=
Vector2.new(1440,912),_Size=
Vector2.new(48,48),
},
["webhook-off"]={ImageRectPosition=
Vector2.new(1488,912),_Size=
Vector2.new(48,48),
},
["search-check"]={ImageRectPosition=
Vector2.new(1536,912),_Size=
Vector2.new(48,48),
},
["signpost-big"]={ImageRectPosition=
Vector2.new(1584,912),_Size=
Vector2.new(48,48),
},
["printer-check"]={ImageRectPosition=
Vector2.new(1632,912),_Size=
Vector2.new(48,48),
},router=
{ImageRectPosition=
Vector2.new(1680,912),_Size=
Vector2.new(48,48),
},speech=
{ImageRectPosition=
Vector2.new(1728,912),_Size=
Vector2.new(48,48),
},
["image-plus"]={ImageRectPosition=
Vector2.new(1776,912),_Size=
Vector2.new(48,48),
},
["indent-decrease"]={ImageRectPosition=
Vector2.new(1824,912),_Size=
Vector2.new(48,48),
},
["lamp-ceiling"]={ImageRectPosition=
Vector2.new(0,960),_Size=
Vector2.new(48,48),
},hammer=
{ImageRectPosition=
Vector2.new(48,960),_Size=
Vector2.new(48,48),
},
["file-audio"]={ImageRectPosition=
Vector2.new(96,960),_Size=
Vector2.new(48,48),
},
["fold-horizontal"]={ImageRectPosition=
Vector2.new(144,960),_Size=
Vector2.new(48,48),
},
["folder-git"]={ImageRectPosition=
Vector2.new(192,960),_Size=
Vector2.new(48,48),
},
["circle-arrow-out-down-right"]={ImageRectPosition=
Vector2.new(240,960),_Size=
Vector2.new(48,48),
},weight=
{ImageRectPosition=
Vector2.new(288,960),_Size=
Vector2.new(48,48),
},
["headphone-off"]={ImageRectPosition=
Vector2.new(336,960),_Size=
Vector2.new(48,48),
},
["link-2-off"]={ImageRectPosition=
Vector2.new(384,960),_Size=
Vector2.new(48,48),
},
["loader-circle"]={ImageRectPosition=
Vector2.new(432,960),_Size=
Vector2.new(48,48),
},
["message-circle-reply"]={ImageRectPosition=
Vector2.new(480,960),_Size=
Vector2.new(48,48),
},
["eye-off"]={ImageRectPosition=
Vector2.new(528,960),_Size=
Vector2.new(48,48),
},
["flashlight-off"]={ImageRectPosition=
Vector2.new(576,960),_Size=
Vector2.new(48,48),
},
["folder-heart"]={ImageRectPosition=
Vector2.new(624,960),_Size=
Vector2.new(48,48),
},
["folder-kanban"]={ImageRectPosition=
Vector2.new(672,960),_Size=
Vector2.new(48,48),
},
["git-branch"]={ImageRectPosition=
Vector2.new(720,960),_Size=
Vector2.new(48,48),
},sparkles=
{ImageRectPosition=
Vector2.new(768,960),_Size=
Vector2.new(48,48),
},
["square-x"]={ImageRectPosition=
Vector2.new(816,960),_Size=
Vector2.new(48,48),
},vegan=
{ImageRectPosition=
Vector2.new(864,960),_Size=
Vector2.new(48,48),
},navigation=
{ImageRectPosition=
Vector2.new(912,960),_Size=
Vector2.new(48,48),
},ratio=
{ImageRectPosition=
Vector2.new(960,960),_Size=
Vector2.new(48,48),
},
["heart-pulse"]={ImageRectPosition=
Vector2.new(1008,960),_Size=
Vector2.new(48,48),
},
["heart-crack"]={ImageRectPosition=
Vector2.new(1056,960),_Size=
Vector2.new(48,48),
},
["wifi-low"]={ImageRectPosition=
Vector2.new(1104,960),_Size=
Vector2.new(48,48),
},
["star-half"]={ImageRectPosition=
Vector2.new(1152,960),_Size=
Vector2.new(48,48),
},
["tv-minimal-play"]={ImageRectPosition=
Vector2.new(1200,960),_Size=
Vector2.new(48,48),
},
["user-round-check"]={ImageRectPosition=
Vector2.new(1248,960),_Size=
Vector2.new(48,48),
},
["washing-machine"]={ImageRectPosition=
Vector2.new(1296,960),_Size=
Vector2.new(48,48),
},watch=
{ImageRectPosition=
Vector2.new(1344,960),_Size=
Vector2.new(48,48),
},
["scissors-line-dashed"]={ImageRectPosition=
Vector2.new(1392,960),_Size=
Vector2.new(48,48),
},
["server-cog"]={ImageRectPosition=
Vector2.new(1440,960),_Size=
Vector2.new(48,48),
},github=
{ImageRectPosition=
Vector2.new(1488,960),_Size=
Vector2.new(48,48),
},bandage=
{ImageRectPosition=
Vector2.new(1536,960),_Size=
Vector2.new(48,48),
},car=
{ImageRectPosition=
Vector2.new(1584,960),_Size=
Vector2.new(48,48),
},
["heading-5"]={ImageRectPosition=
Vector2.new(1632,960),_Size=
Vector2.new(48,48),
},combine=
{ImageRectPosition=
Vector2.new(1680,960),_Size=
Vector2.new(48,48),
},
["arrow-up-narrow-wide"]={ImageRectPosition=
Vector2.new(1728,960),_Size=
Vector2.new(48,48),
},
["circle-fading-plus"]={ImageRectPosition=
Vector2.new(1776,960),_Size=
Vector2.new(48,48),
},
["copy-slash"]={ImageRectPosition=
Vector2.new(1824,960),_Size=
Vector2.new(48,48),
},
["creative-commons"]={ImageRectPosition=
Vector2.new(0,1008),_Size=
Vector2.new(48,48),
},
["cup-soda"]={ImageRectPosition=
Vector2.new(48,1008),_Size=
Vector2.new(48,48),
},battery=
{ImageRectPosition=
Vector2.new(96,1008),_Size=
Vector2.new(48,48),
},
["panel-bottom-open"]={ImageRectPosition=
Vector2.new(144,1008),_Size=
Vector2.new(48,48),
},
["panel-right-dashed"]={ImageRectPosition=
Vector2.new(192,1008),_Size=
Vector2.new(48,48),
},
["panel-top-open"]={ImageRectPosition=
Vector2.new(240,1008),_Size=
Vector2.new(48,48),
},telescope=
{ImageRectPosition=
Vector2.new(288,1008),_Size=
Vector2.new(48,48),
},
["square-arrow-out-down-right"]={ImageRectPosition=
Vector2.new(336,1008),_Size=
Vector2.new(48,48),
},
["square-arrow-right"]={ImageRectPosition=
Vector2.new(384,1008),_Size=
Vector2.new(48,48),
},
["monitor-dot"]={ImageRectPosition=
Vector2.new(432,1008),_Size=
Vector2.new(48,48),
},
["locate-fixed"]={ImageRectPosition=
Vector2.new(480,1008),_Size=
Vector2.new(48,48),
},
["file-plus-2"]={ImageRectPosition=
Vector2.new(528,1008),_Size=
Vector2.new(48,48),
},
["table-columns-split"]={ImageRectPosition=
Vector2.new(576,1008),_Size=
Vector2.new(48,48),
},
["replace-all"]={ImageRectPosition=
Vector2.new(624,1008),_Size=
Vector2.new(48,48),
},
["move-diagonal-2"]={ImageRectPosition=
Vector2.new(672,1008),_Size=
Vector2.new(48,48),
},
["pencil-off"]={ImageRectPosition=
Vector2.new(720,1008),_Size=
Vector2.new(48,48),
},
["file-minus-2"]={ImageRectPosition=
Vector2.new(768,1008),_Size=
Vector2.new(48,48),
},
["file-music"]={ImageRectPosition=
Vector2.new(816,1008),_Size=
Vector2.new(48,48),
},
["scan-eye"]={ImageRectPosition=
Vector2.new(864,1008),_Size=
Vector2.new(48,48),
},
["zoom-in"]={ImageRectPosition=
Vector2.new(912,1008),_Size=
Vector2.new(48,48),
},
["text-search"]={ImageRectPosition=
Vector2.new(960,1008),_Size=
Vector2.new(48,48),
},waypoints=
{ImageRectPosition=
Vector2.new(1008,1008),_Size=
Vector2.new(48,48),
},
["whole-word"]={ImageRectPosition=
Vector2.new(1056,1008),_Size=
Vector2.new(48,48),
},
["wifi-off"]={ImageRectPosition=
Vector2.new(1104,1008),_Size=
Vector2.new(48,48),
},
["shield-question"]={ImageRectPosition=
Vector2.new(1152,1008),_Size=
Vector2.new(48,48),
},
["package-open"]={ImageRectPosition=
Vector2.new(1200,1008),_Size=
Vector2.new(48,48),
},hourglass=
{ImageRectPosition=
Vector2.new(1248,1008),_Size=
Vector2.new(48,48),
},
["iteration-cw"]={ImageRectPosition=
Vector2.new(1296,1008),_Size=
Vector2.new(48,48),
},mic=
{ImageRectPosition=
Vector2.new(1344,1008),_Size=
Vector2.new(48,48),
},
["step-back"]={ImageRectPosition=
Vector2.new(1392,1008),_Size=
Vector2.new(48,48),
},superscript=
{ImageRectPosition=
Vector2.new(1440,1008),_Size=
Vector2.new(48,48),
},sword=
{ImageRectPosition=
Vector2.new(1488,1008),_Size=
Vector2.new(48,48),
},
["table-2"]={ImageRectPosition=
Vector2.new(1536,1008),_Size=
Vector2.new(48,48),
},
["table-cells-merge"]={ImageRectPosition=
Vector2.new(1584,1008),_Size=
Vector2.new(48,48),
},
["rows-2"]={ImageRectPosition=
Vector2.new(1632,1008),_Size=
Vector2.new(48,48),
},
["save-off"]={ImageRectPosition=
Vector2.new(1680,1008),_Size=
Vector2.new(48,48),
},
["search-code"]={ImageRectPosition=
Vector2.new(1728,1008),_Size=
Vector2.new(48,48),
},
["search-slash"]={ImageRectPosition=
Vector2.new(1776,1008),_Size=
Vector2.new(48,48),
},signal=
{ImageRectPosition=
Vector2.new(1824,1008),_Size=
Vector2.new(48,48),
},
["monitor-pause"]={ImageRectPosition=
Vector2.new(0,1056),_Size=
Vector2.new(48,48),
},
["radio-receiver"]={ImageRectPosition=
Vector2.new(48,1056),_Size=
Vector2.new(48,48),
},
["heading-2"]={ImageRectPosition=
Vector2.new(96,1056),_Size=
Vector2.new(48,48),
},
["smartphone-charging"]={ImageRectPosition=
Vector2.new(144,1056),_Size=
Vector2.new(48,48),
},tags=
{ImageRectPosition=
Vector2.new(192,1056),_Size=
Vector2.new(48,48),
},users=
{ImageRectPosition=
Vector2.new(240,1056),_Size=
Vector2.new(48,48),
},
["thermometer-sun"]={ImageRectPosition=
Vector2.new(288,1056),_Size=
Vector2.new(48,48),
},
["trending-down"]={ImageRectPosition=
Vector2.new(336,1056),_Size=
Vector2.new(48,48),
},shirt=
{ImageRectPosition=
Vector2.new(384,1056),_Size=
Vector2.new(48,48),
},
["signal-high"]={ImageRectPosition=
Vector2.new(432,1056),_Size=
Vector2.new(48,48),
},
["layout-panel-top"]={ImageRectPosition=
Vector2.new(480,1056),_Size=
Vector2.new(48,48),
},
["link-2"]={ImageRectPosition=
Vector2.new(528,1056),_Size=
Vector2.new(48,48),
},
["message-square-off"]={ImageRectPosition=
Vector2.new(576,1056),_Size=
Vector2.new(48,48),
},
["file-spreadsheet"]={ImageRectPosition=
Vector2.new(624,1056),_Size=
Vector2.new(48,48),
},
["file-x"]={ImageRectPosition=
Vector2.new(672,1056),_Size=
Vector2.new(48,48),
},
["flip-horizontal-2"]={ImageRectPosition=
Vector2.new(720,1056),_Size=
Vector2.new(48,48),
},
["square-dashed-mouse-pointer"]={ImageRectPosition=
Vector2.new(768,1056),_Size=
Vector2.new(48,48),
},
["volume-off"]={ImageRectPosition=
Vector2.new(816,1056),_Size=
Vector2.new(48,48),
},
["zap-off"]={ImageRectPosition=
Vector2.new(864,1056),_Size=
Vector2.new(48,48),
},
["user-round-cog"]={ImageRectPosition=
Vector2.new(912,1056),_Size=
Vector2.new(48,48),
},
["users-round"]={ImageRectPosition=
Vector2.new(960,1056),_Size=
Vector2.new(48,48),
},
["scale-3d"]={ImageRectPosition=
Vector2.new(1008,1056),_Size=
Vector2.new(48,48),
},
["file-video"]={ImageRectPosition=
Vector2.new(1056,1056),_Size=
Vector2.new(48,48),
},
["scroll-text"]={ImageRectPosition=
Vector2.new(1104,1056),_Size=
Vector2.new(48,48),
},share=
{ImageRectPosition=
Vector2.new(1152,1056),_Size=
Vector2.new(48,48),
},
["square-dashed-bottom-code"]={ImageRectPosition=
Vector2.new(1200,1056),_Size=
Vector2.new(48,48),
},
["wine-off"]={ImageRectPosition=
Vector2.new(1248,1056),_Size=
Vector2.new(48,48),
},
["tree-palm"]={ImageRectPosition=
Vector2.new(1296,1056),_Size=
Vector2.new(48,48),
},paintbrush=
{ImageRectPosition=
Vector2.new(1344,1056),_Size=
Vector2.new(48,48),
},
["panel-right-close"]={ImageRectPosition=
Vector2.new(1392,1056),_Size=
Vector2.new(48,48),
},
["phone-call"]={ImageRectPosition=
Vector2.new(1440,1056),_Size=
Vector2.new(48,48),
},
["send-to-back"]={ImageRectPosition=
Vector2.new(1488,1056),_Size=
Vector2.new(48,48),
},trophy=
{ImageRectPosition=
Vector2.new(1536,1056),_Size=
Vector2.new(48,48),
},zap=
{ImageRectPosition=
Vector2.new(1584,1056),_Size=
Vector2.new(48,48),
},
["user-plus"]={ImageRectPosition=
Vector2.new(1632,1056),_Size=
Vector2.new(48,48),
},vibrate=
{ImageRectPosition=
Vector2.new(1680,1056),_Size=
Vector2.new(48,48),
},
["volume-1"]={ImageRectPosition=
Vector2.new(1728,1056),_Size=
Vector2.new(48,48),
},scale=
{ImageRectPosition=
Vector2.new(1776,1056),_Size=
Vector2.new(48,48),
},
["sliders-vertical"]={ImageRectPosition=
Vector2.new(1824,1056),_Size=
Vector2.new(48,48),
},
["mountain-snow"]={ImageRectPosition=
Vector2.new(0,1104),_Size=
Vector2.new(48,48),
},
["flag-off"]={ImageRectPosition=
Vector2.new(48,1104),_Size=
Vector2.new(48,48),
},
["diamond-percent"]={ImageRectPosition=
Vector2.new(96,1104),_Size=
Vector2.new(48,48),
},
["wifi-zero"]={ImageRectPosition=
Vector2.new(144,1104),_Size=
Vector2.new(48,48),
},
["user-round-plus"]={ImageRectPosition=
Vector2.new(192,1104),_Size=
Vector2.new(48,48),
},
["square-kanban"]={ImageRectPosition=
Vector2.new(240,1104),_Size=
Vector2.new(48,48),
},
["spell-check"]={ImageRectPosition=
Vector2.new(288,1104),_Size=
Vector2.new(48,48),
},
["spray-can"]={ImageRectPosition=
Vector2.new(336,1104),_Size=
Vector2.new(48,48),
},
["square-equal"]={ImageRectPosition=
Vector2.new(384,1104),_Size=
Vector2.new(48,48),
},strikethrough=
{ImageRectPosition=
Vector2.new(432,1104),_Size=
Vector2.new(48,48),
},tablets=
{ImageRectPosition=
Vector2.new(480,1104),_Size=
Vector2.new(48,48),
},
["tally-1"]={ImageRectPosition=
Vector2.new(528,1104),_Size=
Vector2.new(48,48),
},
["tally-2"]={ImageRectPosition=
Vector2.new(576,1104),_Size=
Vector2.new(48,48),
},
["text-select"]={ImageRectPosition=
Vector2.new(624,1104),_Size=
Vector2.new(48,48),
},
["train-front-tunnel"]={ImageRectPosition=
Vector2.new(672,1104),_Size=
Vector2.new(48,48),
},
["scan-face"]={ImageRectPosition=
Vector2.new(720,1104),_Size=
Vector2.new(48,48),
},
["scan-search"]={ImageRectPosition=
Vector2.new(768,1104),_Size=
Vector2.new(48,48),
},
["package-minus"]={ImageRectPosition=
Vector2.new(816,1104),_Size=
Vector2.new(48,48),
},
["package-x"]={ImageRectPosition=
Vector2.new(864,1104),_Size=
Vector2.new(48,48),
},
["message-circle-more"]={ImageRectPosition=
Vector2.new(912,1104),_Size=
Vector2.new(48,48),
},
["message-circle-x"]={ImageRectPosition=
Vector2.new(960,1104),_Size=
Vector2.new(48,48),
},
["file-heart"]={ImageRectPosition=
Vector2.new(1008,1104),_Size=
Vector2.new(48,48),
},
["file-json-2"]={ImageRectPosition=
Vector2.new(1056,1104),_Size=
Vector2.new(48,48),
},
["folder-archive"]={ImageRectPosition=
Vector2.new(1104,1104),_Size=
Vector2.new(48,48),
},
["folder-root"]={ImageRectPosition=
Vector2.new(1152,1104),_Size=
Vector2.new(48,48),
},
["move-vertical"]={ImageRectPosition=
Vector2.new(1200,1104),_Size=
Vector2.new(48,48),
},sunrise=
{ImageRectPosition=
Vector2.new(1248,1104),_Size=
Vector2.new(48,48),
},tag=
{ImageRectPosition=
Vector2.new(1296,1104),_Size=
Vector2.new(48,48),
},torus=
{ImageRectPosition=
Vector2.new(1344,1104),_Size=
Vector2.new(48,48),
},x=
{ImageRectPosition=
Vector2.new(1392,1104),_Size=
Vector2.new(48,48),
},
["square-arrow-down-left"]={ImageRectPosition=
Vector2.new(1440,1104),_Size=
Vector2.new(48,48),
},
["square-play"]={ImageRectPosition=
Vector2.new(1488,1104),_Size=
Vector2.new(48,48),
},
["square-sigma"]={ImageRectPosition=
Vector2.new(1536,1104),_Size=
Vector2.new(48,48),
},
["parking-meter"]={ImageRectPosition=
Vector2.new(1584,1104),_Size=
Vector2.new(48,48),
},
["house-plug"]={ImageRectPosition=
Vector2.new(1632,1104),_Size=
Vector2.new(48,48),
},
["square-plus"]={ImageRectPosition=
Vector2.new(1680,1104),_Size=
Vector2.new(48,48),
},monitor=
{ImageRectPosition=
Vector2.new(1728,1104),_Size=
Vector2.new(48,48),
},
["tv-minimal"]={ImageRectPosition=
Vector2.new(1776,1104),_Size=
Vector2.new(48,48),
},
["wifi-high"]={ImageRectPosition=
Vector2.new(1824,1104),_Size=
Vector2.new(48,48),
},
["rocking-chair"]={ImageRectPosition=
Vector2.new(0,1152),_Size=
Vector2.new(48,48),
},
["monitor-up"]={ImageRectPosition=
Vector2.new(48,1152),_Size=
Vector2.new(48,48),
},terminal=
{ImageRectPosition=
Vector2.new(96,1152),_Size=
Vector2.new(48,48),
},
["rotate-ccw-square"]={ImageRectPosition=
Vector2.new(144,1152),_Size=
Vector2.new(48,48),
},
["shield-plus"]={ImageRectPosition=
Vector2.new(192,1152),_Size=
Vector2.new(48,48),
},ship=
{ImageRectPosition=
Vector2.new(240,1152),_Size=
Vector2.new(48,48),
},
["layout-template"]={ImageRectPosition=
Vector2.new(288,1152),_Size=
Vector2.new(48,48),
},
["folder-output"]={ImageRectPosition=
Vector2.new(336,1152),_Size=
Vector2.new(48,48),
},frown=
{ImageRectPosition=
Vector2.new(384,1152),_Size=
Vector2.new(48,48),
},
["grid-2x2-check"]={ImageRectPosition=
Vector2.new(432,1152),_Size=
Vector2.new(48,48),
},syringe=
{ImageRectPosition=
Vector2.new(480,1152),_Size=
Vector2.new(48,48),
},target=
{ImageRectPosition=
Vector2.new(528,1152),_Size=
Vector2.new(48,48),
},
["thermometer-snowflake"]={ImageRectPosition=
Vector2.new(576,1152),_Size=
Vector2.new(48,48),
},
["ticket-x"]={ImageRectPosition=
Vector2.new(624,1152),_Size=
Vector2.new(48,48),
},
["toggle-right"]={ImageRectPosition=
Vector2.new(672,1152),_Size=
Vector2.new(48,48),
},
["user-cog"]={ImageRectPosition=
Vector2.new(720,1152),_Size=
Vector2.new(48,48),
},
["wallet-cards"]={ImageRectPosition=
Vector2.new(768,1152),_Size=
Vector2.new(48,48),
},shield=
{ImageRectPosition=
Vector2.new(816,1152),_Size=
Vector2.new(48,48),
},
["phone-incoming"]={ImageRectPosition=
Vector2.new(864,1152),_Size=
Vector2.new(48,48),
},
["refresh-ccw-dot"]={ImageRectPosition=
Vector2.new(912,1152),_Size=
Vector2.new(48,48),
},
["file-output"]={ImageRectPosition=
Vector2.new(960,1152),_Size=
Vector2.new(48,48),
},
["hand-helping"]={ImageRectPosition=
Vector2.new(1008,1152),_Size=
Vector2.new(48,48),
},
["circle-arrow-out-up-left"]={ImageRectPosition=
Vector2.new(1056,1152),_Size=
Vector2.new(48,48),
},siren=
{ImageRectPosition=
Vector2.new(1104,1152),_Size=
Vector2.new(48,48),
},vote=
{ImageRectPosition=
Vector2.new(1152,1152),_Size=
Vector2.new(48,48),
},
["table-properties"]={ImageRectPosition=
Vector2.new(1200,1152),_Size=
Vector2.new(48,48),
},trello=
{ImageRectPosition=
Vector2.new(1248,1152),_Size=
Vector2.new(48,48),
},
["music-3"]={ImageRectPosition=
Vector2.new(1296,1152),_Size=
Vector2.new(48,48),
},
["navigation-2-off"]={ImageRectPosition=
Vector2.new(1344,1152),_Size=
Vector2.new(48,48),
},
["pocket-knife"]={ImageRectPosition=
Vector2.new(1392,1152),_Size=
Vector2.new(48,48),
},
["message-square-warning"]={ImageRectPosition=
Vector2.new(1440,1152),_Size=
Vector2.new(48,48),
},
["qr-code"]={ImageRectPosition=
Vector2.new(1488,1152),_Size=
Vector2.new(48,48),
},
["rotate-cw"]={ImageRectPosition=
Vector2.new(1536,1152),_Size=
Vector2.new(48,48),
},
["user-round-pen"]={ImageRectPosition=
Vector2.new(1584,1152),_Size=
Vector2.new(48,48),
},
["type-outline"]={ImageRectPosition=
Vector2.new(1632,1152),_Size=
Vector2.new(48,48),
},
["user-round"]={ImageRectPosition=
Vector2.new(1680,1152),_Size=
Vector2.new(48,48),
},
["square-check-big"]={ImageRectPosition=
Vector2.new(1728,1152),_Size=
Vector2.new(48,48),
},
["move-up-left"]={ImageRectPosition=
Vector2.new(1776,1152),_Size=
Vector2.new(48,48),
},forward=
{ImageRectPosition=
Vector2.new(1824,1152),_Size=
Vector2.new(48,48),
},
["database-backup"]={ImageRectPosition=
Vector2.new(0,1200),_Size=
Vector2.new(48,48),
},equal=
{ImageRectPosition=
Vector2.new(48,1200),_Size=
Vector2.new(48,48),
},
["circle-minus"]={ImageRectPosition=
Vector2.new(96,1200),_Size=
Vector2.new(48,48),
},euro=
{ImageRectPosition=
Vector2.new(144,1200),_Size=
Vector2.new(48,48),
},
["square-dot"]={ImageRectPosition=
Vector2.new(192,1200),_Size=
Vector2.new(48,48),
},
["list-check"]={ImageRectPosition=
Vector2.new(240,1200),_Size=
Vector2.new(48,48),
},
["file-cog"]={ImageRectPosition=
Vector2.new(288,1200),_Size=
Vector2.new(48,48),
},
["user-check"]={ImageRectPosition=
Vector2.new(336,1200),_Size=
Vector2.new(48,48),
},
["sun-medium"]={ImageRectPosition=
Vector2.new(384,1200),_Size=
Vector2.new(48,48),
},
["square-parking-off"]={ImageRectPosition=
Vector2.new(432,1200),_Size=
Vector2.new(48,48),
},
["list-minus"]={ImageRectPosition=
Vector2.new(480,1200),_Size=
Vector2.new(48,48),
},
["mail-check"]={ImageRectPosition=
Vector2.new(528,1200),_Size=
Vector2.new(48,48),
},
["mail-warning"]={ImageRectPosition=
Vector2.new(576,1200),_Size=
Vector2.new(48,48),
},
["file-key-2"]={ImageRectPosition=
Vector2.new(624,1200),_Size=
Vector2.new(48,48),
},flame=
{ImageRectPosition=
Vector2.new(672,1200),_Size=
Vector2.new(48,48),
},school=
{ImageRectPosition=
Vector2.new(720,1200),_Size=
Vector2.new(48,48),
},
["shield-alert"]={ImageRectPosition=
Vector2.new(768,1200),_Size=
Vector2.new(48,48),
},snowflake=
{ImageRectPosition=
Vector2.new(816,1200),_Size=
Vector2.new(48,48),
},timer=
{ImageRectPosition=
Vector2.new(864,1200),_Size=
Vector2.new(48,48),
},beer=
{ImageRectPosition=
Vector2.new(912,1200),_Size=
Vector2.new(48,48),
},wheat=
{ImageRectPosition=
Vector2.new(960,1200),_Size=
Vector2.new(48,48),
},
["reply-all"]={ImageRectPosition=
Vector2.new(1008,1200),_Size=
Vector2.new(48,48),
},
["square-parking"]={ImageRectPosition=
Vector2.new(1056,1200),_Size=
Vector2.new(48,48),
},
["square-split-vertical"]={ImageRectPosition=
Vector2.new(1104,1200),_Size=
Vector2.new(48,48),
},
["phone-missed"]={ImageRectPosition=
Vector2.new(1152,1200),_Size=
Vector2.new(48,48),
},
["heading-4"]={ImageRectPosition=
Vector2.new(1200,1200),_Size=
Vector2.new(48,48),
},
["image-off"]={ImageRectPosition=
Vector2.new(1248,1200),_Size=
Vector2.new(48,48),
},
["map-pin-x-inside"]={ImageRectPosition=
Vector2.new(1296,1200),_Size=
Vector2.new(48,48),
},
["pin-off"]={ImageRectPosition=
Vector2.new(1344,1200),_Size=
Vector2.new(48,48),
},heart=
{ImageRectPosition=
Vector2.new(1392,1200),_Size=
Vector2.new(48,48),
},
["square-pi"]={ImageRectPosition=
Vector2.new(1440,1200),_Size=
Vector2.new(48,48),
},
["ticket-check"]={ImageRectPosition=
Vector2.new(1488,1200),_Size=
Vector2.new(48,48),
},upload=
{ImageRectPosition=
Vector2.new(1536,1200),_Size=
Vector2.new(48,48),
},
["swiss-franc"]={ImageRectPosition=
Vector2.new(1584,1200),_Size=
Vector2.new(48,48),
},
["triangle-right"]={ImageRectPosition=
Vector2.new(1632,1200),_Size=
Vector2.new(48,48),
},underline=
{ImageRectPosition=
Vector2.new(1680,1200),_Size=
Vector2.new(48,48),
},
["shield-ellipsis"]={ImageRectPosition=
Vector2.new(1728,1200),_Size=
Vector2.new(48,48),
},
["shopping-basket"]={ImageRectPosition=
Vector2.new(1776,1200),_Size=
Vector2.new(48,48),
},shrink=
{ImageRectPosition=
Vector2.new(1824,1200),_Size=
Vector2.new(48,48),
},split=
{ImageRectPosition=
Vector2.new(0,1248),_Size=
Vector2.new(48,48),
},popsicle=
{ImageRectPosition=
Vector2.new(48,1248),_Size=
Vector2.new(48,48),
},
["receipt-text"]={ImageRectPosition=
Vector2.new(96,1248),_Size=
Vector2.new(48,48),
},regex=
{ImageRectPosition=
Vector2.new(144,1248),_Size=
Vector2.new(48,48),
},pyramid=
{ImageRectPosition=
Vector2.new(192,1248),_Size=
Vector2.new(48,48),
},
["square-arrow-out-down-left"]={ImageRectPosition=
Vector2.new(240,1248),_Size=
Vector2.new(48,48),
},
["tram-front"]={ImageRectPosition=
Vector2.new(288,1248),_Size=
Vector2.new(48,48),
},vault=
{ImageRectPosition=
Vector2.new(336,1248),_Size=
Vector2.new(48,48),
},subscript=
{ImageRectPosition=
Vector2.new(384,1248),_Size=
Vector2.new(48,48),
},
["filter-x"]={ImageRectPosition=
Vector2.new(432,1248),_Size=
Vector2.new(48,48),
},church=
{ImageRectPosition=
Vector2.new(480,1248),_Size=
Vector2.new(48,48),
},
["circle-dot-dashed"]={ImageRectPosition=
Vector2.new(528,1248),_Size=
Vector2.new(48,48),
},
["shower-head"]={ImageRectPosition=
Vector2.new(576,1248),_Size=
Vector2.new(48,48),
},smile=
{ImageRectPosition=
Vector2.new(624,1248),_Size=
Vector2.new(48,48),
},spade=
{ImageRectPosition=
Vector2.new(672,1248),_Size=
Vector2.new(48,48),
},
["square-chevron-left"]={ImageRectPosition=
Vector2.new(720,1248),_Size=
Vector2.new(48,48),
},omega=
{ImageRectPosition=
Vector2.new(768,1248),_Size=
Vector2.new(48,48),
},usb=
{ImageRectPosition=
Vector2.new(816,1248),_Size=
Vector2.new(48,48),
},
["touchpad-off"]={ImageRectPosition=
Vector2.new(864,1248),_Size=
Vector2.new(48,48),
},
["panel-top"]={ImageRectPosition=
Vector2.new(912,1248),_Size=
Vector2.new(48,48),
},
["panel-top-close"]={ImageRectPosition=
Vector2.new(960,1248),_Size=
Vector2.new(48,48),
},
["file-video-2"]={ImageRectPosition=
Vector2.new(1008,1248),_Size=
Vector2.new(48,48),
},
["git-pull-request-create"]={ImageRectPosition=
Vector2.new(1056,1248),_Size=
Vector2.new(48,48),
},glasses=
{ImageRectPosition=
Vector2.new(1104,1248),_Size=
Vector2.new(48,48),
},grab=
{ImageRectPosition=
Vector2.new(1152,1248),_Size=
Vector2.new(48,48),
},sheet=
{ImageRectPosition=
Vector2.new(1200,1248),_Size=
Vector2.new(48,48),
},slice=
{ImageRectPosition=
Vector2.new(1248,1248),_Size=
Vector2.new(48,48),
},
["utensils-crossed"]={ImageRectPosition=
Vector2.new(1296,1248),_Size=
Vector2.new(48,48),
},
["thumbs-down"]={ImageRectPosition=
Vector2.new(1344,1248),_Size=
Vector2.new(48,48),
},rewind=
{ImageRectPosition=
Vector2.new(1392,1248),_Size=
Vector2.new(48,48),
},squirrel=
{ImageRectPosition=
Vector2.new(1440,1248),_Size=
Vector2.new(48,48),
},stamp=
{ImageRectPosition=
Vector2.new(1488,1248),_Size=
Vector2.new(48,48),
},
["notepad-text"]={ImageRectPosition=
Vector2.new(1536,1248),_Size=
Vector2.new(48,48),
},info=
{ImageRectPosition=
Vector2.new(1584,1248),_Size=
Vector2.new(48,48),
},
["iteration-ccw"]={ImageRectPosition=
Vector2.new(1632,1248),_Size=
Vector2.new(48,48),
},
["lamp-floor"]={ImageRectPosition=
Vector2.new(1680,1248),_Size=
Vector2.new(48,48),
},
["layout-grid"]={ImageRectPosition=
Vector2.new(1728,1248),_Size=
Vector2.new(48,48),
},rainbow=
{ImageRectPosition=
Vector2.new(1776,1248),_Size=
Vector2.new(48,48),
},
["search-x"]={ImageRectPosition=
Vector2.new(1824,1248),_Size=
Vector2.new(48,48),
},soup=
{ImageRectPosition=
Vector2.new(0,1296),_Size=
Vector2.new(48,48),
},tablet=
{ImageRectPosition=
Vector2.new(48,1296),_Size=
Vector2.new(48,48),
},
["ticket-plus"]={ImageRectPosition=
Vector2.new(96,1296),_Size=
Vector2.new(48,48),
},stethoscope=
{ImageRectPosition=
Vector2.new(144,1296),_Size=
Vector2.new(48,48),
},
["stretch-horizontal"]={ImageRectPosition=
Vector2.new(192,1296),_Size=
Vector2.new(48,48),
},
["scan-text"]={ImageRectPosition=
Vector2.new(240,1296),_Size=
Vector2.new(48,48),
},
["music-2"]={ImageRectPosition=
Vector2.new(288,1296),_Size=
Vector2.new(48,48),
},
["git-commit-vertical"]={ImageRectPosition=
Vector2.new(336,1296),_Size=
Vector2.new(48,48),
},
["square-split-horizontal"]={ImageRectPosition=
Vector2.new(384,1296),_Size=
Vector2.new(48,48),
},
["ticket-minus"]={ImageRectPosition=
Vector2.new(432,1296),_Size=
Vector2.new(48,48),
},skull=
{ImageRectPosition=
Vector2.new(480,1296),_Size=
Vector2.new(48,48),
},
["smartphone-nfc"]={ImageRectPosition=
Vector2.new(528,1296),_Size=
Vector2.new(48,48),
},moon=
{ImageRectPosition=
Vector2.new(576,1296),_Size=
Vector2.new(48,48),
},
["file-chart-column-increasing"]={ImageRectPosition=
Vector2.new(624,1296),_Size=
Vector2.new(48,48),
},shell=
{ImageRectPosition=
Vector2.new(672,1296),_Size=
Vector2.new(48,48),
},
["roller-coaster"]={ImageRectPosition=
Vector2.new(720,1296),_Size=
Vector2.new(48,48),
},
["shield-minus"]={ImageRectPosition=
Vector2.new(768,1296),_Size=
Vector2.new(48,48),
},
["move-down"]={ImageRectPosition=
Vector2.new(816,1296),_Size=
Vector2.new(48,48),
},
["pencil-line"]={ImageRectPosition=
Vector2.new(864,1296),_Size=
Vector2.new(48,48),
},
["list-collapse"]={ImageRectPosition=
Vector2.new(912,1296),_Size=
Vector2.new(48,48),
},
["ticket-slash"]={ImageRectPosition=
Vector2.new(960,1296),_Size=
Vector2.new(48,48),
},ribbon=
{ImageRectPosition=
Vector2.new(1008,1296),_Size=
Vector2.new(48,48),
},
["shield-off"]={ImageRectPosition=
Vector2.new(1056,1296),_Size=
Vector2.new(48,48),
},
["square-divide"]={ImageRectPosition=
Vector2.new(1104,1296),_Size=
Vector2.new(48,48),
},
["panel-bottom-close"]={ImageRectPosition=
Vector2.new(1152,1296),_Size=
Vector2.new(48,48),
},redo=
{ImageRectPosition=
Vector2.new(1200,1296),_Size=
Vector2.new(48,48),
},
["land-plot"]={ImageRectPosition=
Vector2.new(1248,1296),_Size=
Vector2.new(48,48),
},
["message-square-x"]={ImageRectPosition=
Vector2.new(1296,1296),_Size=
Vector2.new(48,48),
},
["phone-outgoing"]={ImageRectPosition=
Vector2.new(1344,1296),_Size=
Vector2.new(48,48),
},piano=
{ImageRectPosition=
Vector2.new(1392,1296),_Size=
Vector2.new(48,48),
},recycle=
{ImageRectPosition=
Vector2.new(1440,1296),_Size=
Vector2.new(48,48),
},space=
{ImageRectPosition=
Vector2.new(1488,1296),_Size=
Vector2.new(48,48),
},
["square-stack"]={ImageRectPosition=
Vector2.new(1536,1296),_Size=
Vector2.new(48,48),
},
["tent-tree"]={ImageRectPosition=
Vector2.new(1584,1296),_Size=
Vector2.new(48,48),
},tickets=
{ImageRectPosition=
Vector2.new(1632,1296),_Size=
Vector2.new(48,48),
},
["volume-2"]={ImageRectPosition=
Vector2.new(1680,1296),_Size=
Vector2.new(48,48),
},
["trending-up"]={ImageRectPosition=
Vector2.new(1728,1296),_Size=
Vector2.new(48,48),
},
["repeat-1"]={ImageRectPosition=
Vector2.new(1776,1296),_Size=
Vector2.new(48,48),
},scan=
{ImageRectPosition=
Vector2.new(1824,1296),_Size=
Vector2.new(48,48),
},
["screen-share-off"]={ImageRectPosition=
Vector2.new(0,1344),_Size=
Vector2.new(48,48),
},
["signal-zero"]={ImageRectPosition=
Vector2.new(48,1344),_Size=
Vector2.new(48,48),
},
["monitor-cog"]={ImageRectPosition=
Vector2.new(96,1344),_Size=
Vector2.new(48,48),
},
["monitor-down"]={ImageRectPosition=
Vector2.new(144,1344),_Size=
Vector2.new(48,48),
},radius=
{ImageRectPosition=
Vector2.new(192,1344),_Size=
Vector2.new(48,48),
},
["pound-sterling"]={ImageRectPosition=
Vector2.new(240,1344),_Size=
Vector2.new(48,48),
},scroll=
{ImageRectPosition=
Vector2.new(288,1344),_Size=
Vector2.new(48,48),
},radiation=
{ImageRectPosition=
Vector2.new(336,1344),_Size=
Vector2.new(48,48),
},
["rectangle-ellipsis"]={ImageRectPosition=
Vector2.new(384,1344),_Size=
Vector2.new(48,48),
},
["ice-cream-bowl"]={ImageRectPosition=
Vector2.new(432,1344),_Size=
Vector2.new(48,48),
},import=
{ImageRectPosition=
Vector2.new(480,1344),_Size=
Vector2.new(48,48),
},
["map-pin"]={ImageRectPosition=
Vector2.new(528,1344),_Size=
Vector2.new(48,48),
},
["file-chart-column"]={ImageRectPosition=
Vector2.new(576,1344),_Size=
Vector2.new(48,48),
},fingerprint=
{ImageRectPosition=
Vector2.new(624,1344),_Size=
Vector2.new(48,48),
},
["git-branch-plus"]={ImageRectPosition=
Vector2.new(672,1344),_Size=
Vector2.new(48,48),
},table=
{ImageRectPosition=
Vector2.new(720,1344),_Size=
Vector2.new(48,48),
},triangle=
{ImageRectPosition=
Vector2.new(768,1344),_Size=
Vector2.new(48,48),
},
["tickets-plane"]={ImageRectPosition=
Vector2.new(816,1344),_Size=
Vector2.new(48,48),
},
["tree-pine"]={ImageRectPosition=
Vector2.new(864,1344),_Size=
Vector2.new(48,48),
},
["wheat-off"]={ImageRectPosition=
Vector2.new(912,1344),_Size=
Vector2.new(48,48),
},
["zoom-out"]={ImageRectPosition=
Vector2.new(960,1344),_Size=
Vector2.new(48,48),
},
["pill-bottle"]={ImageRectPosition=
Vector2.new(1008,1344),_Size=
Vector2.new(48,48),
},logs=
{ImageRectPosition=
Vector2.new(1056,1344),_Size=
Vector2.new(48,48),
},
["fire-extinguisher"]={ImageRectPosition=
Vector2.new(1104,1344),_Size=
Vector2.new(48,48),
},group=
{ImageRectPosition=
Vector2.new(1152,1344),_Size=
Vector2.new(48,48),
},scaling=
{ImageRectPosition=
Vector2.new(1200,1344),_Size=
Vector2.new(48,48),
},
["test-tubes"]={ImageRectPosition=
Vector2.new(1248,1344),_Size=
Vector2.new(48,48),
},tangent=
{ImageRectPosition=
Vector2.new(1296,1344),_Size=
Vector2.new(48,48),
},
["toggle-left"]={ImageRectPosition=
Vector2.new(1344,1344),_Size=
Vector2.new(48,48),
},tractor=
{ImageRectPosition=
Vector2.new(1392,1344),_Size=
Vector2.new(48,48),
},
["trash-2"]={ImageRectPosition=
Vector2.new(1440,1344),_Size=
Vector2.new(48,48),
},route=
{ImageRectPosition=
Vector2.new(1488,1344),_Size=
Vector2.new(48,48),
},
["skip-back"]={ImageRectPosition=
Vector2.new(1536,1344),_Size=
Vector2.new(48,48),
},smartphone=
{ImageRectPosition=
Vector2.new(1584,1344),_Size=
Vector2.new(48,48),
},
["notebook-text"]={ImageRectPosition=
Vector2.new(1632,1344),_Size=
Vector2.new(48,48),
},
["receipt-cent"]={ImageRectPosition=
Vector2.new(1680,1344),_Size=
Vector2.new(48,48),
},refrigerator=
{ImageRectPosition=
Vector2.new(1728,1344),_Size=
Vector2.new(48,48),
},
["heading-6"]={ImageRectPosition=
Vector2.new(1776,1344),_Size=
Vector2.new(48,48),
},images=
{ImageRectPosition=
Vector2.new(1824,1344),_Size=
Vector2.new(48,48),
},
["layout-list"]={ImageRectPosition=
Vector2.new(0,1392),_Size=
Vector2.new(48,48),
},
["library-big"]={ImageRectPosition=
Vector2.new(48,1392),_Size=
Vector2.new(48,48),
},
["loader-pinwheel"]={ImageRectPosition=
Vector2.new(96,1392),_Size=
Vector2.new(48,48),
},
["lock-open"]={ImageRectPosition=
Vector2.new(144,1392),_Size=
Vector2.new(48,48),
},
["map-pin-minus"]={ImageRectPosition=
Vector2.new(192,1392),_Size=
Vector2.new(48,48),
},power=
{ImageRectPosition=
Vector2.new(240,1392),_Size=
Vector2.new(48,48),
},
["square-asterisk"]={ImageRectPosition=
Vector2.new(288,1392),_Size=
Vector2.new(48,48),
},
["monitor-smartphone"]={ImageRectPosition=
Vector2.new(336,1392),_Size=
Vector2.new(48,48),
},
["table-cells-split"]={ImageRectPosition=
Vector2.new(384,1392),_Size=
Vector2.new(48,48),
},
["tally-4"]={ImageRectPosition=
Vector2.new(432,1392),_Size=
Vector2.new(48,48),
},twitter=
{ImageRectPosition=
Vector2.new(480,1392),_Size=
Vector2.new(48,48),
},
["move-horizontal"]={ImageRectPosition=
Vector2.new(528,1392),_Size=
Vector2.new(48,48),
},
["panels-top-left"]={ImageRectPosition=
Vector2.new(576,1392),_Size=
Vector2.new(48,48),
},
["table-of-contents"]={ImageRectPosition=
Vector2.new(624,1392),_Size=
Vector2.new(48,48),
},
["stretch-vertical"]={ImageRectPosition=
Vector2.new(672,1392),_Size=
Vector2.new(48,48),
},
["text-cursor-input"]={ImageRectPosition=
Vector2.new(720,1392),_Size=
Vector2.new(48,48),
},
["square-arrow-down"]={ImageRectPosition=
Vector2.new(768,1392),_Size=
Vector2.new(48,48),
},
["square-arrow-out-up-left"]={ImageRectPosition=
Vector2.new(816,1392),_Size=
Vector2.new(48,48),
},
["square-chevron-right"]={ImageRectPosition=
Vector2.new(864,1392),_Size=
Vector2.new(48,48),
},
["square-pen"]={ImageRectPosition=
Vector2.new(912,1392),_Size=
Vector2.new(48,48),
},
["package-2"]={ImageRectPosition=
Vector2.new(960,1392),_Size=
Vector2.new(48,48),
},
["id-card"]={ImageRectPosition=
Vector2.new(1008,1392),_Size=
Vector2.new(48,48),
},keyboard=
{ImageRectPosition=
Vector2.new(1056,1392),_Size=
Vector2.new(48,48),
},landmark=
{ImageRectPosition=
Vector2.new(1104,1392),_Size=
Vector2.new(48,48),
},languages=
{ImageRectPosition=
Vector2.new(1152,1392),_Size=
Vector2.new(48,48),
},
["list-music"]={ImageRectPosition=
Vector2.new(1200,1392),_Size=
Vector2.new(48,48),
},maximize=
{ImageRectPosition=
Vector2.new(1248,1392),_Size=
Vector2.new(48,48),
},
["file-minus"]={ImageRectPosition=
Vector2.new(1296,1392),_Size=
Vector2.new(48,48),
},
["square-function"]={ImageRectPosition=
Vector2.new(1344,1392),_Size=
Vector2.new(48,48),
},
["monitor-off"]={ImageRectPosition=
Vector2.new(1392,1392),_Size=
Vector2.new(48,48),
},
["tablet-smartphone"]={ImageRectPosition=
Vector2.new(1440,1392),_Size=
Vector2.new(48,48),
},
["text-quote"]={ImageRectPosition=
Vector2.new(1488,1392),_Size=
Vector2.new(48,48),
},video=
{ImageRectPosition=
Vector2.new(1536,1392),_Size=
Vector2.new(48,48),
},
["square-slash"]={ImageRectPosition=
Vector2.new(1584,1392),_Size=
Vector2.new(48,48),
},
["list-todo"]={ImageRectPosition=
Vector2.new(1632,1392),_Size=
Vector2.new(48,48),
},
["log-in"]={ImageRectPosition=
Vector2.new(1680,1392),_Size=
Vector2.new(48,48),
},
["message-circle-heart"]={ImageRectPosition=
Vector2.new(1728,1392),_Size=
Vector2.new(48,48),
},microchip=
{ImageRectPosition=
Vector2.new(1776,1392),_Size=
Vector2.new(48,48),
},
["folder-minus"]={ImageRectPosition=
Vector2.new(1824,1392),_Size=
Vector2.new(48,48),
},
["separator-vertical"]={ImageRectPosition=
Vector2.new(0,1440),_Size=
Vector2.new(48,48),
},
["mouse-pointer"]={ImageRectPosition=
Vector2.new(48,1440),_Size=
Vector2.new(48,48),
},variable=
{ImageRectPosition=
Vector2.new(96,1440),_Size=
Vector2.new(48,48),
},
["shield-x"]={ImageRectPosition=
Vector2.new(144,1440),_Size=
Vector2.new(48,48),
},
["square-m"]={ImageRectPosition=
Vector2.new(192,1440),_Size=
Vector2.new(48,48),
},paperclip=
{ImageRectPosition=
Vector2.new(240,1440),_Size=
Vector2.new(48,48),
},
["redo-dot"]={ImageRectPosition=
Vector2.new(288,1440),_Size=
Vector2.new(48,48),
},
["mail-question"]={ImageRectPosition=
Vector2.new(336,1440),_Size=
Vector2.new(48,48),
},phone=
{ImageRectPosition=
Vector2.new(384,1440),_Size=
Vector2.new(48,48),
},
["sun-dim"]={ImageRectPosition=
Vector2.new(432,1440),_Size=
Vector2.new(48,48),
},
["train-track"]={ImageRectPosition=
Vector2.new(480,1440),_Size=
Vector2.new(48,48),
},rabbit=
{ImageRectPosition=
Vector2.new(528,1440),_Size=
Vector2.new(48,48),
},
["rotate-3d"]={ImageRectPosition=
Vector2.new(576,1440),_Size=
Vector2.new(48,48),
},
["signal-low"]={ImageRectPosition=
Vector2.new(624,1440),_Size=
Vector2.new(48,48),
},
["sliders-horizontal"]={ImageRectPosition=
Vector2.new(672,1440),_Size=
Vector2.new(48,48),
},
["square-terminal"]={ImageRectPosition=
Vector2.new(720,1440),_Size=
Vector2.new(48,48),
},headset=
{ImageRectPosition=
Vector2.new(768,1440),_Size=
Vector2.new(48,48),
},squircle=
{ImageRectPosition=
Vector2.new(816,1440),_Size=
Vector2.new(48,48),
},
["paint-bucket"]={ImageRectPosition=
Vector2.new(864,1440),_Size=
Vector2.new(48,48),
},
["screen-share"]={ImageRectPosition=
Vector2.new(912,1440),_Size=
Vector2.new(48,48),
},sun=
{ImageRectPosition=
Vector2.new(960,1440),_Size=
Vector2.new(48,48),
},
["square-arrow-out-up-right"]={ImageRectPosition=
Vector2.new(1008,1440),_Size=
Vector2.new(48,48),
},
["leafy-green"]={ImageRectPosition=
Vector2.new(1056,1440),_Size=
Vector2.new(48,48),
},
["memory-stick"]={ImageRectPosition=
Vector2.new(1104,1440),_Size=
Vector2.new(48,48),
},
["folder-down"]={ImageRectPosition=
Vector2.new(1152,1440),_Size=
Vector2.new(48,48),
},folders=
{ImageRectPosition=
Vector2.new(1200,1440),_Size=
Vector2.new(48,48),
},
["square-chart-gantt"]={ImageRectPosition=
Vector2.new(1248,1440),_Size=
Vector2.new(48,48),
},
["square-menu"]={ImageRectPosition=
Vector2.new(1296,1440),_Size=
Vector2.new(48,48),
},webhook=
{ImageRectPosition=
Vector2.new(1344,1440),_Size=
Vector2.new(48,48),
},
["triangle-alert"]={ImageRectPosition=
Vector2.new(1392,1440),_Size=
Vector2.new(48,48),
},turtle=
{ImageRectPosition=
Vector2.new(1440,1440),_Size=
Vector2.new(48,48),
},
["mail-search"]={ImageRectPosition=
Vector2.new(1488,1440),_Size=
Vector2.new(48,48),
},
["map-pin-plus"]={ImageRectPosition=
Vector2.new(1536,1440),_Size=
Vector2.new(48,48),
},section=
{ImageRectPosition=
Vector2.new(1584,1440),_Size=
Vector2.new(48,48),
},shovel=
{ImageRectPosition=
Vector2.new(1632,1440),_Size=
Vector2.new(48,48),
},
["square-power"]={ImageRectPosition=
Vector2.new(1680,1440),_Size=
Vector2.new(48,48),
},
["switch-camera"]={ImageRectPosition=
Vector2.new(1728,1440),_Size=
Vector2.new(48,48),
},
["unfold-vertical"]={ImageRectPosition=
Vector2.new(1776,1440),_Size=
Vector2.new(48,48),
},replace=
{ImageRectPosition=
Vector2.new(1824,1440),_Size=
Vector2.new(48,48),
},
["move-left"]={ImageRectPosition=
Vector2.new(0,1488),_Size=
Vector2.new(48,48),
},
["music-4"]={ImageRectPosition=
Vector2.new(48,1488),_Size=
Vector2.new(48,48),
},
["panel-bottom-dashed"]={ImageRectPosition=
Vector2.new(96,1488),_Size=
Vector2.new(48,48),
},
["phone-forwarded"]={ImageRectPosition=
Vector2.new(144,1488),_Size=
Vector2.new(48,48),
},pickaxe=
{ImageRectPosition=
Vector2.new(192,1488),_Size=
Vector2.new(48,48),
},
["image-down"]={ImageRectPosition=
Vector2.new(240,1488),_Size=
Vector2.new(48,48),
},tv=
{ImageRectPosition=
Vector2.new(288,1488),_Size=
Vector2.new(48,48),
},
["star-off"]={ImageRectPosition=
Vector2.new(336,1488),_Size=
Vector2.new(48,48),
},text=
{ImageRectPosition=
Vector2.new(384,1488),_Size=
Vector2.new(48,48),
},wine=
{ImageRectPosition=
Vector2.new(432,1488),_Size=
Vector2.new(48,48),
},
["square-bottom-dashed-scissors"]={ImageRectPosition=
Vector2.new(480,1488),_Size=
Vector2.new(48,48),
},volleyball=
{ImageRectPosition=
Vector2.new(528,1488),_Size=
Vector2.new(48,48),
},hand=
{ImageRectPosition=
Vector2.new(576,1488),_Size=
Vector2.new(48,48),
},
["pilcrow-left"]={ImageRectPosition=
Vector2.new(624,1488),_Size=
Vector2.new(48,48),
},
["hand-metal"]={ImageRectPosition=
Vector2.new(672,1488),_Size=
Vector2.new(48,48),
},
["chart-no-axes-column-increasing"]={ImageRectPosition=
Vector2.new(720,1488),_Size=
Vector2.new(48,48),
},
["hand-heart"]={ImageRectPosition=
Vector2.new(768,1488),_Size=
Vector2.new(48,48),
},
["chart-line"]={ImageRectPosition=
Vector2.new(816,1488),_Size=
Vector2.new(48,48),
},
["book-minus"]={ImageRectPosition=
Vector2.new(864,1488),_Size=
Vector2.new(48,48),
},
["align-horizontal-justify-end"]={ImageRectPosition=
Vector2.new(912,1488),_Size=
Vector2.new(48,48),
},
["briefcase-business"]={ImageRectPosition=
Vector2.new(960,1488),_Size=
Vector2.new(48,48),
},brain=
{ImageRectPosition=
Vector2.new(1008,1488),_Size=
Vector2.new(48,48),
},construction=
{ImageRectPosition=
Vector2.new(1056,1488),_Size=
Vector2.new(48,48),
},
["calendar-clock"]={ImageRectPosition=
Vector2.new(1104,1488),_Size=
Vector2.new(48,48),
},
["calendar-plus-2"]={ImageRectPosition=
Vector2.new(1152,1488),_Size=
Vector2.new(48,48),
},proportions=
{ImageRectPosition=
Vector2.new(1200,1488),_Size=
Vector2.new(48,48),
},
["circle-gauge"]={ImageRectPosition=
Vector2.new(1248,1488),_Size=
Vector2.new(48,48),
},
["gamepad-2"]={ImageRectPosition=
Vector2.new(1296,1488),_Size=
Vector2.new(48,48),
},dribbble=
{ImageRectPosition=
Vector2.new(1344,1488),_Size=
Vector2.new(48,48),
},
["clipboard-x"]={ImageRectPosition=
Vector2.new(1392,1488),_Size=
Vector2.new(48,48),
},
["arrow-down-0-1"]={ImageRectPosition=
Vector2.new(1440,1488),_Size=
Vector2.new(48,48),
},crosshair=
{ImageRectPosition=
Vector2.new(1488,1488),_Size=
Vector2.new(48,48),
},
["book-headphones"]={ImageRectPosition=
Vector2.new(1536,1488),_Size=
Vector2.new(48,48),
},
["book-lock"]={ImageRectPosition=
Vector2.new(1584,1488),_Size=
Vector2.new(48,48),
},hospital=
{ImageRectPosition=
Vector2.new(1632,1488),_Size=
Vector2.new(48,48),
},
["align-vertical-space-around"]={ImageRectPosition=
Vector2.new(1680,1488),_Size=
Vector2.new(48,48),
},container=
{ImageRectPosition=
Vector2.new(1728,1488),_Size=
Vector2.new(48,48),
},
["corner-left-down"]={ImageRectPosition=
Vector2.new(1776,1488),_Size=
Vector2.new(48,48),
},
["diamond-plus"]={ImageRectPosition=
Vector2.new(1824,1488),_Size=
Vector2.new(48,48),
},fuel=
{ImageRectPosition=
Vector2.new(0,1536),_Size=
Vector2.new(48,48),
},
["cloud-hail"]={ImageRectPosition=
Vector2.new(48,1536),_Size=
Vector2.new(48,48),
},
["map-pin-check"]={ImageRectPosition=
Vector2.new(96,1536),_Size=
Vector2.new(48,48),
},currency=
{ImageRectPosition=
Vector2.new(144,1536),_Size=
Vector2.new(48,48),
},
["bluetooth-off"]={ImageRectPosition=
Vector2.new(192,1536),_Size=
Vector2.new(48,48),
},
["app-window"]={ImageRectPosition=
Vector2.new(240,1536),_Size=
Vector2.new(48,48),
},
["chart-no-axes-gantt"]={ImageRectPosition=
Vector2.new(288,1536),_Size=
Vector2.new(48,48),
},
["earth-lock"]={ImageRectPosition=
Vector2.new(336,1536),_Size=
Vector2.new(48,48),
},
["cable-car"]={ImageRectPosition=
Vector2.new(384,1536),_Size=
Vector2.new(48,48),
},
["case-sensitive"]={ImageRectPosition=
Vector2.new(432,1536),_Size=
Vector2.new(48,48),
},
["file-badge-2"]={ImageRectPosition=
Vector2.new(480,1536),_Size=
Vector2.new(48,48),
},
["arrow-up-0-1"]={ImageRectPosition=
Vector2.new(528,1536),_Size=
Vector2.new(48,48),
},
["chevrons-up-down"]={ImageRectPosition=
Vector2.new(576,1536),_Size=
Vector2.new(48,48),
},briefcase=
{ImageRectPosition=
Vector2.new(624,1536),_Size=
Vector2.new(48,48),
},
["align-horizontal-distribute-center"]={ImageRectPosition=
Vector2.new(672,1536),_Size=
Vector2.new(48,48),
},
["file-code"]={ImageRectPosition=
Vector2.new(720,1536),_Size=
Vector2.new(48,48),
},
["file-scan"]={ImageRectPosition=
Vector2.new(768,1536),_Size=
Vector2.new(48,48),
},
["at-sign"]={ImageRectPosition=
Vector2.new(816,1536),_Size=
Vector2.new(48,48),
},
["audio-waveform"]={ImageRectPosition=
Vector2.new(864,1536),_Size=
Vector2.new(48,48),
},
["grip-horizontal"]={ImageRectPosition=
Vector2.new(912,1536),_Size=
Vector2.new(48,48),
},
["dice-1"]={ImageRectPosition=
Vector2.new(960,1536),_Size=
Vector2.new(48,48),
},
["boom-box"]={ImageRectPosition=
Vector2.new(1008,1536),_Size=
Vector2.new(48,48),
},
["car-front"]={ImageRectPosition=
Vector2.new(1056,1536),_Size=
Vector2.new(48,48),
},dam=
{ImageRectPosition=
Vector2.new(1104,1536),_Size=
Vector2.new(48,48),
},
["file-plus"]={ImageRectPosition=
Vector2.new(1152,1536),_Size=
Vector2.new(48,48),
},
["chevron-up"]={ImageRectPosition=
Vector2.new(1200,1536),_Size=
Vector2.new(48,48),
},
["dice-3"]={ImageRectPosition=
Vector2.new(1248,1536),_Size=
Vector2.new(48,48),
},
["battery-full"]={ImageRectPosition=
Vector2.new(1296,1536),_Size=
Vector2.new(48,48),
},
["cassette-tape"]={ImageRectPosition=
Vector2.new(1344,1536),_Size=
Vector2.new(48,48),
},
["clipboard-check"]={ImageRectPosition=
Vector2.new(1392,1536),_Size=
Vector2.new(48,48),
},
["calendar-check-2"]={ImageRectPosition=
Vector2.new(1440,1536),_Size=
Vector2.new(48,48),
},
["file-code-2"]={ImageRectPosition=
Vector2.new(1488,1536),_Size=
Vector2.new(48,48),
},
["chart-column-big"]={ImageRectPosition=
Vector2.new(1536,1536),_Size=
Vector2.new(48,48),
},
["receipt-euro"]={ImageRectPosition=
Vector2.new(1584,1536),_Size=
Vector2.new(48,48),
},
["heart-off"]={ImageRectPosition=
Vector2.new(1632,1536),_Size=
Vector2.new(48,48),
},dock=
{ImageRectPosition=
Vector2.new(1680,1536),_Size=
Vector2.new(48,48),
},
["arrow-big-right"]={ImageRectPosition=
Vector2.new(1728,1536),_Size=
Vector2.new(48,48),
},
["circle-divide"]={ImageRectPosition=
Vector2.new(1776,1536),_Size=
Vector2.new(48,48),
},
["columns-3"]={ImageRectPosition=
Vector2.new(1824,1536),_Size=
Vector2.new(48,48),
},hexagon=
{ImageRectPosition=
Vector2.new(0,1584),_Size=
Vector2.new(48,48),
},
["gallery-horizontal"]={ImageRectPosition=
Vector2.new(48,1584),_Size=
Vector2.new(48,48),
},
["ear-off"]={ImageRectPosition=
Vector2.new(96,1584),_Size=
Vector2.new(48,48),
},
["bell-minus"]={ImageRectPosition=
Vector2.new(144,1584),_Size=
Vector2.new(48,48),
},
["book-open-check"]={ImageRectPosition=
Vector2.new(192,1584),_Size=
Vector2.new(48,48),
},
["circle-arrow-out-down-left"]={ImageRectPosition=
Vector2.new(240,1584),_Size=
Vector2.new(48,48),
},
["arrow-down"]={ImageRectPosition=
Vector2.new(288,1584),_Size=
Vector2.new(48,48),
},
["japanese-yen"]={ImageRectPosition=
Vector2.new(336,1584),_Size=
Vector2.new(48,48),
},
["message-square-dashed"]={ImageRectPosition=
Vector2.new(384,1584),_Size=
Vector2.new(48,48),
},
["file-volume-2"]={ImageRectPosition=
Vector2.new(432,1584),_Size=
Vector2.new(48,48),
},dessert=
{ImageRectPosition=
Vector2.new(480,1584),_Size=
Vector2.new(48,48),
},
["bell-ring"]={ImageRectPosition=
Vector2.new(528,1584),_Size=
Vector2.new(48,48),
},
["book-x"]={ImageRectPosition=
Vector2.new(576,1584),_Size=
Vector2.new(48,48),
},
["chart-gantt"]={ImageRectPosition=
Vector2.new(624,1584),_Size=
Vector2.new(48,48),
},
["file-pen"]={ImageRectPosition=
Vector2.new(672,1584),_Size=
Vector2.new(48,48),
},codesandbox=
{ImageRectPosition=
Vector2.new(720,1584),_Size=
Vector2.new(48,48),
},command=
{ImageRectPosition=
Vector2.new(768,1584),_Size=
Vector2.new(48,48),
},
["hop-off"]={ImageRectPosition=
Vector2.new(816,1584),_Size=
Vector2.new(48,48),
},
["flip-vertical-2"]={ImageRectPosition=
Vector2.new(864,1584),_Size=
Vector2.new(48,48),
},
["arrow-down-to-line"]={ImageRectPosition=
Vector2.new(912,1584),_Size=
Vector2.new(48,48),
},milestone=
{ImageRectPosition=
Vector2.new(960,1584),_Size=
Vector2.new(48,48),
},egg=
{ImageRectPosition=
Vector2.new(1008,1584),_Size=
Vector2.new(48,48),
},
["plane-landing"]={ImageRectPosition=
Vector2.new(1056,1584),_Size=
Vector2.new(48,48),
},
["alarm-clock"]={ImageRectPosition=
Vector2.new(1104,1584),_Size=
Vector2.new(48,48),
},
["flag-triangle-left"]={ImageRectPosition=
Vector2.new(1152,1584),_Size=
Vector2.new(48,48),
},
["circle-slash"]={ImageRectPosition=
Vector2.new(1200,1584),_Size=
Vector2.new(48,48),
},
["chart-area"]={ImageRectPosition=
Vector2.new(1248,1584),_Size=
Vector2.new(48,48),
},
["alarm-clock-minus"]={ImageRectPosition=
Vector2.new(1296,1584),_Size=
Vector2.new(48,48),
},
["arrow-left-to-line"]={ImageRectPosition=
Vector2.new(1344,1584),_Size=
Vector2.new(48,48),
},
["battery-low"]={ImageRectPosition=
Vector2.new(1392,1584),_Size=
Vector2.new(48,48),
},
["chart-no-axes-column-decreasing"]={ImageRectPosition=
Vector2.new(1440,1584),_Size=
Vector2.new(48,48),
},
["circle-pause"]={ImageRectPosition=
Vector2.new(1488,1584),_Size=
Vector2.new(48,48),
},
["corner-down-right"]={ImageRectPosition=
Vector2.new(1536,1584),_Size=
Vector2.new(48,48),
},bug=
{ImageRectPosition=
Vector2.new(1584,1584),_Size=
Vector2.new(48,48),
},contact=
{ImageRectPosition=
Vector2.new(1632,1584),_Size=
Vector2.new(48,48),
},
["lasso-select"]={ImageRectPosition=
Vector2.new(1680,1584),_Size=
Vector2.new(48,48),
},
["map-pin-check-inside"]={ImageRectPosition=
Vector2.new(1728,1584),_Size=
Vector2.new(48,48),
},
["bluetooth-connected"]={ImageRectPosition=
Vector2.new(1776,1584),_Size=
Vector2.new(48,48),
},
["chevrons-left-right"]={ImageRectPosition=
Vector2.new(1824,1584),_Size=
Vector2.new(48,48),
},
["git-graph"]={ImageRectPosition=
Vector2.new(0,1632),_Size=
Vector2.new(48,48),
},
["arrow-down-right"]={ImageRectPosition=
Vector2.new(48,1632),_Size=
Vector2.new(48,48),
},
["arrow-big-down"]={ImageRectPosition=
Vector2.new(96,1632),_Size=
Vector2.new(48,48),
},
["arrow-up-to-line"]={ImageRectPosition=
Vector2.new(144,1632),_Size=
Vector2.new(48,48),
},binary=
{ImageRectPosition=
Vector2.new(192,1632),_Size=
Vector2.new(48,48),
},calculator=
{ImageRectPosition=
Vector2.new(240,1632),_Size=
Vector2.new(48,48),
},
["bookmark-plus"]={ImageRectPosition=
Vector2.new(288,1632),_Size=
Vector2.new(48,48),
},
["calendar-cog"]={ImageRectPosition=
Vector2.new(336,1632),_Size=
Vector2.new(48,48),
},ampersand=
{ImageRectPosition=
Vector2.new(384,1632),_Size=
Vector2.new(48,48),
},
["book-text"]={ImageRectPosition=
Vector2.new(432,1632),_Size=
Vector2.new(48,48),
},
["badge-minus"]={ImageRectPosition=
Vector2.new(480,1632),_Size=
Vector2.new(48,48),
},
["calendar-days"]={ImageRectPosition=
Vector2.new(528,1632),_Size=
Vector2.new(48,48),
},
["cloud-rain"]={ImageRectPosition=
Vector2.new(576,1632),_Size=
Vector2.new(48,48),
},disc=
{ImageRectPosition=
Vector2.new(624,1632),_Size=
Vector2.new(48,48),
},
["between-vertical-end"]={ImageRectPosition=
Vector2.new(672,1632),_Size=
Vector2.new(48,48),
},
["camera-off"]={ImageRectPosition=
Vector2.new(720,1632),_Size=
Vector2.new(48,48),
},
["bell-off"]={ImageRectPosition=
Vector2.new(768,1632),_Size=
Vector2.new(48,48),
},
["test-tube"]={ImageRectPosition=
Vector2.new(816,1632),_Size=
Vector2.new(48,48),
},
["send-horizontal"]={ImageRectPosition=
Vector2.new(864,1632),_Size=
Vector2.new(48,48),
},pill=
{ImageRectPosition=
Vector2.new(912,1632),_Size=
Vector2.new(48,48),
},
["git-pull-request-create-arrow"]={ImageRectPosition=
Vector2.new(960,1632),_Size=
Vector2.new(48,48),
},
["folder-open-dot"]={ImageRectPosition=
Vector2.new(1008,1632),_Size=
Vector2.new(48,48),
},
["grid-2x2-plus"]={ImageRectPosition=
Vector2.new(1056,1632),_Size=
Vector2.new(48,48),
},
["arrow-up-from-line"]={ImageRectPosition=
Vector2.new(1104,1632),_Size=
Vector2.new(48,48),
},
["file-user"]={ImageRectPosition=
Vector2.new(1152,1632),_Size=
Vector2.new(48,48),
},
["book-dashed"]={ImageRectPosition=
Vector2.new(1200,1632),_Size=
Vector2.new(48,48),
},goal=
{ImageRectPosition=
Vector2.new(1248,1632),_Size=
Vector2.new(48,48),
},copyleft=
{ImageRectPosition=
Vector2.new(1296,1632),_Size=
Vector2.new(48,48),
},component=
{ImageRectPosition=
Vector2.new(1344,1632),_Size=
Vector2.new(48,48),
},
["badge-japanese-yen"]={ImageRectPosition=
Vector2.new(1392,1632),_Size=
Vector2.new(48,48),
},
["dice-4"]={ImageRectPosition=
Vector2.new(1440,1632),_Size=
Vector2.new(48,48),
},bed=
{ImageRectPosition=
Vector2.new(1488,1632),_Size=
Vector2.new(48,48),
},
["badge-cent"]={ImageRectPosition=
Vector2.new(1536,1632),_Size=
Vector2.new(48,48),
},
["book-heart"]={ImageRectPosition=
Vector2.new(1584,1632),_Size=
Vector2.new(48,48),
},lightbulb=
{ImageRectPosition=
Vector2.new(1632,1632),_Size=
Vector2.new(48,48),
},
["align-vertical-justify-end"]={ImageRectPosition=
Vector2.new(1680,1632),_Size=
Vector2.new(48,48),
},
["arrow-big-up-dash"]={ImageRectPosition=
Vector2.new(1728,1632),_Size=
Vector2.new(48,48),
},
["cake-slice"]={ImageRectPosition=
Vector2.new(1776,1632),_Size=
Vector2.new(48,48),
},
["check-check"]={ImageRectPosition=
Vector2.new(1824,1632),_Size=
Vector2.new(48,48),
},
["calendar-x-2"]={ImageRectPosition=
Vector2.new(0,1680),_Size=
Vector2.new(48,48),
},
["chart-bar-stacked"]={ImageRectPosition=
Vector2.new(48,1680),_Size=
Vector2.new(48,48),
},
["bot-off"]={ImageRectPosition=
Vector2.new(96,1680),_Size=
Vector2.new(48,48),
},
["clipboard-minus"]={ImageRectPosition=
Vector2.new(144,1680),_Size=
Vector2.new(48,48),
},
["align-right"]={ImageRectPosition=
Vector2.new(192,1680),_Size=
Vector2.new(48,48),
},focus=
{ImageRectPosition=
Vector2.new(240,1680),_Size=
Vector2.new(48,48),
},
["egg-off"]={ImageRectPosition=
Vector2.new(288,1680),_Size=
Vector2.new(48,48),
},
["cigarette-off"]={ImageRectPosition=
Vector2.new(336,1680),_Size=
Vector2.new(48,48),
},
["calendar-arrow-up"]={ImageRectPosition=
Vector2.new(384,1680),_Size=
Vector2.new(48,48),
},
["laptop-minimal"]={ImageRectPosition=
Vector2.new(432,1680),_Size=
Vector2.new(48,48),
},
["cloud-upload"]={ImageRectPosition=
Vector2.new(480,1680),_Size=
Vector2.new(48,48),
},
["circle-equal"]={ImageRectPosition=
Vector2.new(528,1680),_Size=
Vector2.new(48,48),
},
["candy-cane"]={ImageRectPosition=
Vector2.new(576,1680),_Size=
Vector2.new(48,48),
},
["cloud-fog"]={ImageRectPosition=
Vector2.new(624,1680),_Size=
Vector2.new(48,48),
},printer=
{ImageRectPosition=
Vector2.new(672,1680),_Size=
Vector2.new(48,48),
},diff=
{ImageRectPosition=
Vector2.new(720,1680),_Size=
Vector2.new(48,48),
},
["philippine-peso"]={ImageRectPosition=
Vector2.new(768,1680),_Size=
Vector2.new(48,48),
},
["ferris-wheel"]={ImageRectPosition=
Vector2.new(816,1680),_Size=
Vector2.new(48,48),
},
["clock-alert"]={ImageRectPosition=
Vector2.new(864,1680),_Size=
Vector2.new(48,48),
},
["message-square-dot"]={ImageRectPosition=
Vector2.new(912,1680),_Size=
Vector2.new(48,48),
},
["git-commit-horizontal"]={ImageRectPosition=
Vector2.new(960,1680),_Size=
Vector2.new(48,48),
},
["folder-symlink"]={ImageRectPosition=
Vector2.new(1008,1680),_Size=
Vector2.new(48,48),
},
["hard-drive-upload"]={ImageRectPosition=
Vector2.new(1056,1680),_Size=
Vector2.new(48,48),
},
["chevron-right"]={ImageRectPosition=
Vector2.new(1104,1680),_Size=
Vector2.new(48,48),
},
["grid-2x2"]={ImageRectPosition=
Vector2.new(1152,1680),_Size=
Vector2.new(48,48),
},
["message-square-code"]={ImageRectPosition=
Vector2.new(1200,1680),_Size=
Vector2.new(48,48),
},
["hard-drive-download"]={ImageRectPosition=
Vector2.new(1248,1680),_Size=
Vector2.new(48,48),
},
["a-large-small"]={ImageRectPosition=
Vector2.new(1296,1680),_Size=
Vector2.new(48,48),
},
["equal-not"]={ImageRectPosition=
Vector2.new(1344,1680),_Size=
Vector2.new(48,48),
},barcode=
{ImageRectPosition=
Vector2.new(1392,1680),_Size=
Vector2.new(48,48),
},clapperboard=
{ImageRectPosition=
Vector2.new(1440,1680),_Size=
Vector2.new(48,48),
},
["calendar-minus-2"]={ImageRectPosition=
Vector2.new(1488,1680),_Size=
Vector2.new(48,48),
},
["align-start-horizontal"]={ImageRectPosition=
Vector2.new(1536,1680),_Size=
Vector2.new(48,48),
},
["chart-network"]={ImageRectPosition=
Vector2.new(1584,1680),_Size=
Vector2.new(48,48),
},
["arrow-right-from-line"]={ImageRectPosition=
Vector2.new(1632,1680),_Size=
Vector2.new(48,48),
},
["file-type"]={ImageRectPosition=
Vector2.new(1680,1680),_Size=
Vector2.new(48,48),
},
["door-open"]={ImageRectPosition=
Vector2.new(1728,1680),_Size=
Vector2.new(48,48),
},club=
{ImageRectPosition=
Vector2.new(1776,1680),_Size=
Vector2.new(48,48),
},
["copy-minus"]={ImageRectPosition=
Vector2.new(1824,1680),_Size=
Vector2.new(48,48),
},bookmark=
{ImageRectPosition=
Vector2.new(0,1728),_Size=
Vector2.new(48,48),
},handshake=
{ImageRectPosition=
Vector2.new(48,1728),_Size=
Vector2.new(48,48),
},
["case-upper"]={ImageRectPosition=
Vector2.new(96,1728),_Size=
Vector2.new(48,48),
},
["badge-pound-sterling"]={ImageRectPosition=
Vector2.new(144,1728),_Size=
Vector2.new(48,48),
},dot=
{ImageRectPosition=
Vector2.new(192,1728),_Size=
Vector2.new(48,48),
},eraser=
{ImageRectPosition=
Vector2.new(240,1728),_Size=
Vector2.new(48,48),
},
["calendar-1"]={ImageRectPosition=
Vector2.new(288,1728),_Size=
Vector2.new(48,48),
},
["axis-3d"]={ImageRectPosition=
Vector2.new(336,1728),_Size=
Vector2.new(48,48),
},
["cloud-sun-rain"]={ImageRectPosition=
Vector2.new(384,1728),_Size=
Vector2.new(48,48),
},
["clipboard-pen-line"]={ImageRectPosition=
Vector2.new(432,1728),_Size=
Vector2.new(48,48),
},
["book-type"]={ImageRectPosition=
Vector2.new(480,1728),_Size=
Vector2.new(48,48),
},
["circle-stop"]={ImageRectPosition=
Vector2.new(528,1728),_Size=
Vector2.new(48,48),
},
["clock-arrow-down"]={ImageRectPosition=
Vector2.new(576,1728),_Size=
Vector2.new(48,48),
},expand=
{ImageRectPosition=
Vector2.new(624,1728),_Size=
Vector2.new(48,48),
},
["chart-column-stacked"]={ImageRectPosition=
Vector2.new(672,1728),_Size=
Vector2.new(48,48),
},
["book-audio"]={ImageRectPosition=
Vector2.new(720,1728),_Size=
Vector2.new(48,48),
},
["between-horizontal-end"]={ImageRectPosition=
Vector2.new(768,1728),_Size=
Vector2.new(48,48),
},
["bug-off"]={ImageRectPosition=
Vector2.new(816,1728),_Size=
Vector2.new(48,48),
},
["file-search-2"]={ImageRectPosition=
Vector2.new(864,1728),_Size=
Vector2.new(48,48),
},fish=
{ImageRectPosition=
Vector2.new(912,1728),_Size=
Vector2.new(48,48),
},
["badge-plus"]={ImageRectPosition=
Vector2.new(960,1728),_Size=
Vector2.new(48,48),
},
["chart-column-increasing"]={ImageRectPosition=
Vector2.new(1008,1728),_Size=
Vector2.new(48,48),
},
["battery-charging"]={ImageRectPosition=
Vector2.new(1056,1728),_Size=
Vector2.new(48,48),
},
["arrow-up-down"]={ImageRectPosition=
Vector2.new(1104,1728),_Size=
Vector2.new(48,48),
},
["cloud-cog"]={ImageRectPosition=
Vector2.new(1152,1728),_Size=
Vector2.new(48,48),
},
["message-circle-plus"]={ImageRectPosition=
Vector2.new(1200,1728),_Size=
Vector2.new(48,48),
},
["circle-arrow-out-up-right"]={ImageRectPosition=
Vector2.new(1248,1728),_Size=
Vector2.new(48,48),
},copy=
{ImageRectPosition=
Vector2.new(1296,1728),_Size=
Vector2.new(48,48),
},cross=
{ImageRectPosition=
Vector2.new(1344,1728),_Size=
Vector2.new(48,48),
},
["chevrons-left-right-ellipsis"]={ImageRectPosition=
Vector2.new(1392,1728),_Size=
Vector2.new(48,48),
},
["plug-2"]={ImageRectPosition=
Vector2.new(1440,1728),_Size=
Vector2.new(48,48),
},radical=
{ImageRectPosition=
Vector2.new(1488,1728),_Size=
Vector2.new(48,48),
},
["cloud-sun"]={ImageRectPosition=
Vector2.new(1536,1728),_Size=
Vector2.new(48,48),
},diameter=
{ImageRectPosition=
Vector2.new(1584,1728),_Size=
Vector2.new(48,48),
},
["book-check"]={ImageRectPosition=
Vector2.new(1632,1728),_Size=
Vector2.new(48,48),
},
["briefcase-medical"]={ImageRectPosition=
Vector2.new(1680,1728),_Size=
Vector2.new(48,48),
},
["file-archive"]={ImageRectPosition=
Vector2.new(1728,1728),_Size=
Vector2.new(48,48),
},
["bookmark-minus"]={ImageRectPosition=
Vector2.new(1776,1728),_Size=
Vector2.new(48,48),
},
["archive-restore"]={ImageRectPosition=
Vector2.new(1824,1728),_Size=
Vector2.new(48,48),
},
["list-ordered"]={ImageRectPosition=
Vector2.new(0,1776),_Size=
Vector2.new(48,48),
},
["grid-3x3"]={ImageRectPosition=
Vector2.new(48,1776),_Size=
Vector2.new(48,48),
},
["chevrons-left"]={ImageRectPosition=
Vector2.new(96,1776),_Size=
Vector2.new(48,48),
},
["align-vertical-distribute-center"]={ImageRectPosition=
Vector2.new(144,1776),_Size=
Vector2.new(48,48),
},
["arrow-down-a-z"]={ImageRectPosition=
Vector2.new(192,1776),_Size=
Vector2.new(48,48),
},
["copy-check"]={ImageRectPosition=
Vector2.new(240,1776),_Size=
Vector2.new(48,48),
},bath=
{ImageRectPosition=
Vector2.new(288,1776),_Size=
Vector2.new(48,48),
},beaker=
{ImageRectPosition=
Vector2.new(336,1776),_Size=
Vector2.new(48,48),
},
["calendar-off"]={ImageRectPosition=
Vector2.new(384,1776),_Size=
Vector2.new(48,48),
},carrot=
{ImageRectPosition=
Vector2.new(432,1776),_Size=
Vector2.new(48,48),
},
["arrows-up-from-line"]={ImageRectPosition=
Vector2.new(480,1776),_Size=
Vector2.new(48,48),
},
["file-audio-2"]={ImageRectPosition=
Vector2.new(528,1776),_Size=
Vector2.new(48,48),
},
["file-question"]={ImageRectPosition=
Vector2.new(576,1776),_Size=
Vector2.new(48,48),
},
["corner-right-down"]={ImageRectPosition=
Vector2.new(624,1776),_Size=
Vector2.new(48,48),
},
["badge-swiss-franc"]={ImageRectPosition=
Vector2.new(672,1776),_Size=
Vector2.new(48,48),
},
["bell-electric"]={ImageRectPosition=
Vector2.new(720,1776),_Size=
Vector2.new(48,48),
},
["bed-single"]={ImageRectPosition=
Vector2.new(768,1776),_Size=
Vector2.new(48,48),
},
["list-plus"]={ImageRectPosition=
Vector2.new(816,1776),_Size=
Vector2.new(48,48),
},
["circle-chevron-right"]={ImageRectPosition=
Vector2.new(864,1776),_Size=
Vector2.new(48,48),
},
["align-center-horizontal"]={ImageRectPosition=
Vector2.new(912,1776),_Size=
Vector2.new(48,48),
},
["folder-open"]={ImageRectPosition=
Vector2.new(960,1776),_Size=
Vector2.new(48,48),
},
["circle-play"]={ImageRectPosition=
Vector2.new(1008,1776),_Size=
Vector2.new(48,48),
},
["clock-3"]={ImageRectPosition=
Vector2.new(1056,1776),_Size=
Vector2.new(48,48),
},
["audio-lines"]={ImageRectPosition=
Vector2.new(1104,1776),_Size=
Vector2.new(48,48),
},ellipsis=
{ImageRectPosition=
Vector2.new(1152,1776),_Size=
Vector2.new(48,48),
},
["bus-front"]={ImageRectPosition=
Vector2.new(1200,1776),_Size=
Vector2.new(48,48),
},
["circle-arrow-left"]={ImageRectPosition=
Vector2.new(1248,1776),_Size=
Vector2.new(48,48),
},
["book-marked"]={ImageRectPosition=
Vector2.new(1296,1776),_Size=
Vector2.new(48,48),
},cog=
{ImageRectPosition=
Vector2.new(1344,1776),_Size=
Vector2.new(48,48),
},delete=
{ImageRectPosition=
Vector2.new(1392,1776),_Size=
Vector2.new(48,48),
},
["alarm-clock-plus"]={ImageRectPosition=
Vector2.new(1440,1776),_Size=
Vector2.new(48,48),
},microwave=
{ImageRectPosition=
Vector2.new(1488,1776),_Size=
Vector2.new(48,48),
},frame=
{ImageRectPosition=
Vector2.new(1536,1776),_Size=
Vector2.new(48,48),
},
["book-a"]={ImageRectPosition=
Vector2.new(1584,1776),_Size=
Vector2.new(48,48),
},
["circle-parking-off"]={ImageRectPosition=
Vector2.new(1632,1776),_Size=
Vector2.new(48,48),
},earth=
{ImageRectPosition=
Vector2.new(1680,1776),_Size=
Vector2.new(48,48),
},merge=
{ImageRectPosition=
Vector2.new(1728,1776),_Size=
Vector2.new(48,48),
},
["align-horizontal-space-between"]={ImageRectPosition=
Vector2.new(1776,1776),_Size=
Vector2.new(48,48),
},
["circle-fading-arrow-up"]={ImageRectPosition=
Vector2.new(1824,1776),_Size=
Vector2.new(48,48),
},
["file-terminal"]={ImageRectPosition=
Vector2.new(0,1824),_Size=
Vector2.new(48,48),
},codepen=
{ImageRectPosition=
Vector2.new(48,1824),_Size=
Vector2.new(48,48),
},
["circuit-board"]={ImageRectPosition=
Vector2.new(96,1824),_Size=
Vector2.new(48,48),
},
["calendar-check"]={ImageRectPosition=
Vector2.new(144,1824),_Size=
Vector2.new(48,48),
},
["badge-info"]={ImageRectPosition=
Vector2.new(192,1824),_Size=
Vector2.new(48,48),
},hop=
{ImageRectPosition=
Vector2.new(240,1824),_Size=
Vector2.new(48,48),
},
["corner-down-left"]={ImageRectPosition=
Vector2.new(288,1824),_Size=
Vector2.new(48,48),
},bolt=
{ImageRectPosition=
Vector2.new(336,1824),_Size=
Vector2.new(48,48),
},
["circle-parking"]={ImageRectPosition=
Vector2.new(384,1824),_Size=
Vector2.new(48,48),
},
["concierge-bell"]={ImageRectPosition=
Vector2.new(432,1824),_Size=
Vector2.new(48,48),
},
["file-check-2"]={ImageRectPosition=
Vector2.new(480,1824),_Size=
Vector2.new(48,48),
},
["file-lock-2"]={ImageRectPosition=
Vector2.new(528,1824),_Size=
Vector2.new(48,48),
},
["ellipsis-vertical"]={ImageRectPosition=
Vector2.new(576,1824),_Size=
Vector2.new(48,48),
},
["timer-reset"]={ImageRectPosition=
Vector2.new(624,1824),_Size=
Vector2.new(48,48),
},
["user-x"]={ImageRectPosition=
Vector2.new(672,1824),_Size=
Vector2.new(48,48),
},
["circle-chevron-left"]={ImageRectPosition=
Vector2.new(720,1824),_Size=
Vector2.new(48,48),
},coffee=
{ImageRectPosition=
Vector2.new(768,1824),_Size=
Vector2.new(48,48),
},
["brain-cog"]={ImageRectPosition=
Vector2.new(816,1824),_Size=
Vector2.new(48,48),
},
["door-closed"]={ImageRectPosition=
Vector2.new(864,1824),_Size=
Vector2.new(48,48),
},
["book-up-2"]={ImageRectPosition=
Vector2.new(912,1824),_Size=
Vector2.new(48,48),
},
["badge-euro"]={ImageRectPosition=
Vector2.new(960,1824),_Size=
Vector2.new(48,48),
},
["alarm-clock-off"]={ImageRectPosition=
Vector2.new(1008,1824),_Size=
Vector2.new(48,48),
},drill=
{ImageRectPosition=
Vector2.new(1056,1824),_Size=
Vector2.new(48,48),
},
["eye-closed"]={ImageRectPosition=
Vector2.new(1104,1824),_Size=
Vector2.new(48,48),
},
["cloud-drizzle"]={ImageRectPosition=
Vector2.new(1152,1824),_Size=
Vector2.new(48,48),
},
["external-link"]={ImageRectPosition=
Vector2.new(1200,1824),_Size=
Vector2.new(48,48),
},lollipop=
{ImageRectPosition=
Vector2.new(1248,1824),_Size=
Vector2.new(48,48),
},binoculars=
{ImageRectPosition=
Vector2.new(1296,1824),_Size=
Vector2.new(48,48),
},cast=
{ImageRectPosition=
Vector2.new(1344,1824),_Size=
Vector2.new(48,48),
},
["chart-spline"]={ImageRectPosition=
Vector2.new(1392,1824),_Size=
Vector2.new(48,48),
},
["dollar-sign"]={ImageRectPosition=
Vector2.new(1440,1824),_Size=
Vector2.new(48,48),
},
["between-vertical-start"]={ImageRectPosition=
Vector2.new(1488,1824),_Size=
Vector2.new(48,48),
},bluetooth=
{ImageRectPosition=
Vector2.new(1536,1824),_Size=
Vector2.new(48,48),
},
["chevrons-down"]={ImageRectPosition=
Vector2.new(1584,1824),_Size=
Vector2.new(48,48),
},
["arrow-big-left"]={ImageRectPosition=
Vector2.new(1632,1824),_Size=
Vector2.new(48,48),
},
["refresh-cw-off"]={ImageRectPosition=
Vector2.new(1680,1824),_Size=
Vector2.new(48,48),
},
["arrow-down-narrow-wide"]={ImageRectPosition=
Vector2.new(1728,1824),_Size=
Vector2.new(48,48),
},
["brick-wall"]={ImageRectPosition=
Vector2.new(1776,1824),_Size=
Vector2.new(48,48),
},
["gallery-horizontal-end"]={ImageRectPosition=
Vector2.new(1824,1824),_Size=
Vector2.new(48,48),
},gift=
{ImageRectPosition=
Vector2.new(0,1872),_Size=
Vector2.new(48,48),
},
["badge-alert"]={ImageRectPosition=
Vector2.new(48,1872),_Size=
Vector2.new(48,48),
},forklift=
{ImageRectPosition=
Vector2.new(96,1872),_Size=
Vector2.new(48,48),
},ampersands=
{ImageRectPosition=
Vector2.new(144,1872),_Size=
Vector2.new(48,48),
},dog=
{ImageRectPosition=
Vector2.new(192,1872),_Size=
Vector2.new(48,48),
},
["bring-to-front"]={ImageRectPosition=
Vector2.new(240,1872),_Size=
Vector2.new(48,48),
},
["chart-bar-increasing"]={ImageRectPosition=
Vector2.new(288,1872),_Size=
Vector2.new(48,48),
},divide=
{ImageRectPosition=
Vector2.new(336,1872),_Size=
Vector2.new(48,48),
},
["candy-off"]={ImageRectPosition=
Vector2.new(384,1872),_Size=
Vector2.new(48,48),
},
["cooking-pot"]={ImageRectPosition=
Vector2.new(432,1872),_Size=
Vector2.new(48,48),
},
["gallery-vertical"]={ImageRectPosition=
Vector2.new(480,1872),_Size=
Vector2.new(48,48),
},
["clipboard-list"]={ImageRectPosition=
Vector2.new(528,1872),_Size=
Vector2.new(48,48),
},
["cloud-moon"]={ImageRectPosition=
Vector2.new(576,1872),_Size=
Vector2.new(48,48),
},
}
return b end function a.f()







local b=game:GetService"RunService"local c=
b.Heartbeat
local d=game:GetService"UserInputService"
local e=game:GetService"TweenService"

local f=a.load'e'

local g={
Font="rbxassetid://12187365364",
Theme=nil,
Objects={},
DefaultProperties={
ScreenGui={
ResetOnSpawn=false,
ZIndexBehavior="Sibling",
},
CanvasGroup={
BorderSizePixel=0,
BackgroundColor3=Color3.new(1,1,1),
},
Frame={
BorderSizePixel=0,
BackgroundColor3=Color3.new(1,1,1),
},
TextLabel={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
Text="",
TextColor3=Color3.new(1,1,1),
TextSize=14,
},TextButton={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
Text="",
AutoButtonColor=false,
TextColor3=Color3.new(1,1,1),
TextSize=14,
},
TextBox={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
ClearTextOnFocus=false,
Text="",
TextColor3=Color3.new(0,0,0),
TextSize=14,
},
ImageLabel={
BackgroundTransparency=1,
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
},
ImageButton={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
AutoButtonColor=false,
},
UIListLayout={
SortOrder="LayoutOrder",
}
}
}

function g.SetTheme(h)
g.Theme=h
end

local function ApplyCustomProps(h,i)
if i.ThemeTag then
g.AddThemeObject(h,i.ThemeTag)
end
end

function g.GetThemeProperty(h,i)
return i[h]
end

function g.AddThemeObject(h,i)
local j=#g.Objects+1
local k={
Object=h,
Properties=i,
Index=j,
}

g.Objects[h]=k
g.UpdateTheme()
return h
end

function g.UpdateTheme()
for h,i in next,g.Objects do
for j,k in next,i.Properties do
g.Tween(h,0.08,{[j]=Color3.fromHex(g.GetThemeProperty(k,g.Theme))}):Play()
end
end
end

function g.Icon(h)
if not isfile"WindUI/Assets/spritesheet-new.png"then
local i=request{
Url="https://raw.githubusercontent.com/Footagesus/WindUI/refs/heads/main/Lucide/Icons/spritesheet-new.png",
Method="GET",
}.Body
writefile("WindUI/Assets/spritesheet-new.png",i)
end
return{getcustomasset"WindUI/Assets/spritesheet-new.png",f[h]}
end

function g.New(h,i,j)
local k=Instance.new(h)

for l,m in next,g.DefaultProperties[h]or{}do
k[l]=m
end

for n,o in next,i or{}do
if n~="ThemeTag"then
k[n]=o
end
end

for p,q in next,j or{}do
q.Parent=k
end

ApplyCustomProps(k,i)
return k
end

function g.Tween(h,i,j,...)
return e:Create(h,TweenInfo.new(i,...),j)
end

function g.Drag(h)
local i,j,k,n

local function update(o)
local p=o.Position-k
h.Position=UDim2.new(
n.X.Scale,n.X.Offset+p.X,
n.Y.Scale,n.Y.Offset+p.Y
)
end

h.InputBegan:Connect(function(o)
if o.UserInputType==Enum.UserInputType.MouseButton1 or o.UserInputType==Enum.UserInputType.Touch then
i=true
k=o.Position
n=h.Position

o.Changed:Connect(function()
if o.UserInputState==Enum.UserInputState.End then
i=false
end
end)
end
end)

h.InputChanged:Connect(function(o)
if o.UserInputType==Enum.UserInputType.MouseMovement or o.UserInputType==Enum.UserInputType.Touch then
j=o
end
end)

d.InputChanged:Connect(function(o)
if o==j and i then
update(o)
end
end)
end

function g.Blur(h)

local i=game:GetService'RunService'
local j=workspace.CurrentCamera
local k="Glass"
local n={}
local o=Instance.new('Folder',j)
o.Name='BlurSnox'

local p=99999999
local q=math.random(1,p)

local r=Instance.new('DepthOfFieldEffect',game:GetService'Lighting')
r.FarIntensity=0
r.FocusDistance=51.6
r.InFocusRadius=50
r.NearIntensity=1.5
r.Name="DPT_"..q

local s=Instance.new'Frame'
s.Parent=h
s.Size=UDim2.new(0.95,0,0.95,0)
s.Position=UDim2.new(0.5,0,0.5,0)
s.AnchorPoint=Vector2.new(0.5,0.5)
s.BackgroundTransparency=1

local t;do
local u=0
function t()
u=u+1
return'neon::'..tostring(u)
end
end

do
local function IsNotNaN(u)
return u==u
end
local u=IsNotNaN(j:ScreenPointToRay(0,0).Origin.x)
while not u do
i.RenderStepped:wait()
u=IsNotNaN(j:ScreenPointToRay(0,0).Origin.x)
end
end

local u;do
local v,w,x,y=math.acos,math.max,math.pi,math.sqrt
local z=0.2

function DrawTriangle(A,B,C,D,E)
local F=(A-B).magnitude
local G=(B-C).magnitude
local H=(C-A).magnitude
local I=w(F,G,H)
local J,K,L
if F==I then
J,K,L=A,B,C
elseif G==I then
J,K,L=B,C,A
elseif H==I then
J,K,L=C,A,B
end

local M=((K-J).x*(L-J).x+(K-J).y*(L-J).y+(K-J).z*(L-J).z)/(J-K).magnitude
local N=y((L-J).magnitude^2-M*M)
local O=(J-K).magnitude-M

local P=CFrame.new(K,J)
local Q=CFrame.Angles(x/2,0,0)

local R=P

local S=(R*Q).lookVector
local T=J+CFrame.new(J,K).lookVector*M
local U=CFrame.new(T,L).lookVector
local V=S.x*U.x+S.y*U.y+S.z*U.z

local W=CFrame.Angles(0,0,v(V))

R=R*W
if((R*Q).lookVector-U).magnitude>0.01 then
R=R*CFrame.Angles(0,0,-2*v(V))
end
R=R*CFrame.new(0,N/2,-(O+M/2))

local X=P*W*CFrame.Angles(0,x,0)
if((X*Q).lookVector-U).magnitude>0.01 then
X=X*CFrame.Angles(0,0,2*v(V))
end
X=X*CFrame.new(0,N/2,O/2)

if not D then
D=Instance.new'Part'
D.FormFactor='Custom'
D.TopSurface=0
D.BottomSurface=0
D.Anchored=true
D.CanCollide=false
D.CastShadow=false
D.Material=k
D.Size=Vector3.new(z,z,z)
local Y=Instance.new('SpecialMesh',D)
Y.MeshType=2
Y.Name='WedgeMesh'
end
D.WedgeMesh.Scale=Vector3.new(0,N/z,M/z)
D.CFrame=R

if not E then
E=D:clone()
end
E.WedgeMesh.Scale=Vector3.new(0,N/z,O/z)
E.CFrame=X

return D,E
end

function u(A,B,C,D,E)
E[1],E[2]=DrawTriangle(A,B,C,E[1],E[2])
E[3],E[4]=DrawTriangle(C,B,D,E[3],E[4])
end
end

if n[s]then
return n[s].parts
end

local v=t()
local w={}
local x=Instance.new('Folder',o)
x.Name=s.Name

local y={}
do
local function add(z)
if z:IsA'GuiObject'then
y[#y+1]=z
add(z.Parent)
end
end
add(s)
end

local function UpdateOrientation(z)
if h.Visible then
local A={
Transparency=0.98;
BrickColor=BrickColor.new'Institutional white';
}
local B=1-0.05*s.ZIndex

local C,D=s.AbsolutePosition,s.AbsolutePosition+s.AbsoluteSize
local E,F=Vector2.new(D.x,C.y),Vector2.new(C.x,D.y)
do
local G=0;
for H,I in ipairs(y)do
G=G+I.Rotation
end
if G~=0 and G%180~=0 then
local J=C:lerp(D,0.5)
local K,L=math.sin(math.rad(G)),math.cos(math.rad(G))

C=Vector2.new(L*(C.x-J.x)-K*(C.y-J.y),K*(C.x-J.x)+L*(C.y-J.y))+J
E=Vector2.new(L*(E.x-J.x)-K*(E.y-J.y),K*(E.x-J.x)+L*(E.y-J.y))+J
F=Vector2.new(L*(F.x-J.x)-K*(F.y-J.y),K*(F.x-J.x)+L*(F.y-J.y))+J
D=Vector2.new(L*(D.x-J.x)-K*(D.y-J.y),K*(D.x-J.x)+L*(D.y-J.y))+J
end
end
u(
j:ScreenPointToRay(C.x,C.y,B).Origin,
j:ScreenPointToRay(E.x,E.y,B).Origin,
j:ScreenPointToRay(F.x,F.y,B).Origin,
j:ScreenPointToRay(D.x,D.y,B).Origin,
w
)
if z then
for G,H in pairs(w)do
H.Parent=x
end
for I,J in pairs(A)do
for K,L in pairs(w)do
L[I]=J
end
end
end
end
end

UpdateOrientation(true)
i:BindToRenderStep(v,2000,UpdateOrientation)
end

return g end function a.g()
local b=a.load'f'
local c=b.New
local d=b.Tween

local e={
Size=UDim2.new(0,300,1,-156),
UICorner=14,
UIPadding=14,
ButtonPadding=9,
Holder=nil,
NotificationIndex=0,
Notifications={}
}

function e.Init(f)
return c("Frame",{
Position=UDim2.new(1,-29,0,56),
AnchorPoint=Vector2.new(1,0),
Size=e.Size,
Parent=f,
BackgroundTransparency=1,




},{
c("UIListLayout",{
HorizontalAlignment="Center",
SortOrder="LayoutOrder",
VerticalAlignment="Bottom",
Padding=UDim.new(0,8),
}),
})
end

function e.New(f)
local g={
Title=f.Title or"Notification",
Content=f.Content or nil,
Duration=f.Duration,
Callback=f.Callback,
CanClose=f.CanClose,
UIElements={},
Closed=false,
}
if g.CanClose==nil then
g.CanClose=true
end
e.NotificationIndex=e.NotificationIndex+1
e.Notifications[e.NotificationIndex]=g

local h










local i
if g.Duration then
i=c("Frame",{
Name="Duration",
Size=UDim2.new(1,0,0,4),
Position=UDim2.new(0,0,0,0),
ThemeTag={
BackgroundColor3="Outline"
},
BackgroundTransparency=.7,
ZIndex=999,
})
end
local j
if g.CanClose then
j=c("ImageButton",{
Size=UDim2.new(0,18,0,18),
Image=b.Icon"x"[1],
ImageRectOffset=b.Icon"x"[2].ImageRectPosition,
ImageRectSize=b.Icon"x"[2]._Size,
Position=UDim2.new(1,-e.UIPadding,0,e.UIPadding),
AnchorPoint=Vector2.new(1,0),
ThemeTag={
ImageColor3="Text"
},
BackgroundTransparency=1,
ZIndex=999,
})
end

local k={
"Confirm",
"Cancel"
}

local n

if g.Callback then
n=c("Frame",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
LayoutOrder=5,
},{
c("UIListLayout",{
SortOrder="LayoutOrder",
FillDirection="Horizontal",
Padding=UDim.new(0,5.5)
})
})

for o,p in next,k do
local q=c("TextButton",{
Size=UDim2.new(1/#k,-(((#k-1)*11/2)/#k),0,0),
AutomaticSize="Y",
ThemeTag={
BackgroundColor3="Text",
TextColor3=p=="Confirm"and"Accent"or"Text"
},
BackgroundTransparency=p=="Confirm"and 0.15 or.9,
Text=p,
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
TextSize=15,
Parent=n,
LayoutOrder=p=="Confirm"and 0 or 1
},{
c("UICorner",{
CornerRadius=UDim.new(0,e.UICorner-6),
}),
c("UIPadding",{
PaddingTop=UDim.new(0,e.ButtonPadding),
PaddingLeft=UDim.new(0,e.ButtonPadding),
PaddingRight=UDim.new(0,e.ButtonPadding),
PaddingBottom=UDim.new(0,e.ButtonPadding),
}),
c("Frame",{
Size=UDim2.new(1,e.ButtonPadding*2,1,e.ButtonPadding*2),
BackgroundColor3=Color3.new(0,0,0),
BackgroundTransparency=1,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5)
},{
c("UICorner",{
CornerRadius=UDim.new(0,e.UICorner-6),
})
})
})
q.MouseButton1Click:Connect(function()
pcall(g.Callback,p)
end)
q.MouseEnter:Connect(function()
d(q.Frame,0.1,{BackgroundTransparency=0.85}):Play()
end)
q.MouseLeave:Connect(function()
d(q.Frame,0.1,{BackgroundTransparency=1}):Play()
end)
end
end

g.UIElements.MainContainer=c("Frame",{
Size=UDim2.new(1,0,0,0),
Parent=f.Holder,
AnchorPoint=Vector2.new(0,0),

BackgroundTransparency=1,
},{
c("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
AnchorPoint=Vector2.new(0,1),
Position=UDim2.new(2,0,1,0),
},{
h,
j,
c("CanvasGroup",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Name="Frame",
ZIndex=2
},{
i,
c("UICorner",{
CornerRadius=UDim.new(0,e.UICorner),
}),
c("UIStroke",{
Thickness=0.6,
ThemeTag={
Color="Outline"
},
Transparency=.86,
}),
c("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ZIndex=999,
},{
c("UIPadding",{
PaddingTop=UDim.new(0,e.UIPadding+2),
PaddingLeft=UDim.new(0,e.UIPadding),
PaddingRight=UDim.new(0,e.UIPadding),
PaddingBottom=UDim.new(0,e.UIPadding+2),
}),
c("TextLabel",{
Text=g.Title,
ThemeTag={
TextColor3="Text"
},
TextSize=16,
FontFace=Font.new(b.Font,Enum.FontWeight.SemiBold),
BackgroundTransparency=1,
TextWrapped=true,
AutomaticSize="Y",
Size=UDim2.new(1,-18-e.UIPadding,0,0),
TextXAlignment="Left",
LayoutOrder=1,
}),
n,
c("UIListLayout",{
SortOrder="LayoutOrder",
Padding=UDim.new(0,2)
})
}),
c("Frame",{
BackgroundTransparency=0.23,
Size=UDim2.new(1,0,1,0),
ThemeTag={
BackgroundColor3="Accent",
},
},{
c("UICorner",{
CornerRadius=UDim.new(0,e.UICorner),
}),
}),
})
})
})

if g.Content then
c("TextLabel",{
Text=g.Content,
ThemeTag={
TextColor3="Text"
},
TextSize=15,
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
TextTransparency=.4,
TextWrapped=true,
BackgroundTransparency=1,
AutomaticSize="Y",
Size=UDim2.new(1,-18-e.UIPadding,0,0),
TextXAlignment="Left",
LayoutOrder=1,
Parent=g.UIElements.MainContainer.Frame.Frame.Frame,
})
end

task.spawn(function()
d(g.UIElements.MainContainer.Frame,0.4,{Position=UDim2.new(0,0,1,0)},Enum.EasingStyle.Sine,Enum.EasingDirection.InOut):Play()
if e.NotificationIndex~=1 then
g.UIElements.MainContainer.Frame.Frame:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
d(g.UIElements.MainContainer,0.2,{Size=UDim2.new(1,0,0,g.UIElements.MainContainer.Frame.Frame.AbsoluteSize.Y)},Enum.EasingStyle.Sine,Enum.EasingDirection.InOut):Play()
end)
else
g.UIElements.MainContainer.Frame.Frame:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
g.UIElements.MainContainer.Size=UDim2.new(1,0,0,g.UIElements.MainContainer.Frame.Frame.AbsoluteSize.Y)
end)
end
end)

function g.Close(o)
if not g.Closed then
g.Closed=true
d(g.UIElements.MainContainer.Frame,0.4,{Position=UDim2.new(2,0,1,0)},Enum.EasingStyle.Sine,Enum.EasingDirection.InOut):Play()
task.spawn(function()
task.wait(.3)
g.UIElements.MainContainer.Frame.Frame:Destroy()
d(g.UIElements.MainContainer,0.2,{Size=UDim2.new(1,0,0,-8)},Enum.EasingStyle.Sine,Enum.EasingDirection.InOut):Play()
task.wait(.35)
g.UIElements.MainContainer:Destroy()
end)
end
end

task.spawn(function()
if i then
d(i,g.Duration,{Size=UDim2.new(0,0,0,4)},Enum.EasingStyle.Linear,Enum.EasingDirection.InOut):Play()

task.wait(g.Duration)

g:Close()
end
end)

if j then
j.MouseButton1Click:Connect(function()
g:Close()
end)
end


return g
end

return e end function a.h()
local b=a.load'f'
local c=b.New
local d=b.Tween

return function(e)
local f={
Title=e.Title or"Element",
Desc=e.Desc or nil,
Hover=e.Hover,
UIPadding=11,
UIElements={}
}

local g=true

f.UIElements.Main=c("TextButton",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=0.98,
BackgroundColor3=Color3.fromHex(e.Theme.Text),
ThemeTag={
BackgroundColor3="Text"
}
},{
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
c("Frame",{
Size=UDim2.new(0,0,0,0),
AutomaticSize="XY",


BackgroundTransparency=1,
Name="Title"
},{
c("UIListLayout",{
Padding=UDim.new(0,6),

}),
c("TextLabel",{
Text=f.Title,
TextColor3=Color3.fromHex(e.Theme.Text),
ThemeTag={
TextColor3="Text"
},
TextSize=15,
TextWrapped=true,
Name="Title",
TextXAlignment="Left",
Size=UDim2.new(1,-e.TextOffset,0,0),
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
AutomaticSize="Y"
})
}),
c("Frame",{
Size=UDim2.new(1,f.UIPadding*2,1,f.UIPadding*2+6),
BackgroundColor3=Color3.fromHex(e.Theme.Text),
ThemeTag={
BackgroundColor3="Text"
},
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Name="Highlight"
},{
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
}),
c("Frame",{
Size=UDim2.new(1,f.UIPadding*2,1,f.UIPadding*2+6),
BackgroundColor3=Color3.new(0,0,0),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
ZIndex=999999,
Name="Lock"
},{
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
c("ImageLabel",{
Image="rbxassetid://120011858138977",
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Size=UDim2.new(0,26,0,26),
ImageTransparency=1,
BackgroundTransparency=1,
})
}),
c("UIPadding",{
PaddingTop=UDim.new(0,f.UIPadding+3),
PaddingLeft=UDim.new(0,f.UIPadding),
PaddingRight=UDim.new(0,f.UIPadding),
PaddingBottom=UDim.new(0,f.UIPadding+3),
}),
c("UIStroke",{
Thickness=0.8,
Color=Color3.fromHex(e.Theme.Text),
ThemeTag={
Color="Text",
},
Transparency=0.94,
ApplyStrokeMode="Border",
})
})

f.UIElements.MainContainer=c("Frame",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Parent=e.Parent,
},{
f.UIElements.Main,
c("UIPadding",{
PaddingTop=UDim.new(0,1),
PaddingLeft=UDim.new(0,1),
PaddingRight=UDim.new(0,1),
PaddingBottom=UDim.new(0,1),
})
})

local h

if f.Desc then
h=c("TextLabel",{
Text=f.Desc,
TextColor3=Color3.fromHex(e.Theme.Text),
ThemeTag={
TextColor3="Text"
},
TextTransparency=0.4,
TextSize=15,
TextWrapped=true,
TextXAlignment="Left",
Size=UDim2.new(1,-e.TextOffset,0,0),
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
AutomaticSize="Y",
Parent=f.UIElements.Main.Title
})
else
f.UIElements.Main.Title.AnchorPoint=Vector2.new(0,0.5)
f.UIElements.Main.Title.Position=UDim2.new(0,0,0.5,0)
end

if f.Hover then
f.UIElements.Main.MouseEnter:Connect(function()
if g then
d(f.UIElements.Main.Highlight,0.08,{BackgroundTransparency=0.97}):Play()
end
end)
f.UIElements.Main.MouseLeave:Connect(function()
if g then
d(f.UIElements.Main.Highlight,0.08,{BackgroundTransparency=1}):Play()
end
end)
end

function f.SetTitle(i,j)
f.UIElements.Main.Title.Title.Text=j
end
function f.SetDesc(i,j)
if h then
h.Text=j
else
h=c("TextLabel",{
Text=j,
TextColor3=Color3.fromHex(e.Theme.Text),
ThemeTag={
TextColor3="Text"
},
TextTransparency=0.4,
TextSize=15,
TextWrapped=true,
TextXAlignment="Left",
Size=UDim2.new(1,-e.TextOffset,0,0),
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
AutomaticSize="Y",
Parent=f.UIElements.Main.Title
})
end
end
function f.Lock(i)
d(f.UIElements.Main.Lock,.08,{BackgroundTransparency=.6}):Play()
d(f.UIElements.Main.Lock.ImageLabel,.08,{ImageTransparency=0}):Play()
f.UIElements.Main.Lock.Active=true
g=false
end
function f.Unlock(i)
d(f.UIElements.Main.Lock,.08,{BackgroundTransparency=1}):Play()
d(f.UIElements.Main.Lock.ImageLabel,.08,{ImageTransparency=1}):Play()
f.UIElements.Main.Lock.Active=false
g=true
end

return f
end end function a.i()
local b=a.load'f'
local c=b.New

local d={}

function d.New(e,f)
local g={
__type="Button",
Title=f.Title or"Button",
Desc=f.Desc or nil,
Locked=f.Locked or false,
Callback=f.Callback or function()end,
UIElements={}
}

local h=true

g.ButtonFrame=a.load'h'{
Title=g.Title,
Desc=g.Desc,
Parent=f.Parent,
Theme=f.Theme,
TextOffset=20,
Hover=true,
}

g.UIElements.ButtonIcon=c("ImageLabel",{
Image=b.Icon"mouse-pointer-click"[1],
ImageRectOffset=b.Icon"mouse-pointer-click"[2].ImageRectPosition,
ImageRectSize=b.Icon"mouse-pointer-click"[2]._Size,
BackgroundTransparency=1,
Parent=g.ButtonFrame.UIElements.Main,
Size=UDim2.new(0,20,0,20),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,0,0.5,0),
ImageColor3=Color3.fromHex(f.Theme.Text),
ThemeTag={
ImageColor3="Text"
}
})

function g.Lock(i)
h=false
return g.ButtonFrame:Lock()
end
function g.Unlock(i)
h=true
return g.ButtonFrame:Unlock()
end

if g.Locked then
g:Lock()
end

g.ButtonFrame.UIElements.Main.MouseButton1Click:Connect(function()
if h then
task.spawn(function()
pcall(g.Callback)
end)
end
end)
return g.__type,g
end

return d end function a.j()
local b=a.load'f'
local c=b.New
local d=b.Tween

local e={}

function e.New(f,g)
local h={
__type="Toggle",
Title=g.Title or"Toggle",
Desc=g.Desc or nil,
Value=g.Value,
Callback=g.Callback or function()end,
UIElements={}
}
h.ToggleFrame=a.load'h'{
Title=h.Title,
Desc=h.Desc,
Parent=g.Parent,
Theme=g.Theme,
TextOffset=44,
Hover=true,
}

local i=true

if h.Value==nil then
h.Value=false
end

h.UIElements.Toggle=c("Frame",{
BackgroundTransparency=.95,
BackgroundColor3=Color3.fromHex(g.Theme.Text),
ThemeTag={
BackgroundColor3="Text"
},
Parent=h.ToggleFrame.UIElements.Main,
Size=UDim2.new(0,44,0,24),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,0,0.5,0)
},{
c("UICorner",{
CornerRadius=UDim.new(1,0)
}),
c("UIStroke",{
Color=Color3.fromHex(g.Theme.Text),
ThemeTag={
Color="Text",
},
Transparency=.93,
Thickness=1,
}),
c("Frame",{
Size=UDim2.new(0,18,0,18),
Position=UDim2.new(0,3,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
BackgroundTransparency=0.15,
BackgroundColor3=Color3.fromHex(g.Theme.Text),
ThemeTag={
BackgroundColor3="Text"
},
},{
c("UICorner",{
CornerRadius=UDim.new(1,0)
}),
c("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ThemeTag={
BackgroundColor3="Accent"
},
},{
c("UICorner",{
CornerRadius=UDim.new(1,0)
}),
})
})
})

function h.Lock(j)
i=false
return h.ToggleFrame:Lock()
end
function h.Unlock(j)
i=true
return h.ToggleFrame:Unlock()
end

if h.Locked then
h:Lock()
end

local j=h.Value

function h.SetValue(k,n)
j=n or j

if j then
d(h.UIElements.Toggle.Frame,0.1,{
Position=UDim2.new(1,-21,0.5,0),
BackgroundTransparency=1,
}):Play()
d(h.UIElements.Toggle.Frame.Frame,0.1,{
BackgroundTransparency=0.15,
}):Play()
d(h.UIElements.Toggle,0.1,{
BackgroundTransparency=0.15,
}):Play()
else
d(h.UIElements.Toggle.Frame,0.1,{
Position=UDim2.new(0,3,0.5,0),
BackgroundTransparency=0.15,
}):Play()
d(h.UIElements.Toggle.Frame.Frame,0.1,{
BackgroundTransparency=1,
}):Play()
d(h.UIElements.Toggle,0.1,{
BackgroundTransparency=0.95,
}):Play()
end

task.spawn(function()
pcall(h.Callback,j)
end)

j=not j
end

h:SetValue(j)

h.ToggleFrame.UIElements.Main.MouseButton1Click:Connect(function()
if i then
h:SetValue(j)
end
end)

return h.__type,h
end

return e end function a.k()
local b=a.load'f'
local c=b.New

local d={}

local e=false

function d.New(f,g)
local h={
__type="Slider",
Title=g.Title or"Slider",
Desc=g.Desc or nil,
Locked=g.Locked or nil,
Value=g.Value or{},
Step=g.Step or 1,
Callback=g.Callback or function()end,
UIElements={},
IsFocusing=false,
}
local i
local j
local k
local n=h.Value.Default or h.Value.Min or 0

local o=n
local p=(n-(h.Value.Min or 0))/((h.Value.Max or 100)-(h.Value.Min or 0))

local q=true

h.SliderFrame=a.load'h'{
Title=h.Title,
Desc=h.Desc,
Parent=g.Parent,
Theme=g.Theme,
TextOffset=85,
Hover=false,
}

h.UIElements.SliderIcon=c("ImageLabel",{
ImageTransparency=.9,
BackgroundTransparency=1,
Image="rbxassetid://18747052224",
ScaleType="Crop",
Size=UDim2.new(0,126,0,3),
Name="Frame",
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
ImageColor3="Text"
}
},{
c("UICorner",{
CornerRadius=UDim.new(1,0),
}),
c("ImageLabel",{
Name="Frame",
Size=UDim2.new(p,0,1,0),
Image="rbxassetid://18747052224",
ScaleType="Crop",
BackgroundTransparency=1,
ImageTransparency=.4,
ThemeTag={
ImageColor3="Text"
}
},{
c("UICorner",{
CornerRadius=UDim.new(1,0),
}),
c("ImageLabel",{
Size=UDim2.new(0,13,0,13),
Position=UDim2.new(1,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
Image="rbxassetid://18747052224",
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Text",
},
})
})
})

h.UIElements.SliderContainer=c("Frame",{
Size=UDim2.new(0,0,0,0),
AutomaticSize="XY",
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,0,0.5,0),
BackgroundTransparency=1,
Parent=h.SliderFrame.UIElements.Main,
},{
c("UIListLayout",{
Padding=UDim.new(0,8),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
h.UIElements.SliderIcon,
c("TextLabel",{
Text=tostring(n),
TextColor3=Color3.fromHex(g.Theme.Text),
ThemeTag={
TextColor3="Text"
},
TextTransparency=.4,
AutomaticSize="XY",
TextSize=15,
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
LayoutOrder=-1,
})
})

function h.Lock(r)
q=false
return h.SliderFrame:Lock()
end
function h.Unlock(r)
q=true
return h.SliderFrame:Unlock()
end

if h.Locked then
h:Lock()
end

h.UIElements.SliderContainer.InputBegan:Connect(function(r)
if q then
if not h.IsFocusing and not e and(r.UserInputType==Enum.UserInputType.MouseButton1 or r.UserInputType==Enum.UserInputType.Touch)then
i=(r.UserInputType==Enum.UserInputType.Touch)

h.SliderFrame.UIElements.Main.Parent.Parent.ScrollingEnabled=false
e=true

j=game:GetService"RunService".RenderStepped:Connect(function()
local s
if i then
s=r.Position.X
else
s=game:GetService"UserInputService":GetMouseLocation().X
end

local t=math.clamp((s-h.UIElements.SliderIcon.AbsolutePosition.X)/h.UIElements.SliderIcon.Size.X.Offset,0,1)
n=math.floor((h.Value.Min+t*(h.Value.Max-h.Value.Min))/h.Step+0.5)*h.Step

if n~=o then
h.UIElements.SliderIcon.Frame.Size=UDim2.new(t,0,1,0)
h.UIElements.SliderContainer.TextLabel.Text=n
o=n
task.spawn(h.Callback,n)
end
end)

k=game:GetService"UserInputService".InputEnded:Connect(function(s)
if(s.UserInputType==Enum.UserInputType.MouseButton1 or s.UserInputType==Enum.UserInputType.Touch)and r==s then
j:Disconnect()
k:Disconnect()
e=false

h.SliderFrame.UIElements.Main.Parent.Parent.ScrollingEnabled=true
end
end)
end
end
end)

return h.__type,h
end

return d end function a.l()
local b=game:GetService"UserInputService"

local c=a.load'f'
local d=c.New local e=
c.Tween

local f={
UICorner=6,
UIPadding=8,
}

function f.New(g,h)
local i={
__type="Keybind",
Title=h.Title or"Keybind",
Desc=h.Desc or nil,
Locked=h.Locked or false,
Value=h.Value or"F",
Callback=h.Callback or function()end,
CanChange=h.CanChange or true,
Picking=false,
UIElements={},
}

local j=true

i.KeybindFrame=a.load'h'{
Title=i.Title,
Desc=i.Desc,
Parent=h.Parent,
Theme=h.Theme,
TextOffset=44,
Hover=i.CanChange,
}

i.UIElements.Keybind=d("TextLabel",{
BackgroundTransparency=.95,
BackgroundColor3=Color3.fromHex(h.Theme.Text),
Text=i.Value,
TextColor3=Color3.fromHex(h.Theme.Text),
TextSize=15,
TextXAlignment="Right",
AutomaticSize="XY",
FontFace=Font.new(c.Font),
Parent=i.KeybindFrame.UIElements.Main,
Size=UDim2.new(0,0,0,0),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,0,0.5,0),
ThemeTag={
BackgroundColor3="Text",
TextColor3="Text",
},
ZIndex=2
},{
d("UICorner",{
CornerRadius=UDim.new(0,f.UICorner)
}),
d("UIStroke",{
Color=Color3.fromHex(h.Theme.Text),
ThemeTag={
Color="Text",
},
Transparency=.93,
ApplyStrokeMode="Border",
Thickness=1,
}),
d("UIPadding",{
PaddingTop=UDim.new(0,f.UIPadding),
PaddingLeft=UDim.new(0,f.UIPadding),
PaddingRight=UDim.new(0,f.UIPadding),
PaddingBottom=UDim.new(0,f.UIPadding),
})
})

function i.Lock(k)
j=false
return i.KeybindFrame:Lock()
end
function i.Unlock(k)
j=true
return i.KeybindFrame:Unlock()
end

if i.Locked then
i:Lock()
end

i.KeybindFrame.UIElements.Main.MouseButton1Click:Connect(function()
if j then
if i.CanChange then
i.Picking=true
i.UIElements.Keybind.Text="..."

task.wait(0.2)

local k
k=b.InputBegan:Connect(function(n)
local o

if n.UserInputType==Enum.UserInputType.Keyboard then
o=n.KeyCode.Name
elseif n.UserInputType==Enum.UserInputType.MouseButton1 then
o="MouseLeft"
elseif n.UserInputType==Enum.UserInputType.MouseButton2 then
o="MouseRight"
end

local p
p=b.InputEnded:Connect(function(q)
if q.KeyCode.Name==o or o=="MouseLeft"and q.UserInputType==Enum.UserInputType.MouseButton1 or o=="MouseRight"and q.UserInputType==Enum.UserInputType.MouseButton2 then
i.Picking=false

i.UIElements.Keybind.Text=o
i.Value=o

k:Disconnect()
p:Disconnect()
end
end)
end)
end
end
end)
b.InputBegan:Connect(function(k)
if j then
if k.KeyCode.Name==i.Value then
pcall(i.Callback,k.KeyCode.Name)
end
end
end)
return i.__type,i
end

return f end function a.m()
local b=a.load'f'
local c=b.New
local d=b.Tween

local e={
UICorner=6,
UIPadding=8,
}

function e.New(f,g)
local h={
__type="Input",
Title=g.Title or"Input",
Desc=g.Desc or nil,
Locked=g.Locked or false,
PlaceholderText=g.PlaceholderText or"Enter Text...",
Value=g.Value or"",
Callback=g.Callback or function()end,
ClearTextOnFocus=g.ClearTextOnFocus or false,
UIElements={},
}

local i=true

h.InputFrame=a.load'h'{
Title=h.Title,
Desc=h.Desc,
Parent=g.Parent,
Theme=g.Theme,
TextOffset=70,
Hover=false,
}

h.UIElements.Input=c("Frame",{
BackgroundTransparency=.95,
BackgroundColor3=Color3.fromHex(g.Theme.Text),
Parent=h.InputFrame.UIElements.Main,
Size=UDim2.new(0,150,0,30),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,0,0.5,0),
ThemeTag={
BackgroundColor3="Text",
},
ZIndex=2
},{
c("TextBox",{
MultiLine=false,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Position=UDim2.new(0,0,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
ClearTextOnFocus=h.ClearTextOnFocus,
Text=h.Value,
TextColor3=Color3.fromHex(g.Theme.Text),
TextSize=15,
ClipsDescendants=true,
TextXAlignment="Left",
FontFace=Font.new(b.Font),
PlaceholderText=h.PlaceholderText,
ThemeTag={
TextColor3="Text",
PlaceholderColor3="PlaceholderText",
}
}),
c("UICorner",{
CornerRadius=UDim.new(0,e.UICorner)
}),
c("UIStroke",{
Color=Color3.fromHex(g.Theme.Text),
ThemeTag={
Color="Text",
},
Transparency=.93,
ApplyStrokeMode="Border",
Thickness=1,
}),
c("UIPadding",{
PaddingTop=UDim.new(0,e.UIPadding),
PaddingLeft=UDim.new(0,e.UIPadding),
PaddingRight=UDim.new(0,e.UIPadding),
PaddingBottom=UDim.new(0,e.UIPadding),
})
})

function h.Lock(j)
i=false
return h.InputFrame:Lock()
end
function h.Unlock(j)
i=true
return h.InputFrame:Unlock()
end

if h.Locked then
h:Lock()
end

h.UIElements.Input.TextBox.Focused:Connect(function()
if not i then
h.UIElements.Input.TextBox:ReleaseFocus()
return
end
d(h.UIElements.Input.UIStroke,0.1,{Transparency=.8}):Play()
end)

h.UIElements.Input.TextBox.FocusLost:Connect(function()
if i then
pcall(h.Callback,h.UIElements.Input.TextBox.Text)
d(h.UIElements.Input.UIStroke,0.1,{Transparency=.93}):Play()
end
end)

return h.__type,h
end

return e end function a.n()
local b=game:GetService"UserInputService"
local c=game:GetService"Players".LocalPlayer:GetMouse()
local d=game:GetService"Workspace".CurrentCamera

local e=a.load'f'
local f=e.New
local g=e.Tween

local h={
UICorner=6,
UIPadding=8,
MenuCorner=14,
MenuPadding=7,
TabPadding=10,
}

function h.New(i,j)
local k={
__type="Dropdown",
Title=j.Title or"Dropdown",
Desc=j.Desc or nil,
Locked=j.Locked or false,
Values=j.Values or{},
Value=j.Value,
AllowNone=j.AllowNone,
Multi=j.Multi,
Callback=j.Callback or function()end,

UIElements={},

Opened=false,
Tabs={}
}

local n=true

k.DropdownFrame=a.load'h'{
Title=k.Title,
Desc=k.Desc,
Parent=j.Parent,
Theme=j.Theme,
TextOffset=70,
Hover=false,
}

k.UIElements.Dropdown=f("TextButton",{
BackgroundTransparency=.95,
Text="",
FontFace=Font.new(e.Font,Enum.FontWeight.Medium),
TextSize=15,
TextTransparency=.4,
TextXAlignment="Left",
BackgroundColor3=Color3.fromHex(j.Theme.Text),
Parent=k.DropdownFrame.UIElements.Main,
Size=UDim2.new(0,150,0,30),
AnchorPoint=Vector2.new(1,0.5),
TextTruncate="AtEnd",
Position=UDim2.new(1,0,0.5,0),
ThemeTag={
BackgroundColor3="Text",
TextColor3="Text"
},
ZIndex=2
},{
f("UICorner",{
CornerRadius=UDim.new(0,h.UICorner)
}),
f("UIStroke",{
Color=Color3.fromHex(j.Theme.Text),
ThemeTag={
Color="Text",
},
Transparency=.93,
ApplyStrokeMode="Border",
Thickness=1,
}),
f("UIPadding",{
PaddingTop=UDim.new(0,h.UIPadding),
PaddingLeft=UDim.new(0,h.UIPadding),
PaddingRight=UDim.new(0,h.UIPadding*2+18),
PaddingBottom=UDim.new(0,h.UIPadding),
}),
f("ImageLabel",{
Image=e.Icon"chevron-down"[1],
ImageRectOffset=e.Icon"chevron-down"[2].ImageRectPosition,
ImageRectSize=e.Icon"chevron-down"[2]._Size,
Size=UDim2.new(0,18,0,18),
Position=UDim2.new(1,h.UIPadding+18,0.5,0),
ThemeTag={
ImageColor3="Text"
},
AnchorPoint=Vector2.new(1,0.5),
})
})

k.UIElements.UIListLayout=f("UIListLayout",{
Padding=UDim.new(0,h.MenuPadding/1.5),
FillDirection="Vertical"
})

k.UIElements.Menu=f("Frame",{
ThemeTag={
BackgroundColor3="Accent",
},
BackgroundTransparency=0.15,
Size=UDim2.new(1,0,1,0)
},{
f("UISizeConstraint",{
MinSize=Vector2.new(170,0),
}),
f("UICorner",{
CornerRadius=UDim.new(0,h.MenuCorner)
}),
f("UIStroke",{
Thickness=1,
Transparency=.93,
ThemeTag={
Color="Text"
}
}),
f("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,0),
Name="CanvasGroup",
ClipsDescendants=true
},{
f("UIPadding",{
PaddingTop=UDim.new(0,h.MenuPadding),
PaddingLeft=UDim.new(0,h.MenuPadding),
PaddingRight=UDim.new(0,h.MenuPadding),
PaddingBottom=UDim.new(0,h.MenuPadding),
}),
f("ScrollingFrame",{
Size=UDim2.new(1,0,1,0),
ScrollBarThickness=0,
ScrollingDirection="Y",
AutomaticCanvasSize="Y",
CanvasSize=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
},{
k.UIElements.UIListLayout,
})
})
})

k.UIElements.MenuCanvas=f("Frame",{
Size=UDim2.new(0,170,0,300),
BackgroundTransparency=1,
Position=UDim2.new(-10,0,-10,0),
Visible=false,
Active=false,
Parent=j.Window.SuperParent.Parent.Dropdowns,

},{
k.UIElements.Menu
})

local function RecalculateCanvasSize()
k.UIElements.Menu.CanvasGroup.ScrollingFrame.CanvasSize=UDim2.fromOffset(0,k.UIElements.UIListLayout.AbsoluteContentSize.Y)
end

local function RecalculateListSize()
if#k.Values>10 then
k.UIElements.MenuCanvas.Size=UDim2.fromOffset(k.UIElements.UIListLayout.AbsoluteContentSize.X,392)
else
k.UIElements.MenuCanvas.Size=UDim2.fromOffset(k.UIElements.UIListLayout.AbsoluteContentSize.X,k.UIElements.UIListLayout.AbsoluteContentSize.Y+h.MenuPadding*2+1)
end
end

function UpdatePosition()
local o=-35
if d.ViewportSize.Y-k.UIElements.Dropdown.AbsolutePosition.Y+o<k.UIElements.MenuCanvas.AbsoluteSize.Y+10 then
o=k.UIElements.MenuCanvas.AbsoluteSize.Y
-(d.ViewportSize.Y-k.UIElements.Dropdown.AbsolutePosition.Y)
+10
end
k.UIElements.MenuCanvas.Position=UDim2.fromOffset(k.UIElements.Dropdown.AbsolutePosition.X-1,k.UIElements.Dropdown.AbsolutePosition.Y-o)
end

function k.Display(o)
local p=k.Values
local q=""

if k.Multi then
for r,s in next,p do
if table.find(k.Value,s)then
q=q..s..", "
end
end
q=q:sub(1,#q-2)
else
q=k.Value or""
end

k.UIElements.Dropdown.Text=(q==""and"--"or q)
end

function k.Refresh(o,p)
for q,r in next,k.UIElements.Menu.CanvasGroup.ScrollingFrame:GetChildren()do
if not r:IsA"UIListLayout"then
r:Destroy()
end
end

k.Tabs={}

for s,t in next,p do
task.wait(0.012)
local u={
Name=t,
Selected=false,
UIElements={},
}
u.UIElements.TabItem=f("TextButton",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Parent=k.UIElements.Menu.CanvasGroup.ScrollingFrame,
Text=t,
TextXAlignment="Left",
FontFace=Font.new(e.Font,Enum.FontWeight.Medium),
ThemeTag={
TextColor3="Text",
BackgroundColor3="Text"
},
TextSize=15,
},{
f("UIPadding",{
PaddingTop=UDim.new(0,h.TabPadding),
PaddingLeft=UDim.new(0,h.TabPadding),
PaddingRight=UDim.new(0,h.TabPadding),
PaddingBottom=UDim.new(0,h.TabPadding),
}),
f("UICorner",{
CornerRadius=UDim.new(0,h.MenuCorner-h.MenuPadding)
})
})


if k.Multi then
u.Selected=table.find(k.Value,u.Name)
else
u.Selected=k.Value==u.Name
end

if u.Selected then
u.UIElements.TabItem.BackgroundTransparency=.93
end

k.Tabs[s]=u

local function Callback()
k:Display()
task.spawn(function()
pcall(k.Callback,k.Value)
end)
end

u.UIElements.TabItem.MouseButton1Click:Connect(function()
if k.Multi then
if not u.Selected then
u.Selected=true
g(u.UIElements.TabItem,0.1,{BackgroundTransparency=.93}):Play()
table.insert(k.Value,u.Name)
else
if not k.AllowNone and#k.Value==1 then
return
end
u.Selected=false
g(u.UIElements.TabItem,0.1,{BackgroundTransparency=1}):Play()
for v,w in ipairs(k.Value)do
if w==u.Name then
table.remove(k.Value,v)
break
end
end
end
else
for v,w in next,k.Tabs do

g(w.UIElements.TabItem,0.1,{BackgroundTransparency=1}):Play()
w.Selected=false
end
u.Selected=true
g(u.UIElements.TabItem,0.1,{BackgroundTransparency=.93}):Play()
k.Value=u.Name
end
Callback()
end)

RecalculateCanvasSize()
RecalculateListSize()
end
end

k:Refresh(k.Values)

function k.Select(o,p)
if p then
k.Value=p
end
k:Refresh(k.Values)
end

k:Display()
RecalculateListSize()

function k.Open(o)
k.Opened=true
k.UIElements.MenuCanvas.Visible=true
k.UIElements.MenuCanvas.Active=true
k.UIElements.Menu.Size=UDim2.new(
1,0,
0,0
)
g(k.UIElements.Menu,0.1,{
Size=UDim2.new(
1,0,
1,0
)
},Enum.EasingStyle.Quart,Enum.EasingDirection.Out):Play()

g(k.UIElements.Dropdown.ImageLabel,.15,{Rotation=180}):Play()

UpdatePosition()
end
function k.Close(o)
k.Opened=false

g(k.UIElements.Menu,0.1,{
Size=UDim2.new(
1,0,
0,0
)
},Enum.EasingStyle.Quart,Enum.EasingDirection.Out):Play()
g(k.UIElements.Dropdown.ImageLabel,.15,{Rotation=0}):Play()
task.wait(.1)
k.UIElements.MenuCanvas.Visible=false
k.UIElements.MenuCanvas.Active=false
end

k.UIElements.Dropdown.MouseButton1Click:Connect(function()
if n then
k:Open()
end
end)

b.InputBegan:Connect(function(o)
if
o.UserInputType==Enum.UserInputType.MouseButton1
or o.UserInputType==Enum.UserInputType.Touch
then
local p,q=k.UIElements.MenuCanvas.AbsolutePosition,k.UIElements.MenuCanvas.AbsoluteSize
if
j.Window.CanDropdown
and(c.X<p.X
or c.X>p.X+q.X
or c.Y<(p.Y-20-1)
or c.Y>p.Y+q.Y)
then
k:Close()
end
end
end)

k.UIElements.Dropdown:GetPropertyChangedSignal"AbsolutePosition":Connect(UpdatePosition)

return k.__type,k
end

return h end function a.o()
local b=a.load'f'
local c=b.New
local d=b.Tween

local e={
UICorner=14,
UIPadding=18,
Holder=nil,
Window=nil,
}

function e.Init(f)
e.Window=f
return e
end

function e.Create(f)
local g={
UICorner=14,
UIPadding=18,
UIElements={}
}

if f then g.UIPadding=24 end
if f then g.UICorner=16 end

if not f then
g.UIElements.FullScreen=c("Frame",{
ZIndex=999,
BackgroundTransparency=1,
BackgroundColor3=Color3.new(0,0,0),
Size=UDim2.new(1,0,1,0),
Active=false,
Visible=false,
Parent=f and e.Window or e.Window.UIElements.Main.Main
})
end

g.UIElements.Main=c("CanvasGroup",{
ThemeTag={
BackgroundColor3="Accent"
},
Visible=false,
GroupTransparency=1,
BackgroundTransparency=0,
AutomaticSize="XY",
Parent=f and e.Window or g.UIElements.FullScreen,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
},{
c("UIScale",{
Scale=.9
}),
c("UICorner",{
CornerRadius=UDim.new(0,g.UICorner),
}),
c("UIStroke",{
Thickness=0.6,
ThemeTag={
Color="Outline",
},
Transparency=1,
}),
c("UIPadding",{
PaddingTop=UDim.new(0,g.UIPadding),
PaddingLeft=UDim.new(0,g.UIPadding),
PaddingRight=UDim.new(0,g.UIPadding),
PaddingBottom=UDim.new(0,g.UIPadding),
})
})

function g.Open(h)
if not f then
g.UIElements.FullScreen.Visible=true
g.UIElements.FullScreen.Active=true
end

task.spawn(function()
task.wait(.1)

g.UIElements.Main.Visible=true

if not f then
d(g.UIElements.FullScreen,0.1,{BackgroundTransparency=.5}):Play()
end
d(g.UIElements.Main,0.1,{GroupTransparency=0}):Play()
d(g.UIElements.Main.UIScale,0.1,{Scale=1}):Play()
d(g.UIElements.Main.UIStroke,0.1,{Transparency=.8}):Play()
end)
end
function g.Close(h)
if not f then
d(g.UIElements.FullScreen,0.1,{BackgroundTransparency=1}):Play()
g.UIElements.FullScreen.Active=false
task.spawn(function()
task.wait(.1)
g.UIElements.FullScreen.Visible=false
end)
end

d(g.UIElements.Main,0.1,{GroupTransparency=1}):Play()
d(g.UIElements.Main.UIScale,0.1,{Scale=.9}):Play()
d(g.UIElements.Main.UIStroke,0.1,{Transparency=1}):Play()

return function()
task.spawn(function()
task.wait(.1)
if not f then
g.UIElements.FullScreen:Destroy()
else
g.UIElements.Main:Destroy()
end
end)
end
end


return g
end

return e end function a.p()
local b=a.load'f'
local c=b.New
local d=b.Tween

local e=game:GetService"UserInputService"
game:GetService"TouchInputService"
local f=game:GetService"RunService"
local g=game:GetService"Players"

local h=f.RenderStepped
local i=g.LocalPlayer
local j=i:GetMouse()


local k={
UICorner=6,
UIPadding=8
}

function k.Colorpicker(n,o,p)
local q={
__type="Colorpicker",
Title=o.Title,
Desc=o.Desc,
Default=o.Default,
Callback=o.Callback,
Transparency=o.Transparency,
UIElements=o.UIElements,
}

function q.SetHSVFromRGB(r,s)
local t,u,v=Color3.toHSV(s)
q.Hue=t
q.Sat=u
q.Vib=v
end

q:SetHSVFromRGB(q.Default)

local r=a.load'o'.Init(o.Window)
local s=r.Create()

q.ColorpickerFrame=s

s:Close()

local t,u,v=q.Hue,q.Sat,q.Vib

q.UIElements.Title=c("TextLabel",{
Text="Colorpicker",
TextSize=20,
FontFace=Font.new(b.Font,Enum.FontWeight.SemiBold),
TextXAlignment="Left",
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
ThemeTag={
TextColor3="Text"
},
BackgroundTransparency=1,
Parent=s.UIElements.Main
})

local w=c("ImageLabel",{
Size=UDim2.new(0,18,0,18),
ScaleType=Enum.ScaleType.Fit,
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Image="http://www.roblox.com/asset/?id=4805639000",
})

q.UIElements.SatVibMap=c("ImageLabel",{
Size=UDim2.fromOffset(160,158),
Position=UDim2.fromOffset(0,40),
Image="rbxassetid://4155801252",
BackgroundColor3=Color3.fromHSV(t,1,1),
BackgroundTransparency=0,
Parent=s.UIElements.Main,
},{
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
c("UIStroke",{
Thickness=.6,
ThemeTag={
Color="Text"
},
Transparency=.8,
}),
w,
})

q.UIElements.Inputs=c("Frame",{
AutomaticSize="XY",
Position=UDim2.fromOffset(q.Transparency and 230 or 200,40),
BackgroundTransparency=1,
Parent=s.UIElements.Main
},{
c("UIListLayout",{
Padding=UDim.new(0,8),
FillDirection="Vertical",
})
})

local x=c("Frame",{
BackgroundColor3=q.Default,
Size=UDim2.fromScale(1,1),
BackgroundTransparency=q.Transparency,
},{
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
})

c("ImageLabel",{
Image="http://www.roblox.com/asset/?id=14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Position=UDim2.fromOffset(85,208),
Size=UDim2.fromOffset(75,24),
Parent=s.UIElements.Main,
},{
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
c("UIStroke",{
Thickness=.6,
Transparency=0.8,
ThemeTag={
Color="Text"
}
}),
x,
})

local y=c("Frame",{
BackgroundColor3=q.Default,
Size=UDim2.fromScale(1,1),
BackgroundTransparency=0,
ZIndex=9,
},{
c("UICorner",{
CornerRadius=UDim.new(0,4),
}),
})

c("ImageLabel",{
Image="http://www.roblox.com/asset/?id=14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Position=UDim2.fromOffset(0,208),
Size=UDim2.fromOffset(75,24),
Parent=s.UIElements.Main,
},{
c("UICorner",{
CornerRadius=UDim.new(0,4),
}),
c("UIStroke",{
Thickness=.6,
Transparency=0.8,
ThemeTag={
Color="Text"
}
}),
y,
})

local z={}

for A=0,1,0.1 do
table.insert(z,ColorSequenceKeypoint.new(A,Color3.fromHSV(A,1,1)))
end

local A=c("UIGradient",{
Color=ColorSequence.new(z),
Rotation=90,
})

local B=c("Frame",{
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
})

local C=c("ImageLabel",{
Size=UDim2.new(1,0,0,3),
Image="rbxassetid://18747052224",
AnchorPoint=Vector2.new(0,0.5),
Parent=B,
ScaleType="Crop",
ThemeTag={
ImageColor3="Text",
},
})

local D=c("Frame",{
Size=UDim2.fromOffset(20,192),
Position=UDim2.fromOffset(170,40),
Parent=s.UIElements.Main,
},{
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
A,
B,
})


function CreateInput(E,F)
local G=c("Frame",{
Size=UDim2.new(0,120,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Parent=q.UIElements.Inputs
},{
c("UIListLayout",{
Padding=UDim.new(0,10),
FillDirection="Vertical",
}),
c("Frame",{
BackgroundTransparency=.95,
Size=UDim2.new(1,0,0,30),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,0,0.5,0),
ThemeTag={
BackgroundColor3="Text",
},
ZIndex=2
},{
c("TextBox",{
MultiLine=false,
Size=UDim2.new(1,-40,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Position=UDim2.new(0,0,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
ClearTextOnFocus=false,
Text=F,
TextSize=15,
ClipsDescendants=true,
TextXAlignment="Left",
FontFace=Font.new(b.Font),
PlaceholderText="",
ThemeTag={
TextColor3="Text",
}
}),
c("TextLabel",{
Text=E,
TextSize=16,
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
ThemeTag={
TextColor3="Text"
},
BackgroundTransparency=1,
TextXAlignment="Right",
Position=UDim2.new(1,0,0.5,0),
AnchorPoint=Vector2.new(1,0.5),
Size=UDim2.new(0,0,0,0),
TextTransparency=.4,
AutomaticSize="XY",
}),
c("UICorner",{
CornerRadius=UDim.new(0,k.UICorner)
}),
c("UIStroke",{
ThemeTag={
Color="Text",
},
Transparency=.93,
ApplyStrokeMode="Border",
Thickness=1,
}),
c("UIPadding",{
PaddingTop=UDim.new(0,k.UIPadding),
PaddingLeft=UDim.new(0,k.UIPadding),
PaddingRight=UDim.new(0,k.UIPadding),
PaddingBottom=UDim.new(0,k.UIPadding),
})
})
})
return G
end

local function ToRGB(E)
return{
R=math.floor(E.R*255),
G=math.floor(E.G*255),
B=math.floor(E.B*255)
}
end

local E=CreateInput("Hex","#"..q.Default:ToHex())

local F=CreateInput("Red",ToRGB(q.Default).R)
local G=CreateInput("Green",ToRGB(q.Default).G)
local H=CreateInput("Blue",ToRGB(q.Default).B)
local I
if q.Transparency then
I=CreateInput("Alpha",((1-q.Transparency)*100).."%")
end

local J=c("Frame",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
Position=UDim2.new(0,0,0,254),
BackgroundTransparency=1,
Parent=s.UIElements.Main,
LayoutOrder=4,
},{
c("UIListLayout",{
Padding=UDim.new(0,8),
FillDirection="Horizontal",
HorizontalAlignment="Center",
}),
})

local K={
{
Title="Cancel",
Callback=function()end
},
{
Title="Apply",
Callback=function()pcall(p,Color3.fromHSV(q.Hue,q.Sat,q.Vib),q.Transparency)end
}
}

for L,M in next,K do
local N=c("TextButton",{
Text=M.Title or"Button",
TextSize=14,
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
ThemeTag={
TextColor3="Text",
BackgroundColor3="Text",
},
BackgroundTransparency=.9,
ZIndex=999999,
Parent=J,
Size=UDim2.new(1/#K,-(((#K-1)*8)/#K),0,0),
AutomaticSize="Y",
},{
c("UICorner",{
CornerRadius=UDim.new(0,s.UICorner-7),
}),
c("UIPadding",{
PaddingTop=UDim.new(0,s.UIPadding/1.6),
PaddingLeft=UDim.new(0,s.UIPadding/1.6),
PaddingRight=UDim.new(0,s.UIPadding/1.6),
PaddingBottom=UDim.new(0,s.UIPadding/1.6),
}),
c("Frame",{
Size=UDim2.new(1,(s.UIPadding/1.6)*2,1,(s.UIPadding/1.6)*2),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
BackgroundColor3="Text"
},
BackgroundTransparency=1,
},{
c("UICorner",{
CornerRadius=UDim.new(0,s.UICorner-7),
}),
})
})



N.MouseEnter:Connect(function()
d(N.Frame,0.1,{BackgroundTransparency=.9}):Play()
end)
N.MouseLeave:Connect(function()
d(N.Frame,0.1,{BackgroundTransparency=1}):Play()
end)
N.MouseButton1Click:Connect(function()
s:Close()
task.spawn(function()
pcall(M.Callback)
end)
end)
end


local N,O,P
if q.Transparency then
local Q=c("Frame",{
Size=UDim2.new(1,0,1,0),
Position=UDim2.fromOffset(0,0),
BackgroundTransparency=1,
})

O=c("ImageLabel",{
Size=UDim2.new(1,0,0,3),
AnchorPoint=Vector2.new(0,0.5),
Image="rbxassetid://18747052224",
ScaleType="Crop",
Parent=Q,
ThemeTag={
ImageColor3="Text",
},
})

P=c("Frame",{
Size=UDim2.fromScale(1,1),
},{
c("UIGradient",{
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,0),
NumberSequenceKeypoint.new(1,1),
},
Rotation=270,
}),
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
})

N=c("Frame",{
Size=UDim2.fromOffset(20,192),
Position=UDim2.fromOffset(200,40),
Parent=s.UIElements.Main,
BackgroundTransparency=1,
},{
c("UICorner",{
CornerRadius=UDim.new(1,0),
}),
c("ImageLabel",{
Image="rbxassetid://14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
},{
c("UICorner",{
CornerRadius=UDim.new(0,6),
}),
}),
P,
Q,
})
end

function q.Round(Q,R,S)
if S==0 then
return math.floor(R)
end
R=tostring(R)
return R:find"%."and tonumber(R:sub(1,R:find"%."+S))or R
end


function q.Update(Q,R,S)
if R then t,u,v=Color3.toHSV(R)else t,u,v=q.Hue,q.Sat,q.Vib end

q.UIElements.SatVibMap.BackgroundColor3=Color3.fromHSV(t,1,1)
w.Position=UDim2.new(u,0,1-v,0)
y.BackgroundColor3=Color3.fromHSV(t,u,v)
C.Position=UDim2.new(0,0,t,0)

E.Frame.TextBox.Text="#"..Color3.fromHSV(t,u,v):ToHex()
F.Frame.TextBox.Text=ToRGB(Color3.fromHSV(t,u,v)).R
G.Frame.TextBox.Text=ToRGB(Color3.fromHSV(t,u,v)).G
H.Frame.TextBox.Text=ToRGB(Color3.fromHSV(t,u,v)).B

if S or q.Transparency then
P.BackgroundColor3=Color3.fromHSV(t,u,v)
y.BackgroundTransparency=q.Transparency or S
O.Position=UDim2.new(0,0,1-q.Transparency or S,0)
I.Frame.TextBox.Text=q:Round((1-q.Transparency or S)*100,0).."%"
end
end

q:Update(q.Default,q.Transparency)




local function GetRGB()
local Q=Color3.fromHSV(q.Hue,q.Sat,q.Vib)
return{R=math.floor(Q.r*255),G=math.floor(Q.g*255),B=math.floor(Q.b*255)}
end



E.Frame.TextBox.FocusLost:Connect(function(Q)
if Q then
local R=E.Frame.TextBox.Text:gsub("#","")
local S,T=pcall(Color3.fromHex,R)
if S and typeof(T)=="Color3"then
q.Hue,q.Sat,q.Vib=Color3.toHSV(T)
q:Update()
q.Default=T
end
end
end)

F.Frame.TextBox.FocusLost:Connect(function(Q)
if Q then
local R=GetRGB()
local S,T=pcall(Color3.fromRGB,tonumber(F.Frame.TextBox.Text),R.G,R.B)
if S and typeof(T)=="Color3"then
if tonumber(F.Frame.TextBox.Text)<=255 then
q.Hue,q.Sat,q.Vib=Color3.toHSV(T)
q:Update()
end
end
end
end)

G.Frame.TextBox.FocusLost:Connect(function(Q)
if Q then
local R=GetRGB()
local S,T=pcall(Color3.fromRGB,R.R,tonumber(G.Frame.TextBox.Text),R.B)
if S and typeof(T)=="Color3"then
if tonumber(G.Frame.TextBox.Text)<=255 then
q.Hue,q.Sat,q.Vib=Color3.toHSV(T)
q:Update()
end
end
end
end)

H.Frame.TextBox.FocusLost:Connect(function(Q)
if Q then
local R=GetRGB()
local S,T=pcall(Color3.fromRGB,R.R,R.G,tonumber(H.Frame.TextBox.Text))
if S and typeof(T)=="Color3"then
if tonumber(H.Frame.TextBox.Text)<=255 then
q.Hue,q.Sat,q.Vib=Color3.toHSV(T)
q:Update()
end
end
end
end)

if q.Transparency then
I.Frame.TextBox.FocusLost:Connect(function(Q)
if Q then
pcall(function()
local R=tonumber(I.Frame.TextBox.Text)
if R>=0 and R<=100 then
q.Transparency=1-R*0.01
q:Update(nil,q.Transparency)
end
end)
end
end)
end



local Q=q.UIElements.SatVibMap
Q.InputBegan:Connect(function(R)
if R.UserInputType==Enum.UserInputType.MouseButton1 or R.UserInputType==Enum.UserInputType.Touch then
while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do
local S=Q.AbsolutePosition.X
local T=S+Q.AbsoluteSize.X
local U=math.clamp(j.X,S,T)

local V=Q.AbsolutePosition.Y
local W=V+Q.AbsoluteSize.Y
local X=math.clamp(j.Y,V,W)

q.Sat=(U-S)/(T-S)
q.Vib=1-((X-V)/(W-V))
q:Update()

h:Wait()
end
end
end)

D.InputBegan:Connect(function(R)
if R.UserInputType==Enum.UserInputType.MouseButton1 or R.UserInputType==Enum.UserInputType.Touch then
while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do
local S=D.AbsolutePosition.Y
local T=S+D.AbsoluteSize.Y
local U=math.clamp(j.Y,S,T)

q.Hue=((U-S)/(T-S))
q:Update()

h:Wait()
end
end
end)

if q.Transparency then
N.InputBegan:Connect(function(R)
if R.UserInputType==Enum.UserInputType.MouseButton1 or R.UserInputType==Enum.UserInputType.Touch then
while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do
local S=N.AbsolutePosition.Y
local T=S+N.AbsoluteSize.Y
local U=math.clamp(j.Y,S,T)

q.Transparency=1-((U-S)/(T-S))
q:Update()

h:Wait()
end
end
end)
end

return q
end

function k.New(n,o)
local p={
__type="Colorpicker",
Title=o.Title or"Colorpicker",
Desc=o.Desc or nil,
Locked=o.Locked or false,
Default=o.Default or Color3.new(1,1,1),
Callback=o.Callback or function()end,
Window=o.Window,
Transparency=o.Transparency,
UIElements={}
}

local q=true


p.ColorpickerFrame=a.load'h'{
Title=p.Title,
Desc=p.Desc,
Parent=o.Parent,
Theme=o.Theme,
TextOffset=40,
Hover=false,
}

p.UIElements.Colorpicker=c("TextButton",{
BackgroundTransparency=0,
Text="",
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
TextSize=15,
TextTransparency=.4,
Active=false,
TextXAlignment="Left",
BackgroundColor3=p.Default,
Parent=p.ColorpickerFrame.UIElements.Main,
Size=UDim2.new(0,30,0,30),
AnchorPoint=Vector2.new(1,0.5),
TextTruncate="AtEnd",
Position=UDim2.new(1,0,0.5,0),
ThemeTag={
TextColor3="Text"
},
ZIndex=2
},{
c("UICorner",{
CornerRadius=UDim.new(0,k.UICorner)
}),
c("UIStroke",{
ThemeTag={
Color="Text",
},
Transparency=.93,
ApplyStrokeMode="Border",
Thickness=1,
}),
})


function p.Lock(r)
q=false
return p.ColorpickerFrame:Lock()
end
function p.Unlock(r)
q=true
return p.ColorpickerFrame:Unlock()
end

if p.Locked then
p:Lock()
end


function p.Update(r,s,t)
p.UIElements.Colorpicker.BackgroundTransparency=t or 0
p.UIElements.Colorpicker.BackgroundColor3=s
p.Default=s
if t then
p.Transparency=t
end
end

local r=k:Colorpicker(p,function(r,s)
if q then
p:Update(r,s)
p.Default=r
p.Transparency=s
pcall(p.Callback,r,s)
end
end)

p:Update(p.Default,p.Transparency)


p.UIElements.Colorpicker.MouseButton1Click:Connect(function()
if q then
r.ColorpickerFrame:Open()
end
end)

return p.__type,p
end

return k end function a.q()
local b=a.load'f'
local c=b.New local d=
b.Tween

local e={}

function e.New(f,g)
local h={
__type="Section",
Title=g.Title or"Section",
TextXAlignment=g.TextXAlignment or"Left",
TextSize=g.TextSize or 17,
UIElements={},
}

h.UIElements.Main=c("TextLabel",{
BackgroundTransparency=1,
TextXAlignment=h.TextXAlignment,
AutomaticSize="Y",
TextSize=h.TextSize,
ThemeTag={
TextColor3="Text",
},
FontFace=Font.new(b.Font,Enum.FontWeight.SemiBold),
Parent=g.Parent,
Size=UDim2.new(1,0,0,0),
Text=h.Title,
},{
c("UIPadding",{
PaddingTop=UDim.new(0,4),
PaddingBottom=UDim.new(0,2),
})
})

function h.SetTitle(i,j)
h.UIElements.Main.Text=j
end

return h.__type,h
end

return e end function a.r()
game:GetService"UserInputService"

local b=a.load'f'
local c=b.New
local d=b.Tween

local e={
Window=nil,
Tabs={},
Containers={},
SelectedTab=nil,
TabCount=0,
}

function e.Init(f)
e.Window=f
return e
end

function e.New(f)
local g={
Title=f.Title or"Tab",
Icon=f.Icon,
Selected=false,
Index=nil,
UIElements={},
Elements={},
}

local h=e.Window

e.TabCount=e.TabCount+1
local i=e.TabCount
g.Index=i

g.UIElements.Main=c("TextButton",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
Parent=f.Parent
},{
c("UIListLayout",{
SortOrder="LayoutOrder",
Padding=UDim.new(0,10),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
c("TextLabel",{
Text=g.Title,
TextColor3=Color3.fromHex(e.Window.Theme.Text),
ThemeTag={
TextColor3="Text"
},
TextTransparency=0.4,
TextSize=15,
Size=UDim2.new(1,0,0,0),
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
TextWrapped=true,
AutomaticSize="Y",
LayoutOrder=2,
TextXAlignment="Left",
BackgroundTransparency=1,
}),
c("UIPadding",{
PaddingTop=UDim.new(0,6),
PaddingBottom=UDim.new(0,6),
})
})
if g.Icon and b.Icon(g.Icon)[2]then
c("ImageLabel",{
ImageTransparency=0.4,
Image=b.Icon(g.Icon)[1],
ImageRectOffset=b.Icon(g.Icon)[2].ImageRectPosition,
ImageRectSize=b.Icon(g.Icon)[2]._Size,
Size=UDim2.new(0,20,0,20),
LayoutOrder=1,
ThemeTag={
ImageColor3="Text"
},
BackgroundTransparency=1,
Parent=g.UIElements.Main,
})
g.UIElements.Main.TextLabel.Size=UDim2.new(1,-30,0,0)
elseif g.Icon and string.find(g.Icon,"rbxassetid://")then
c("ImageLabel",{
ImageTransparency=0.4,
Image=g.Icon,
Size=UDim2.new(0,20,0,20),
LayoutOrder=1,
ThemeTag={
ImageColor3="Text"
},
BackgroundTransparency=1,
Parent=g.UIElements.Main,
})
g.UIElements.Main.TextLabel.Size=UDim2.new(1,-30,0,0)
end

g.UIElements.ContainerFrame=c("ScrollingFrame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ScrollBarThickness=0,
ElasticBehavior="Never",
CanvasSize=UDim2.new(0,0,0,0),
AutomaticCanvasSize="Y",

ScrollingDirection="Y",
},{
c("UIPadding",{
PaddingTop=UDim.new(0,h.UIPadding),
PaddingLeft=UDim.new(0,h.UIPadding),
PaddingRight=UDim.new(0,h.UIPadding),
PaddingBottom=UDim.new(0,h.UIPadding),
}),
c("UIListLayout",{
SortOrder="LayoutOrder",
Padding=UDim.new(0,6)
})
})

local j=c("Frame",{
Size=UDim2.new(0,3,1,0),
BackgroundTransparency=1,
Position=UDim2.new(1,-h.UIPadding/3,0,0),
AnchorPoint=Vector2.new(1,0),
})

c("ImageLabel",{
Size=UDim2.new(1,0,0,0),


BackgroundTransparency=.65,

ThemeTag={
BackgroundColor3="Text"
},
Parent=j
},{
c("UICorner",{
CornerRadius=UDim.new(1,0)
})
})

g.UIElements.ContainerFrameCanvas=c("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Visible=false,
Parent=h.UIElements.MainBar
},{
g.UIElements.ContainerFrame,

})

e.Containers[i]=g.UIElements.ContainerFrameCanvas
e.Tabs[i]=g

g.UIElements.Main.MouseButton1Click:Connect(function()
e:SelectTab(i)
end)





































































function g.Paragraph(k,n)
task.wait(.04)
local o=a.load'h'{
Title=n.Title or"Paragraph",
Desc=n.Desc,
Locked=n.Locked,
Parent=g.UIElements.ContainerFrame,
Theme=e.Window.Theme,
TextOffset=0,
Hover=false,
}
g.Elements.Paragraph=o
return o
end
function g.Button(k,n)
task.wait(.04)
local o,p=a.load'i':New{
Title=n.Title,
Desc=n.Desc,
Locked=n.Locked,
Callback=n.Callback,
Theme=e.Window.Theme,
Parent=g.UIElements.ContainerFrame
}
g.Elements[o]=p

function p.SetTitle(q,r)
p.ButtonFrame:SetTitle(r)
end
function p.SetDesc(q,r)
p.ButtonFrame:SetDesc(r)
end

return p
end
function g.Toggle(k,n)
task.wait(.04)
local o,p=a.load'j':New{
Title=n.Title,
Desc=n.Desc,
Locked=n.Locked,
Value=n.Value,
Callback=n.Callback,
Theme=e.Window.Theme,
Parent=g.UIElements.ContainerFrame
}
g.Elements[o]=p

function p.SetTitle(q,r)
p.ToggleFrame:SetTitle(r)
end
function p.SetDesc(q,r)
p.ToggleFrame:SetDesc(r)
end

return p
end
function g.Slider(k,n)
task.wait(.04)
local o,p=a.load'k':New{
Title=n.Title,
Desc=n.Desc,
Locked=n.Locked,
Step=n.Step,
Value=n.Value,
Callback=n.Callback,
Theme=e.Window.Theme,
Parent=g.UIElements.ContainerFrame,
}
g.Elements[o]=p

function p.SetTitle(q,r)
p.SliderFrame:SetTitle(r)
end
function p.SetDesc(q,r)
p.SliderFrame:SetDesc(r)
end

return p
end
function g.Keybind(k,n)
task.wait(.04)
local o,p=a.load'l':New{
Title=n.Title,
Desc=n.Desc,
Locked=n.Locked,
Value=n.Value,
Callback=n.Callback,
Theme=e.Window.Theme,
Parent=g.UIElements.ContainerFrame,
}
g.Elements[o]=p

function p.SetTitle(q,r)
p.KeybindFrame:SetTitle(r)
end
function p.SetDesc(q,r)
p.KeybindFrame:SetDesc(r)
end

return p
end
function g.Input(k,n)
task.wait(.04)
local o,p=a.load'm':New{
Title=n.Title,
Desc=n.Desc,
Locked=n.Locked,
Value=n.Value,
PlaceholderText=n.PlaceholderText,
ClearTextOnFocus=n.ClearTextOnFocus,
Callback=n.Callback,
Theme=e.Window.Theme,
Parent=g.UIElements.ContainerFrame,
}
g.Elements[o]=p

function p.SetTitle(q,r)
p.InputFrame:SetTitle(r)
end
function p.SetDesc(q,r)
p.InputFrame:SetDesc(r)
end

return p
end
function g.Dropdown(k,n)
task.wait(.04)
local o,p=a.load'n':New{
Title=n.Title,
Desc=n.Desc,
Locked=n.Locked,
AllowNone=n.AllowNone,
Value=n.Value,
Values=n.Values,
Multi=n.Multi,
Callback=n.Callback,
Theme=e.Window.Theme,
Parent=g.UIElements.ContainerFrame,
Window=h
}
g.Elements[o]=p

function p.SetTitle(q,r)
p.DropdownFrame:SetTitle(r)
end
function p.SetDesc(q,r)
p.DropdownFrame:SetDesc(r)
end

return p
end
function g.Colorpicker(k,n)
task.wait(.04)
local o,p=a.load'p':New{
Title=n.Title,
Desc=n.Desc,
Locked=n.Locked,
Default=n.Default,
Transparency=n.Transparency,
Callback=n.Callback,
Parent=g.UIElements.ContainerFrame,
Theme=e.Window.Theme,
Window=h
}
g.Elements[o]=p

function p.SetTitle(q,r)
p.ColorpickerFrame:SetTitle(r)
end
function p.SetDesc(q,r)
p.ColorpickerFrame:SetDesc(r)
end

return p
end
function g.Section(k,n)
task.wait(.04)
local o,p=a.load'q':New{
Title=n.Title,
TextXAlignment=n.TextXAlignment,
TextSize=n.TextSize,
Parent=g.UIElements.ContainerFrame,
}
g.Elements[o]=p
return p
end


task.spawn(function()
local k=c("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,-h.UIElements.Main.Main.Topbar.AbsoluteSize.Y),
Parent=g.UIElements.ContainerFrame
},{
c("UIListLayout",{
Padding=UDim.new(0,8),
SortOrder="LayoutOrder",
VerticalAlignment="Center",
HorizontalAlignment="Center",
FillDirection="Vertical",
}),
c("ImageLabel",{
Size=UDim2.new(0,48,0,48),
Image=b.Icon"frown"[1],
ImageRectOffset=b.Icon"frown"[2].ImageRectPosition,
ImageRectSize=b.Icon"frown"[2]._Size,
ThemeTag={
ImageColor3="Text"
},
BackgroundTransparency=1,
ImageTransparency=.4,
}),
c("TextLabel",{
AutomaticSize="XY",
Text="This tab is empty",
TextColor3=Color3.fromHex(e.Window.Theme.Text),
ThemeTag={
TextColor3="Text"
},
TextSize=18,
TextTransparency=.4,
BackgroundTransparency=1,
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
})
})
g.UIElements.ContainerFrame.ChildAdded:Connect(function()
k.Visible=false
end)
end)

return g
end

function e.SelectTab(f,g)
e.SelectedTab=g

for h,i in next,e.Tabs do
d(i.UIElements.Main.TextLabel,0.15,{TextTransparency=0.4}):Play()
if i.Icon and b.Icon(i.Icon)then
d(i.UIElements.Main.ImageLabel,0.15,{ImageTransparency=0.4}):Play()
end
i.Selected=false
end
d(e.Tabs[g].UIElements.Main.TextLabel,0.15,{TextTransparency=0}):Play()
if e.Tabs[g].Icon and b.Icon(e.Tabs[g].Icon)then
d(e.Tabs[g].UIElements.Main.ImageLabel,0.15,{ImageTransparency=0}):Play()
end
e.Tabs[g].Selected=true

task.spawn(function()
for j,k in next,e.Containers do
k.AnchorPoint=Vector2.new(0,0.05)
k.Visible=false
end
e.Containers[g].Visible=true
d(e.Containers[g],0.15,{AnchorPoint=Vector2.new(0,0)},Enum.EasingStyle.Quart,Enum.EasingDirection.Out):Play()
end)
end

return e end function a.s()

local b=game:GetService"UserInputService"
local c=game:GetService"RunService"

local d=a.load'f'
local e=d.New
local f=d.Tween

local g=false

return function(h)
local i={
Title=h.Title or"UI Library",
Author=h.Author,
Icon=h.Icon,
Folder=h.Folder,
Size=h.Size or UDim2.fromOffset(560,460),
ToggleKey=h.ToggleKey or Enum.KeyCode.G,
Transparent=h.Transparent or false,
Position=UDim2.new(
0.5,0,
0.5,0
),
UICorner=9,
UIPadding=14,
SideBarWidth=h.SideBarWidth or 200,
UIElements={},
Theme=h.Theme,
CanDropdown=true,
Closed=false,
HasOutline=h.HasOutline or false,
SuperParent=h.Parent
}

if i.Folder then
makefolder("WindUI/"..i.Folder)
end

local j=e("UICorner",{
CornerRadius=UDim.new(0,i.UICorner)
})
local k=e("UIStroke",{
Thickness=0.6,
Color=Color3.fromHex(h.Theme.Outline),
ThemeTag={
Color="Outline",
},
Transparency=1,
})

local n=e("Frame",{
Size=UDim2.new(0,32,0,32),
Position=UDim2.new(1,0,1,0),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
ZIndex=99,
Active=true
})
local o=e("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
BackgroundColor3=Color3.new(0,0,0),
ZIndex=98,
Active=false,
},{
e("ImageLabel",{
Size=UDim2.new(0,70,0,70),
Image=d.Icon"expand"[1],
ImageRectOffset=d.Icon"expand"[2].ImageRectPosition,
ImageRectSize=d.Icon"expand"[2]._Size,
BackgroundTransparency=1,
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ImageTransparency=1,
}),
e("UICorner",{
CornerRadius=UDim.new(0,i.UICorner)
})
})

i.UIElements.SideBar=e("ScrollingFrame",{
Size=UDim2.new(0,i.SideBarWidth,1,-i.UIPadding*4),
Position=UDim2.new(0,0,0,i.UIPadding*4),
BackgroundTransparency=1,
ScrollBarThickness=0,
CanvasSize=UDim2.new(0,0,0,0),
AutomaticCanvasSize="Y",
ScrollingDirection="Y",
},{
e("UIPadding",{
PaddingTop=UDim.new(0,i.UIPadding),
PaddingLeft=UDim.new(0,i.UIPadding+4),
PaddingRight=UDim.new(0,i.UIPadding+4),
PaddingBottom=UDim.new(0,i.UIPadding),
}),
e("UIListLayout",{
SortOrder="LayoutOrder",
Padding=UDim.new(0,8)
})
})

i.UIElements.MainBar=e("Frame",{
Size=UDim2.new(1,-i.UIElements.SideBar.AbsoluteSize.X,1,-i.UIPadding*4),
Position=UDim2.new(0,i.UIElements.SideBar.AbsoluteSize.X,0,i.UIPadding*4),
BackgroundTransparency=1,
})

local p=e("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ZIndex=3,
Name="Gradient"
},{
e("UIGradient",{
Color=ColorSequence.new(Color3.new(0,0,0),Color3.new(0,0,0)),
Rotation=90,
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(1,i.Transparent and 0.85 or 0.7),
}
}),
e("UICorner",{
CornerRadius=UDim.new(0,i.UICorner)
})
})

local q=e("ImageLabel",{
Image="rbxassetid://8992230677",
ImageColor3=Color3.new(0,0,0),
ImageTransparency=1,
Size=UDim2.new(1,120,1,116),
Position=UDim2.new(0,-60,0,-58),
ScaleType="Slice",
SliceCenter=Rect.new(99,99,99,99),
BackgroundTransparency=1,
})

local r=e("ImageButton",{
Image=d.Icon"x"[1],
ImageRectOffset=d.Icon"x"[2].ImageRectPosition,
ImageRectSize=d.Icon"x"[2]._Size,
BackgroundTransparency=1,
Size=UDim2.new(1,-6,1,-6),
ThemeTag={
ImageColor3="Text"
},
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
})

local s=e("ImageButton",{
Image=d.Icon"minus"[1],
ImageRectOffset=d.Icon"minus"[2].ImageRectPosition,
ImageRectSize=d.Icon"minus"[2]._Size,
BackgroundTransparency=1,
Size=UDim2.new(1,-6,1,-6),
ThemeTag={
ImageColor3="Text"
},
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
})

local t

if b.TouchEnabled and not b.KeyboardEnabled then
t=false
elseif b.KeyboardEnabled then
t=true
else
t=nil
end

local u
local v
local w
local x

if not t then
w=e("ImageLabel",{
Image="",
Size=UDim2.new(0,22,0,22),
Position=UDim2.new(0.5,0,0.5,0),
LayoutOrder=-1,
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Name="Icon"
})

OpenButtonTitle=e("TextLabel",{
Text=i.Title,
TextSize=17,
FontFace=Font.new(d.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
AutomaticSize="XY",
})

u=e("Frame",{
Size=UDim2.new(0,0,0,0),
Position=UDim2.new(0.5,0,0,28),
AnchorPoint=Vector2.new(0.5,0.5),
Parent=h.Parent,
BackgroundTransparency=1,
Active=true,
Visible=false,
})
v=e("TextButton",{
Size=UDim2.new(0,0,0,44),
AutomaticSize="XY",
Parent=u,
Active=false,
BackgroundColor3=Color3.new(0,0,0),
BackgroundTransparency=.3,
ZIndex=99,
},{
e("UIScale",{
Scale=1.05,
}),
e("UICorner",{
CornerRadius=UDim.new(1,0)
}),
e("UIStroke",{
Thickness=1,
ApplyStrokeMode="Border",
Color=Color3.new(1,1,1),
Transparency=0,
},{
e("UIGradient",{
Color=ColorSequence.new(Color3.fromHex"40c9ff",Color3.fromHex"e81cff")
})
}),
e("ImageLabel",{
Image=d.Icon"grab"[1],
ImageRectOffset=d.Icon"grab"[2].ImageRectPosition,
ImageRectSize=d.Icon"grab"[2]._Size,
Size=UDim2.new(0,20,0,20),
BackgroundTransparency=1,
Position=UDim2.new(0,0,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
}),
e("Frame",{
Size=UDim2.new(0,1,1,-16),
Position=UDim2.new(0,36,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
BackgroundColor3=Color3.new(1,1,1),
BackgroundTransparency=.86,
}),
e("TextButton",{
AutomaticSize="XY",
Active=true,
BackgroundTransparency=1,
Size=UDim2.new(0,0,1,0),
Position=UDim2.new(0,53,0,0)
},{
w,
e("UIListLayout",{
Padding=UDim.new(0,i.UIPadding),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
OpenButtonTitle,
}),
e("UIPadding",{
PaddingTop=UDim.new(0,0),
PaddingLeft=UDim.new(0,16),
PaddingRight=UDim.new(0,16),
PaddingBottom=UDim.new(0,0),
})
})
local y=v.UIStroke.UIGradient

x=e("ImageLabel",{
Image="rbxassetid://93831937596979",
ScaleType="Slice",
SliceCenter=Rect.new(375,375,375,375),
BackgroundTransparency=1,
Size=UDim2.new(1,21,1,21),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ImageTransparency=.5,
Parent=u,
},{
e("UIGradient",{
Color=ColorSequence.new(Color3.fromHex"40c9ff",Color3.fromHex"e81cff")
})
})

c.RenderStepped:Connect(function(z)
if y then
y.Rotation=(y.Rotation+1)%360
end
if x and x.UIGradient then
x.UIGradient.Rotation=(x.UIGradient.Rotation+1)%360
end
end)

v:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
u.Size=UDim2.new(
0,v.AbsoluteSize.X,
0,v.AbsoluteSize.Y
)
end)

v.TextButton.MouseEnter:Connect(function()
f(v.UIScale,.1,{Scale=.95}):Play()
end)
v.TextButton.MouseLeave:Connect(function()
f(v.UIScale,.1,{Scale=1.05}):Play()
end)
end

local y
local z
if i.HasOutline then
y=e("Frame",{
Name="Outline",
Size=UDim2.new(1,i.UIPadding*2,0,1),
Position=UDim2.new(0.5,0,1,i.UIPadding),
BackgroundTransparency=.8,
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
BackgroundColor3="Outline"
},
})
z=e("Frame",{
Name="Outline",
Size=UDim2.new(0,1,1,-i.UIPadding*4),
Position=UDim2.new(0,i.SideBarWidth,0,i.UIPadding*4),
BackgroundTransparency=.8,
AnchorPoint=Vector2.new(0.5,0),
ThemeTag={
BackgroundColor3="Outline"
},
})
end

i.UIElements.Main=e("Frame",{
Size=UDim2.new(
0,math.clamp(i.Size.X.Offset,400,700),
0,math.clamp(i.Size.Y.Offset,350,520)),
Position=i.Position,
BackgroundTransparency=1,
Parent=h.Parent,
AnchorPoint=Vector2.new(0.5,0.5),
Active=true,
},{
q,
p,
e("Frame",{
BackgroundColor3=Color3.fromHex(h.Theme.Accent),
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,0),
Name="Background",
ThemeTag={
BackgroundColor3="Accent"
},
ZIndex=2,
},{
e("UICorner",{
CornerRadius=UDim.new(0,i.UICorner)
})
}),
k,
j,
n,
o,
e("UIScale",{
Scale=0.9,
}),
e("CanvasGroup",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Name="Main",
GroupTransparency=1,
ZIndex=97,
},{
e("UICorner",{
CornerRadius=UDim.new(0,i.UICorner)
}),
i.UIElements.SideBar,
i.UIElements.MainBar,
z,
e("Frame",{
Size=UDim2.new(1,0,0,i.UIPadding*4),
BackgroundTransparency=1,
Name="Topbar"
},{
y,






e("Frame",{
AutomaticSize="X",
Size=UDim2.new(0,0,1,0),
BackgroundTransparency=1,
Name="Left"
},{
e("UIListLayout",{
Padding=UDim.new(0,10),
SortOrder="LayoutOrder",
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
e("Frame",{
AutomaticSize="XY",
BackgroundTransparency=1,
Name="Title",
LayoutOrder=2,
},{
e("UIListLayout",{
Padding=UDim.new(0,0),
SortOrder="LayoutOrder",
FillDirection="Vertical",
VerticalAlignment="Top",
}),
e("TextLabel",{
Text=i.Title,
FontFace=Font.new(d.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
AutomaticSize="XY",
TextXAlignment="Left",
TextSize=16,
TextColor3=Color3.fromHex(h.Theme.Text),
ThemeTag={
TextColor3="Text"
}
}),
}),
e("UIPadding",{
PaddingLeft=UDim.new(0,4)
})
}),
e("Frame",{
AutomaticSize="XY",
BackgroundTransparency=1,
Position=UDim2.new(1,0,0.5,0),
AnchorPoint=Vector2.new(1,0.5)
},{
e("UIListLayout",{
Padding=UDim.new(0,12),
FillDirection="Horizontal",
SortOrder="LayoutOrder",
}),
e("TextButton",{
Size=UDim2.new(0,24,0,24),
BackgroundTransparency=1,
LayoutOrder=1,
},{
r,
}),
e("TextButton",{
Size=UDim2.new(0,24,0,24),
BackgroundTransparency=1,

},{
s,
})
}),
e("UIPadding",{
PaddingTop=UDim.new(0,i.UIPadding),
PaddingLeft=UDim.new(0,i.UIPadding),
PaddingRight=UDim.new(0,i.UIPadding),
PaddingBottom=UDim.new(0,i.UIPadding),
})
})
})
})

local A=false

d.Drag(i.UIElements.Main)



if not t then
d.Drag(u,function(B)A=B end)
end

if i.Author then
e("TextLabel",{
Text="by "..i.Author,
FontFace=Font.new(d.Font,Enum.FontWeight.Medium),
BackgroundTransparency=1,
TextTransparency=0.4,
AutomaticSize="XY",
Parent=i.UIElements.Main.Main.Topbar.Left.Title,
TextXAlignment="Left",
TextSize=14,
LayoutOrder=2,
TextColor3=Color3.fromHex(h.Theme.Text),
ThemeTag={
TextColor3="Text"
}
})
end

task.spawn(function()
if i.Icon then
local B=e("ImageLabel",{
Parent=i.UIElements.Main.Main.Topbar.Left,
Size=UDim2.new(0,24,0,24),
BackgroundTransparency=1,
LayoutOrder=1,
ThemeTag={
ImageColor3="Text"
}
})
if d.Icon(i.Icon)[2]then
B.Image=d.Icon(i.Icon)[1]
B.ImageRectOffset=d.Icon(i.Icon)[2].ImageRectPosition
B.ImageRectSize=d.Icon(i.Icon)[2]._Size
w.Image=d.Icon(i.Icon)[1]
w.ImageRectOffset=d.Icon(i.Icon)[2].ImageRectPosition
w.ImageRectSize=d.Icon(i.Icon)[2]._Size
end
if string.find(i.Icon,"http")then
if not isfile("WindUI"..i.Folder.."/Assets/Icon.png")then
local C=request{
Url=i.Icon,
Method="GET",
}.Body
writefile("WindUI"..i.Folder.."/Assets/Icon.png",C)
end
B.Image=getcustomasset("WindUI"..i.Folder.."/Assets/Icon.png")
w.Image=getcustomasset("WindUI"..i.Folder.."/Assets/Icon.png")
elseif string.find(i.Icon,"rbxassetid")then
B.Image=i.Icon
w.Image=i.Icon
end
else
w.Visible=false
end
end)

function i.Open(B)
i.Closed=false

f(i.UIElements.Main.Background,0.25,{BackgroundTransparency=h.Transparent and 0.15 or 0},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(i.UIElements.Main.Main,0.25,{GroupTransparency=0},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(i.UIElements.Main.UIScale,0.25,{Scale=1},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(p,0.25,{BackgroundTransparency=0},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(q,0.25,{ImageTransparency=.7},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(k,0.25,{Transparency=.8},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()

i.CanDropdown=true

i.UIElements.Main.Visible=true
end
function i.Close(B)
local C={}

i.CanDropdown=false
i.Closed=true

f(i.UIElements.Main.Background,0.25,{BackgroundTransparency=1},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(i.UIElements.Main.Main,0.25,{GroupTransparency=1},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(i.UIElements.Main.UIScale,0.25,{Scale=.9},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(p,0.25,{BackgroundTransparency=1},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(q,0.25,{ImageTransparency=1},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()
f(k,0.25,{Transparency=1},Enum.EasingStyle.Exponential,Enum.EasingDirection.Out):Play()

task.spawn(function()
task.wait(0.25)
i.UIElements.Main.Visible=false
end)

function C.Destroy(D)
task.wait(0.25)
h.Parent.Parent:Destroy()
end

return C
end

s.MouseButton1Click:Connect(function()
i:Close()
task.spawn(function()
task.wait(.3)
if not t then
u.Visible=true
end
end)

local B=t and"Press "..i.Name.." to open the Window"or"Click the Button to open the Window"

if not g then
g=not g
h.WindUI:Notify{
Title="Minimize",
Content="You've closed the Window. "..B,
Duration=5,
}
end
end)
if not t then
v.TextButton.MouseButton1Click:Connect(function()
i:Open()
u.Visible=false
end)
end

b.InputBegan:Connect(function(B,C)
if C then return end

if B.KeyCode==i.ToggleKey then
if i.Closed then
i:Open()
else
i:Close()
end
end
end)

task.spawn(function()

i:Open()
end)

function i.EditOpenButton(B,C)
local D={
Title=C.Title or i.Title,
Icon=C.Icon or i.Icon,
Color=C.Color
or ColorSequence.new(Color3.fromHex"40c9ff",Color3.fromHex"e81cff"),
}

OpenButtonTitle.Text=D.Title

w.Image=d.Icon(D.Icon)[1]
w.ImageRectOffset=d.Icon(D.Icon)[2].ImageRectPosition
w.ImageRectSize=d.Icon(D.Icon)[2]._Size

v.UIStroke.UIGradient.Color=D.Color
x.UIGradient.Color=D.Color
end

local B=a.load'r'.Init(i)
function i.Tab(C,D)
c.Heartbeat:Wait()
return B.New{Title=D.Title,Icon=D.Icon,Parent=i.UIElements.SideBar}
end

function i.SelectTab(C,D)
B:SelectTab(D)
end

function i.Divider(C)
local D=e("Frame",{
Size=UDim2.new(1,0,0,1),
Position=UDim2.new(0.5,0,0,0),
AnchorPoint=Vector2.new(0.5,0),
BackgroundTransparency=.8,
ThemeTag={
BackgroundColor3="Text"
}
})
e("Frame",{
Parent=i.UIElements.SideBar,
AutomaticSize="Y",
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,
},{
D
})
end

local C=a.load'o'.Init(i)
function i.Dialog(D,E)
local F={
Title=E.Title or"Dialog",
Content=E.Content,
Buttons=E.Buttons or{},
}
local G=C.Create()


G.UIElements.UIListLayout=e("UIListLayout",{
Padding=UDim.new(0,18.4),
FillDirection="Vertical",
HorizontalAlignment="Center",
Parent=G.UIElements.Main
})

e("UISizeConstraint",{
MinSize=Vector2.new(50,20),
MaxSize=Vector2.new(620,math.huge),
Parent=G.UIElements.Main,
})

G.UIElements.Title=e("TextLabel",{
Text=F.Title,
TextSize=20,
FontFace=Font.new(d.Font,Enum.FontWeight.SemiBold),
TextXAlignment="Left",
TextWrapped=true,
RichText=true,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
ThemeTag={
TextColor3="Text"
},
BackgroundTransparency=1,
Parent=G.UIElements.Main
})
if F.Content then
e("TextLabel",{
Text=F.Content,
TextSize=16,
TextTransparency=.4,
TextWrapped=true,
RichText=true,
FontFace=Font.new(d.Font,Enum.FontWeight.Medium),
TextXAlignment="Left",
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
LayoutOrder=2,
ThemeTag={
TextColor3="Text"
},
BackgroundTransparency=1,
Parent=G.UIElements.Main
})
end

e("Frame",{
Name="Line",
Size=UDim2.new(1,G.UIPadding*2,0,1),
Parent=G.UIElements.Main,
LayoutOrder=3,
BackgroundTransparency=.8,
ThemeTag={
BackgroundColor3="Text",
}
})

local H=e("Frame",{
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Parent=G.UIElements.Main,
LayoutOrder=4,
},{
e("UIListLayout",{
Padding=UDim.new(0,10),
FillDirection="Horizontal",
HorizontalAlignment="Center",
}),
})

for I,J in next,F.Buttons do
local K=e("TextButton",{
Text=J.Title or"Button",
TextSize=14,
FontFace=Font.new(d.Font,Enum.FontWeight.Medium),
ThemeTag={
TextColor3="Text",
BackgroundColor3="Text",
},
BackgroundTransparency=.93,
Parent=H,
Size=UDim2.new(1/#F.Buttons,-(((#F.Buttons-1)*10)/#F.Buttons),0,0),
AutomaticSize="Y",
},{
e("UICorner",{
CornerRadius=UDim.new(0,G.UICorner-7),
}),
e("UIPadding",{
PaddingTop=UDim.new(0,G.UIPadding/1.85),
PaddingLeft=UDim.new(0,G.UIPadding/1.85),
PaddingRight=UDim.new(0,G.UIPadding/1.85),
PaddingBottom=UDim.new(0,G.UIPadding/1.85),
}),
e("Frame",{
Size=UDim2.new(1,(G.UIPadding/1.85)*2,1,(G.UIPadding/1.85)*2),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
BackgroundColor3="Text"
},
BackgroundTransparency=1,
},{
e("UICorner",{
CornerRadius=UDim.new(0,G.UICorner-7),
}),
})
})

K.MouseEnter:Connect(function()
f(K.Frame,0.1,{BackgroundTransparency=.9}):Play()
end)
K.MouseLeave:Connect(function()
f(K.Frame,0.1,{BackgroundTransparency=1}):Play()
end)
K.MouseButton1Click:Connect(function()
G:Close()
task.spawn(function()
pcall(J.Callback)
end)
end)
end



return G
end

local D=i:Dialog{
Title="Warning",
Content="Do you want to close this window?",
Buttons={
{
Title="No",
Callback=function()end
},
{
Title="Yes",
Callback=function()i:Close():Destroy()end
}
}
}
r.MouseButton1Click:Connect(function()
D:Open()
end)

local function startResizing(E)
isResizing=true
o.Active=true
initialSize=i.UIElements.Main.Size
initialInputPosition=E.Position
f(o,0.2,{BackgroundTransparency=.65}):Play()
f(o.ImageLabel,0.2,{ImageTransparency=0}):Play()

E.Changed:Connect(function()
if E.UserInputState==Enum.UserInputState.End then
isResizing=false
o.Active=false
f(o,0.2,{BackgroundTransparency=1}):Play()
f(o.ImageLabel,0.2,{ImageTransparency=1}):Play()
end
end)
end

n.InputBegan:Connect(function(E)
if E.UserInputType==Enum.UserInputType.MouseButton1 or E.UserInputType==Enum.UserInputType.Touch then
startResizing(E)
end
end)

b.InputChanged:Connect(function(E)
if isResizing then
if E.UserInputType==Enum.UserInputType.MouseMovement or E.UserInputType==Enum.UserInputType.Touch then
local F=E.Position-initialInputPosition
local G=UDim2.new(0,initialSize.X.Offset+F.X*2,0,initialSize.Y.Offset+F.Y*2)

f(i.UIElements.Main,0.06,{
Size=UDim2.new(
0,math.clamp(G.X.Offset,400,700),
0,math.clamp(G.Y.Offset,350,520)
)}):Play()
end
end
end)

return i
end end function a.t()
local b={
Window=nil,
Theme=nil,
Themes=nil,
Transparent=false
}
local c=game:GetService"RunService"

local d=a.load'd'
local e=a.load'f'
local f=e.New
local g=e.Tween

b.Themes=d

local h=protectgui or(syn and syn.protect_gui)or function()end


b.ScreenGui=f("ScreenGui",{
Name="WindUI",
Parent=c:IsStudio()and LocalPlayer.PlayerGui or game:GetService"CoreGui",
IgnoreGuiInset=true,
},{
f("Folder",{
Name="Window"
}),
f("Folder",{
Name="Notifications"
}),
f("Folder",{
Name="Dropdowns"
}),
f("Folder",{
Name="KeySystem"
})
})
h(b.ScreenGui)


local i=a.load'g'
local j=i.Init(b.ScreenGui.Notifications)

function b.Notify(k,n)
return i.New{
Title=n.Title,
Content=n.Content,
Duration=n.Duration,
CanClose=n.CanClose,
Callback=n.Callback,
Window=b.Window,
Holder=j,
}
end





function b.CreateWindow(k,n)
local o=a.load's'

if b.Window then
warn"You cannot create more than one window"
return
end

local p=true

local q=d[n.Theme or"Dark"]

b.Theme=q

e.SetTheme(q)

function KeySystem()
p=false
local r=a.load'o'.Init(b.ScreenGui.KeySystem)
local s=r.Create(true)

local t=f("ImageLabel",{
Image="rbxassetid://8992230677",
ImageColor3=Color3.new(0,0,0),
ImageTransparency=.7,
Size=UDim2.new(0,120,0,116),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ScaleType="Slice",
SliceCenter=Rect.new(99,99,99,99),
BackgroundTransparency=1,
ZIndex=-1,
Parent=s.UIElements.Main.Parent
})

s.UIElements.Main:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
t.Size=UDim2.new(0,s.UIElements.Main.AbsoluteSize.X+120,0,s.UIElements.Main.AbsoluteSize.Y+116)
end)

local u=f("ImageButton",{
Size=UDim2.new(0,22,0,22),
Image=e.Icon"x"[1],
ImageRectOffset=e.Icon"x"[2].ImageRectPosition,
ImageRectSize=e.Icon"x"[2]._Size,
BackgroundTransparency=1,
AnchorPoint=Vector2.new(1,0),
Position=UDim2.new(1,0,0,0),
Parent=s.UIElements.Main
})

local v=f("Frame",{
Size=UDim2.new(0,0,0,0),
AutomaticSize="XY",
BackgroundTransparency=1,
Parent=s.UIElements.Main
})

f("UIListLayout",{
Padding=UDim.new(0,14.4),
FillDirection="Vertical",
Parent=v
})

f("UISizeConstraint",{
MinSize=Vector2.new(50,20),
MaxSize=Vector2.new(620,math.huge),
Parent=v,
})


local w=f("TextLabel",{
Text="Key System",
TextSize=20,
FontFace=Font.new(e.Font,Enum.FontWeight.SemiBold),
TextXAlignment="Left",
TextWrapped=false,
Size=UDim2.new(0,0,0,0),
AutomaticSize="XY",
ThemeTag={
TextColor3="Text"
},
BackgroundTransparency=1,
})

local x=f("UIListLayout",{
Padding=UDim.new(0,8),
FillDirection="Horizontal",
VerticalAlignment="Bottom",
})

local y=f("TextLabel",{
Text=n.Title or"UI Library",
TextSize=16,
FontFace=Font.new(e.Font,Enum.FontWeight.Medium),
TextXAlignment="Left",
TextWrapped=false,
Size=UDim2.new(0,0,0,0),
AutomaticSize="XY",
TextTransparency=.4,
ThemeTag={
TextColor3="Text"
},
BackgroundTransparency=1,
})

f("Frame",{
Parent=v,
AutomaticSize="XY",
BackgroundTransparency=1,
},{
w,
y,
x
})

if n.KeySystem.Note then
f("TextLabel",{
Text="Note:\n"..n.KeySystem.Note,
TextSize=15,
RichText=true,
LayoutOrder=3,
TextTransparency=.4,
TextWrapped=true,
FontFace=Font.new(e.Font,Enum.FontWeight.Medium),
TextXAlignment="Left",
Size=UDim2.new(0,320,0,0),
AutomaticSize="Y",
LayoutOrder=2,
TextYAlignment="Top",
ThemeTag={
TextColor3="Text"
},
BackgroundTransparency=1,
Parent=v
})
end

local z=f("Frame",{
Size=UDim2.new(0,0,0,35),
AutomaticSize="X",
LayoutOrder=1,
BackgroundTransparency=1,
Parent=v
},{
f("UIListLayout",{
Padding=UDim.new(0,10),
FillDirection="Horizontal",
VerticalAlignment="Center",
}),
f("Frame",{
BackgroundTransparency=.95,
Size=UDim2.new(0,180,0,35),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,0,0.5,0),
ThemeTag={
BackgroundColor3="Text",
},
ZIndex=2
},{
f("TextBox",{
MultiLine=false,
Size=UDim2.new(1,0,0,0),
AutomaticSize="Y",
BackgroundTransparency=1,
Position=UDim2.new(0,0,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
ClearTextOnFocus=false,
Text="",
TextSize=15,
ClipsDescendants=true,
TextXAlignment="Left",
FontFace=Font.new(e.Font),
PlaceholderText="Enter Key...",
ThemeTag={
TextColor3="Text",
}
}),
f("UICorner",{
CornerRadius=UDim.new(0,8)
}),
f("UIStroke",{
ThemeTag={
Color="Text",
},
Transparency=.93,
ApplyStrokeMode="Border",
Thickness=1,
}),
f("UIPadding",{
PaddingTop=UDim.new(0,12),
PaddingLeft=UDim.new(0,12),
PaddingRight=UDim.new(0,12),
PaddingBottom=UDim.new(0,12),
})
}),
})

local A=f("TextButton",{
Text="Submit",
TextSize=15,
FontFace=Font.new(e.Font,Enum.FontWeight.Medium),
ThemeTag={
TextColor3="Text",
BackgroundColor3="Text",
},
BackgroundTransparency=.9,
Parent=z,
Size=UDim2.new(0,0,0,35),
AutomaticSize="X",
},{
f("UICorner",{
CornerRadius=UDim.new(0,8),
}),
f("UIPadding",{
PaddingTop=UDim.new(0,14),
PaddingLeft=UDim.new(0,14),
PaddingRight=UDim.new(0,14),
PaddingBottom=UDim.new(0,14),
}),
f("Frame",{
Size=UDim2.new(1,28,1,28),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
BackgroundColor3="Text"
},
BackgroundTransparency=1,
},{
f("UICorner",{
CornerRadius=UDim.new(0,8),
}),
})
})
local B
if n.KeySystem.URL then
B=f("TextButton",{
Text="Get Key",
TextSize=15,
FontFace=Font.new(e.Font,Enum.FontWeight.Medium),
ThemeTag={
TextColor3="Text",
BackgroundColor3="Text",
},
BackgroundTransparency=.9,
Parent=z,
Size=UDim2.new(0,0,0,35),
AutomaticSize="X",
},{
f("UICorner",{
CornerRadius=UDim.new(0,8),
}),
f("Frame",{
Size=UDim2.new(1,28,1,28),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
BackgroundColor3="Text"
},
BackgroundTransparency=1,
},{
f("UICorner",{
CornerRadius=UDim.new(0,8),
}),
}),
f("UIPadding",{
PaddingTop=UDim.new(0,14),
PaddingLeft=UDim.new(0,14),
PaddingRight=UDim.new(0,14),
PaddingBottom=UDim.new(0,14),
}),
})
end
if n.KeySystem.SaveKey and n.Folder then
f("TextLabel",{
Text="Your key will be saved in Workspace/"..n.Folder.."/"..game.Players.LocalPlayer.Name..".key",
TextSize=13,
FontFace=Font.new(e.Font,Enum.FontWeight.SemiBold),
TextXAlignment="Left",
TextWrapped=false,
LayoutOrder=99,
Parent=v,
Size=UDim2.new(0,0,0,0),
AutomaticSize="XY",
TextTransparency=.4,
ThemeTag={
TextColor3="Text"
},
BackgroundTransparency=1,
})
end



A.MouseEnter:Connect(function()
g(A.Frame,0.1,{BackgroundTransparency=.9}):Play()
end)
A.MouseLeave:Connect(function()
g(A.Frame,0.1,{BackgroundTransparency=1}):Play()
end)
A.MouseButton1Click:Connect(function()
local C=z.Frame.TextBox.Text
if C and C==n.KeySystem.Key then
s:Close()()
g(t,.1,{ImageTransparency=1}):Play()
p=true
if n.KeySystem.SaveKey and n.Folder then
writefile(n.Folder.."/"..game.Players.LocalPlayer.Name..".key",tostring(C))
end
task.spawn(function()
task.wait(0.1)
t:Destroy()
end)
end
end)

if n.KeySystem.URL then
B.MouseEnter:Connect(function()
g(B.Frame,0.1,{BackgroundTransparency=.9}):Play()
end)
B.MouseLeave:Connect(function()
g(B.Frame,0.1,{BackgroundTransparency=1}):Play()
end)
B.MouseButton1Click:Connect(function()
setclipboard(n.KeySystem.URL)

B.Text="Copied!"
task.wait(3)
B.Text="Get Key"

end)
end


u.MouseButton1Click:Connect(function()
s:Close()()
g(t,.1,{ImageTransparency=1}):Play()
task.spawn(function()
task.wait(0.1)
t:Destroy()
end)
end)

s:Open()
end

if n.KeySystem then
if n.KeySystem.SaveKey then
if isfile(n.Folder.."/"..game.Players.LocalPlayer.Name..".key")and n.KeySystem.Key==readfile(n.Folder.."/"..game.Players.LocalPlayer.Name..".key")then
p=true
else
KeySystem()
end
else
KeySystem()
end
repeat task.wait()until p
end

local r=o{
Title=n.Title,
Author=n.Author,
Size=n.Size,
Transparent=n.Transparent,
Icon=n.Icon,
Folder=n.Folder,
HasOutline=n.HasOutline,
Theme=q,
WindUI=b,
Parent=b.ScreenGui.Window,
SideBarWidth=n.SideBarWidth
}

b.Transparent=n.Transparent
b.Window=r

function r.AddTheme(s,t)
d[t.Name]=t
return t
end

function r.SetTheme(s,t)
if d[t]then
b.Theme=d[t]
e.SetTheme(d[t])
e.UpdateTheme()

return d[t]
end
return nil
end

function r.GetThemes(s)
return d
end
function r.GetCurrentTheme(s)
return b.Theme.Name
end
function r.GetTransparency(s)
return b.Transparent or false
end
function r.GetWindowSize(s)
return r.UIElements.Main.Size
end


function r.ToggleTransparency(s,t)
b.Transparent=t
r.UIElements.Main.Background.BackgroundTransparency=t and 0.15 or 0
r.UIElements.Main.Gradient.UIGradient.Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(1,t and 0.85 or 0.7),
}
end

return r
end

return b end end
local b=a.load't'

local c=b:CreateWindow{
Title="WindUI Library",
Icon="door-open",
Author=".ftgs",
Folder="CloudHub",
Size=UDim2.fromOffset(580,460),
KeySystem={
Key="1234",
Note="The Key is 1234",
URL="https://github.com/Footagesus/WindUI",
SaveKey=true,
},
Transparent=true,
Theme="Dark",
SideBarWidth=170,
HasOutline=false,
}

c:EditOpenButton{
Title="Open Button",
Icon="door-closed",
Color=ColorSequence.new(
Color3.fromHex"FF0F7B",
Color3.fromHex"F89B29"
)
}





local d=c:Tab{
Title="Main",
Icon="folder",
}

c:SelectTab(1)

c:Tab{
Title="Empty Tab",
Icon="frown",
}

c:Tab{
Title="Tab Without icon",
}

local e=c:Tab{
Title="Notification Tab",
Icon="bell",
}

c:Tab{
Title="Blocked Elements",
Icon="rbxassetid://120011858138977",
}

c:Divider()

local f=c:Tab{
Title="Tab with new Icon",
Icon="book-user",
}

c:Divider()

local g=c:Tab{
Title="Window and File Configuration",
Icon="settings",
}




d:Section{
Title="Big section!",
TextSize=22,
}
d:Section{
Title="Section Left",
TextXAlignment="Left"
}
d:Section{
Title="Section Center",
TextXAlignment="Center"
}
d:Section{
Title="Section Right",
TextXAlignment="Right"
}

d:Section{Title="Paragraphs"}

local h=d:Paragraph{
Title="Paragraph",
Desc="Paragraph Content \nAnd second line",
}
d:Paragraph{
Title="Paragraph without content",
}

h:SetTitle"New Title!"
h:SetDesc"New Description!"


d:Section{Title="Buttons"}

local i=c:Dialog{
Title="Dialog haha",
Content="Dialog Content",
Buttons={
{
Title="Confirm",
Callback=function()
print"confirm"
end
},
{
Title="Cancel",
Callback=function()
print"cancel"
end
},
{
Title="Idk",
Callback=function()
print"idk"
end
}
}
}

d:Button{
Title="Button Main",
Desc="Button Desc",
Callback=function()
i:Open()
end,
}
d:Button{
Title="Button Main Close Window",
Callback=function()
c:Close():Destroy()
end,
}


d:Section{Title="Toggles"}

d:Toggle{
Title="Toggle Main",
Callback=function(j)
print(j)
end,
}
d:Toggle{
Title="Toggle Main",
Desc="Toggle Desc Main",
Value=true,
Callback=function(j)
if j then
print"True State"
else
print"False State"
end
end,
}


d:Section{Title="Sliders"}

d:Slider{
Title="Slider FieldOfView",
Step=1,
Value={
Min=20,
Max=120,
Default=70,
},
Callback=function(j)
game.Workspace.Camera.FieldOfView=j
end
}

d:Slider{
Title="Slider Main FieldOfView",
Desc="Slider Main Desc",
Step=1,
Value={
Min=16,
Max=500,
Default=16,
},
Callback=function(j)
game.Workspace[game.Players.LocalPlayer.Name].Humanoid.WalkSpeed=j
end
}


d:Section{Title="Keybinds"}

local j=false
d:Keybind{
Title="Keybind Toggle UI",
Desc="Keybind Toggle UI Desc",
Value="LeftShift",
CanChange=true,
Callback=function(k)
if not j then
c:Close()
else
c:Open()
end
j=not j
end
}
d:Keybind{
Title="Keybind Toggle UI",
Value="F",
CanChange=true,
Callback=function(k)
print(k)
end
}


d:Section{Title="Inputs"}

d:Input{
Title="Input Notify",
Desc="Input Notify Desc",
Value="Text Hello",
PlaceholderText="Enter your message ahhh",
ClearTextOnFocus=true,
Callback=function(k)
b:Notify{
Title="Input message",
Content="Message: "..k,
Duration=5,
}
end
}
d:Input{
Title="Input Notify 2",
Value="",
PlaceholderText="Enter your message ahhh",
ClearTextOnFocus=false,
Callback=function(k)
b:Notify{
Title="Input message 2",
Content="Message: "..k,
Duration=5,
}
end
}


d:Section{Title="Dropdowns"}

local k=d:Dropdown{
Title="Dropdown",
Desc="Dropdown Desc",
Multi=false,
Value="Tab 1",
AllowNone=true,
Values={
"Tab 1","Tab 2","Tab 3","Tab 4","Tab 5","Tab 6","Tab 7","Tab 8","Tab 9","Tab 10",
"Tab 11","Tab 12","Tab 13","Tab 14","Tab 15","Tab 16","Tab 17","Tab 18","Tab 19","Tab 20"
},
Callback=function(k)
b:Notify{
Title="Dropdown Select",
Content="Selected: "..k,
Duration=2,
}
end
}

d:Button{
Title="Refresh Dropdown ↑",
Callback=function()
local n={}

for o=1,100 do
table.insert(n,"Item blablablabla "..o)
end

k:Refresh(n)
end
}

d:Dropdown{
Title="Dropdown 2",
Desc="Dropdown Desc 2",
Multi=true,
Value={
"Tab 1","Tab 5"
},
Values={
"Tab 1","Tab 2","Tab 3","Tab 4","Tab 5",
},
Callback=function(n)
b:Notify{
Title="Dropdown Select 2",
Content="Selected: "..game:GetService"HttpService":JSONEncode(n),
Duration=2,
}
end
}

d:Section{Title="Colorpickers"}

d:Colorpicker{
Title="Colorpicker",
Default=Color3.fromRGB(255,129,0),
Callback=function(n)
b:Notify{
Title="Colorpicker Callback",
Content="Color: \nR: "..math.floor(n.R*255).."\nG: "..math.floor(n.G*255).."\nB: "..math.floor(n.B*255),
Duration=6,
}
end
}

d:Colorpicker{
Title="Colorpicker",
Desc="Colorpicker Desc Transparency",
Transparency=0.5,
Default=Color3.fromRGB(96,205,255),
Callback=function(n,o)
b:Notify{
Title="Colorpicker Callback 2",
Content="Color: \nR: "..math.floor(n.R*255).."\nG: "..math.floor(n.G*255).."\nB: "..math.floor(n.B*255).."\nTransparency: "..o,
Duration=6,
}
end
}




e:Button{
Title="Notify",
Desc="Notify Button Desc",
Callback=function()
b:Notify{
Title="Notification",
Content="Content",
Duration=5,
}
end,
}
e:Button{
Title="Long Notify",
Desc="Long Notify Button Desc",
Callback=function()
b:Notify{
Title="Notification LONG AND BIG",
Content="Content LON GGGGG EEE RRR AND BIGGER ",
Duration=200,
}
end,
}
e:Button{
Title="Notification with buttons",
Desc="Notify with buttons and Callback",
Callback=function()
local n
n=b:Notify{
Title="Question",
Content="Would you like to die?",
CanClose=false,

Callback=function(o)
if o=="Confirm"then
game.Players.LocalPlayer.Character.Humanoid.Health=0
else
print"Canceled.."
end

n:Close()
end
}
end,
}








c:AddTheme{
Name="Halloween",

Accent="#331400",
Outline="#400000",

Text="#EAEAEA",
PlaceholderText="#AAAAAA"
}





c:SetTheme"Dark"



local n=game:GetService"HttpService"

local o="WindUI"
makefolder(o)

local function SaveFile(p,q)
local r=o.."/"..p..".json"
local s=n:JSONEncode(q)
writefile(r,s)
end

local function LoadFile(p)
local q=o.."/"..p..".json"
if isfile(q)then
local r=readfile(q)
return n:JSONDecode(r)
end
end

local function ListFiles()
local p={}
for q,r in ipairs(listfiles(o))do
local s=r:match"([^/]+)%.json$"
if s then
table.insert(p,s)
end
end
return p
end

g:Section{Title="Window"}

local p={}
for q,r in pairs(c:GetThemes())do
table.insert(p,q)
end

local s=g:Dropdown{
Title="Select Theme",
Multi=false,
AllowNone=false,
Value=nil,
Values=p,
Callback=function(s)
c:SetTheme(s)
end
}
s:Select(c:GetCurrentTheme())

local t=g:Toggle{
Title="Toggle Window Transparency",
Callback=function(t)
c:ToggleTransparency(t)
end,
Value=c:GetTransparency()
}

g:Section{Title="Save"}

local u=""
g:Input{
Title="Write File Name",
PlaceholderText="Enter file name",
Callback=function(v)
u=v
end
}

g:Button{
Title="Save File",
Callback=function()
if u~=""then
SaveFile(u,{Transparent=c:GetTransparency(),Theme=c:GetCurrentTheme()})
end
end
}

g:Section{Title="Load"}

local v
local w=ListFiles()

v=g:Dropdown{
Title="Select File",
Multi=false,
AllowNone=true,
Values=w,
Callback=function(x)
u=x
end
}

g:Button{
Title="Load File",
Callback=function()
if u~=""then
local x=LoadFile(u)
if x then
b:Notify{
Title="File Loaded",
Content="Loaded data: "..n:JSONEncode(x),
Duration=5,
}
if x.Transparent then
c:ToggleTransparency(x.Transparent)
t:SetValue(x.Transparent)
end
if x.Theme then c:SetTheme(x.Theme)end
end
end
end
}

g:Button{
Title="Overwrite File",
Callback=function()
if u~=""then
SaveFile(u,{Transparent=c:GetTransparency(),Theme=c:GetCurrentTheme()})
end
end
}

g:Button{
Title="Refresh List",
Callback=function()
v:Refresh(ListFiles())
end
}











f:Button{
Title="Blocked Button",
Desc="Blocked Button Desc",
Locked=true,
Callback=function()
b:Notify{
Title="Hui",
Duration=2,
}
end
}

local x=f:Toggle{
Title="Blocked Toggle",
Callback=function(x)
print(x)
end,
}
x:Lock()

f:Slider{
Title="Blocked Slider",
Locked=true,
Step=1,
Value={
Min=20,
Max=120,
Default=70,
},
Callback=function(y)
game.Workspace.Camera.FieldOfView=y
end
}

f:Keybind{
Title="Blocked Keybind",
Value="F",
Locked=true,
CanChange=true,
Callback=function(y)
print(y)
end
}

f:Input{
Title="Blocked Input",
Value="",
Locked=true,
PlaceholderText="Enter your message...",
ClearTextOnFocus=false,
Callback=function(y)
b:Notify{
Title="Input message 2",
Content="Message: "..y,
Duration=5,
}
end
}

d:Dropdown{
Title="Blocked Dropdown",
Multi=false,
Value="Tab 1",
Locked=true,
AllowNone=true,
Values={
"Tab 1","Tab 2","Tab 3","Tab 4","Tab 5","Tab 6","Tab 7","Tab 8","Tab 9","Tab 10",
"Tab 11","Tab 12","Tab 13","Tab 14","Tab 15","Tab 16","Tab 17","Tab 18","Tab 19","Tab 20"
},
Callback=function(y)
b:Notify{
Title="Dropdown Select",
Content="Selected: "..y,
Duration=2,
}
end
}

f:Section{Title="Unlocked"}

local y=f:Colorpicker{
Title="Blocked Colorpicker",
Locked=true,
Default=Color3.fromRGB(255,129,0),
Callback=function(y)
b:Notify{
Title="Colorpicker Callback",
Content="Color: \nR: "..math.floor(y.R*255).."\nG: "..math.floor(y.G*255).."\nB: "..math.floor(y.B*255),
Duration=6,
}
end
}


y:Unlock()