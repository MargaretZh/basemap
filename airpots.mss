/*---AIRPORTS----*/
#air_restrictions [zoom>=10] {
  polygon-fill: #e53935;
  opacity: 0.2;
} 

#runway_strip [zoom>=10] {
  polygon-fill: lighten(#757575,30%);
}
#air_strips [zoom>=10] {
  polygon-fill: #e53935;
  opacity: 0.4;
}
#runway_strip_icon [zoom>=9] {
  [objectname='Пулково'] {
  marker-file: url(icons/plane.svg);
  marker-width: 18;
  marker-fill: darken(dimgray,15%);
  marker-allow-overlap: true;
  }
   [objectname!='Пулково'] {
  marker-file: url(icons/jet.svg);
  marker-width: 13;
  marker-fill: darken(dimgray,15%);
  marker-allow-overlap: true;
  }
}
#runway_strip_label [zoom>=10]{
  text-face-name: @sans_italic;
  text-name: '[objectname]';
  text-size: 12;
  text-fill: darken(#e53935,10%);
  text-placement: point;
  text-halo-radius: 1.5;
  text-character-spacing: 0.7;
  text-halo-fill:#cccccc;
  text-horizontal-alignment: left;
  text-dx: -10;
  text-allow-overlap:true;
}
  