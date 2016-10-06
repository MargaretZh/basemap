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
  marker-file: url(icons/plane_stripes.svg);
  marker-width: 80;
  marker-fill: darken(dimgray,15%);
    
  }
   [objectname!='Пулково'] {
  marker-file: url(icons/jet.svg);
  marker-width: 60;
  marker-fill: darken(dimgray,15%);
  marker-allow-overlap: true;
  }
}
#runway_strip_label [zoom>=10] {
  text-face-name: @sans_italic;
  text-name: '[objectname]';
  text-size: 30;
  text-fill: darken(#e53935,10%);
  text-placement: point;
  text-halo-radius: 1.5;
  text-character-spacing: 0.7;
  text-halo-fill:#cccccc;
  text-horizontal-alignment: left;
  text-dx: -40;
  text-allow-overlap:true;

}
#unioned_restrictions [zoom=9] {
    ::outline {
      line-color: lighten(#e53935,20%);
      line-width: 1;
      }
  /*line-offset: -3;
  line-color: #e53935;
  line-opacity: 0.2;
  line-width: 7;
  line-join: round;
  line-cap: round;*/
  }
#unioned_restrictions [zoom>=10] {
    ::outline {
      line-color: lighten(#e53935,20%);
      line-width: 1;
      }
  /*line-offset: -3;
  line-color: #e53935;
  line-opacity: 0.1;
  line-width: 7;
  line-join: round;
  line-cap: round;*/
  }


#airports {
  marker-file: url(icons/other_airports.svg);
  marker-width: 60;
  marker-allow-overlap: false;
  }
  