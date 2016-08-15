@sans_bold: "PT Sans Bold";
@sans_book: "PT Sans Regular";
@sans_italic: "PT Sans Italic";
@halo: beige;
@oopt: seagreen;
@boudaries-pol:beige;
@boundaries-line:brown;
@highway: black;
@highway_outline: goldenrod;
@stlmnts:dimgray;
@water: #C1D6DC;
@water_label: #4593AB;

Map {
  background-color:white;
  font-directory: url(./fonts/);
  srs:'+proj=tmerc +lat_0=0 +lon_0=27 +k=1 +x_0=5500000 +y_0=0 +ellps=krass +towgs84=24.47,-130.89,-81.56,-0,-0,0.13,-0.22 +units=m +no_defs';
}

/*LANDUSE*/
#landuse [zoom>=11] {
  [landuse='residential'],
  [landuse='allotments'],
  [landuse='industrial'] {
    polygon-fill: dimgray;
    opacity: 0.1;
  }
}

/*BUILDINGS LABELS*/
#buildings_labels [zoom>=17] { 
  text-face-name: @sans_book;
  text-name: '[a_hsnmbr]';
  text-size: 9;
  text-halo-radius: 1.5;
  text-halo-fill:@halo;
  text-allow-overlap: true;
} 
/*OOPT*/
#nature_reserves [square<400000][zoom=9] {
  marker-fill: @oopt;
  marker-width: 3; 
}
#nature_reserves [square<400000][zoom>9][zoom<14] {
  marker-fill: @oopt;
  marker-width: 7;
  marker-file: url(icons/marker-15.svg);
}
#nature_reserves [square<400000][zoom>=15] {
  marker-fill: @oopt;
  marker-width: 10;
  marker-file: url(icons/marker-15.svg);
}
#nature_reserves [square>=400000][zoom>=9] {
  [state='active']{
    ::outline {
      line-color: @oopt;
      line-width: 0.7;
      }
  line-offset: -3;
  line-color: @oopt;
  line-opacity: 0.3;
  line-width: 7;
  line-join: round;
  line-cap: round;
  }
  [state='planning'] {
    ::outline {
      line-color:@oopt;
      line-dasharray: 5,8;
      line-width: 0.7;
      }
  line-offset: -2;
  line-color: @oopt;
  line-opacity: 0.3;
  line-width: 7;
  line-join: round;
  line-cap: round;
  }
}

/*BUILDINGS*/
#buildings [zoom>=15] {
  polygon-fill: dimgray;
  opacity: 0.5;
}  

/*BOUNDARIES*/
#boundaries_pol [zoom>10] {
  polygon-fill: @boudaries-pol;
  opacity: 1;
} 

#coloured_boundaries [zoom<=10] {
  [name='Кингисеппский район'],
  [name='Тихвинский район'],
  [name='Гатчинский район'],
  [name='Кировский район']{
    polygon-fill: #DFFFDA;
    }
  [name='Волосовский район'],
  [name='Лодейнопольский район'],
  [name='Всеволожский район'] {
    polygon-fill: #F0E6F2;
    }
  [name='Лужский район'],
  [name='Киришский район'],
  [name='Выборгский район'],
  [name='Бокситогорский район'],
  [name='Ломоносовский район']{
    polygon-fill: #E5D7D3;
    }
  [name='Волховский район'],
  [name='Сланцевский район'],
  [name='Подпорожский район'],
  [name='Приозерский район'],
  [name='Ломоносовский район'],
  [name='Тосненский район'] {
    polygon-fill: @boudaries-pol;
    }
}
#boundaries_line { 
  ::outline {
    line-offset: -2;
    line-color: darksalmon;
    line-opacity: 0.4;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
  line-color: @boundaries-line;
  line-width: 0.2;
  line-join: round;
  line-cap: round;
} 
#boundaries_line [zoom>=10] {
  line-color: @boundaries-line;
  line-width: 0.8;
  line-opacity: 0.7;
  line-join: round;
  line-cap: round;
}
#boundaries_inwater {
  line-color: @water_label;
  line-width: 0.3;
  line-dasharray: 5,8; 
} 

/*BOUNDARIES LABLES*/ 
#boundaries_labels [zoom>6][zoom<9] {
  text-face-name: @sans_bold;
  text-name: '[name]';
  text-size: 12;
  text-fill: dimgray;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: false;
  text-wrap-width: 30;
  text-spacing: 20;
}  
   
/*RAILWAYS*/
#railways [zoom<=10][zoom>=8] [service!='siding'] {
  line-color: darkgray;
  line-width: 2.5;
  line-join: round;
  line-cap: round;
    ::outline {
      line-color: white;
      line-width: 1.5;
      line-dasharray: 3;
      line-join: round;
      }
} 

/*SETTLEMENTS LABELS AND MARKERS*/
#settlements [zoom>=9][place='town'] {
  text-face-name: @sans_bold;
  text-name: '[name]';
  text-size: 8;
  text-fill: @stlmnts;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-horizontal-alignment: right;
  text-dx: 5;
  text-transform:uppercase;
  text-line-spacing:1;
  marker-fill: @stlmnts;
  marker-width: 6;
  marker-allow-overlap:true;
  text-min-distance: 20;
} 
#settlements[zoom>=10][place='town'] {
  text-face-name: @sans_bold;
  text-name: '[name]';
  text-size: 12;
  text-fill: @stlmnts;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-horizontal-alignment: right;
  text-dx: 5;
} 
#settlements[zoom=11][place='village'] {
  text-face-name: @sans_book;
  text-name: '[name]';
  text-size: 10;
  text-fill: @stlmnts;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  text-dx: 5;
  text-wrap-width: 35;
  marker-file: url(icons/circle-stroked-15.svg);
  marker-fill: @stlmnts;
  marker-width: 5;
  marker-allow-overlap:true;
}  
#settlements [zoom=12] {
  [place='town'] {
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 14;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-wrap-width: 60;
    }
  [place='village'] {
    text-face-name: @sans_book;
    text-name: '[name]';
    text-size: 12;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-wrap-width: 60;
    marker-file: url(icons/circle-stroked-15.svg);
    marker-fill: @stlmnts;
    marker-width: 5;
    marker-allow-overlap:true;
    }
}  
#settlements [zoom>=13] {  
  [place='hamlet'] {
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 11;
    text-fill: @stlmnts;
    text-allow-overlap: false;
    text-halo-fill:@halo;
    text-wrap-width: 15;
    text-halo-radius: 2;
    } 
  [place='town'] {
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 16;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-wrap-width: 60;
    }
  [place='village'] {
    text-face-name: @sans_book;
    text-name: '[name]';
    text-size: 14;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-wrap-width: 60;
    marker-file: url(icons/circle-stroked-15.svg);
    marker-fill: @stlmnts;
    marker-width: 5;
    marker-allow-overlap:true;  
    }
}

/*WATER*/    
#water {
  polygon-fill: @water;
  opacity: 1;
} 
#lakes [waterway!='drain'] {
  polygon-fill: @water;
}  
#rivers [waterway!='drain'] {
  line-color: darken(@water,10%);
  line-width: 0.3; 
}
#rivers [waterway!='drain'][zoom>=14] {
  line-color: darken(@water,10%);
  line-width: 0.5; 
} 
  
/*LABLES WATER*/
#water [name_2!='Сосновоборский городской округ'] { 
  text-face-name: @sans_bold;
  text-name: '[name]';
  text-size: 12;
  text-fill: @water_label;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-line-spacing:1;
  text-min-distance: 20;
  text-wrap-width: 30;
  text-placement-type:simple;
  text-spacing: 20;
  text-character-spacing: 1.1;
}    

/*LABELS LAKES*/
#lakes_labels [square>=1000000][zoom>11][zoom<16][waterway!='riverbank'] {
  text-face-name: @sans_italic;
  text-name: '[name]';
  text-size: 10;
  text-fill: @water_label;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: false;
  text-min-distance:400;
  text-spacing: 400;
}  
#lakes_labels [square<=1000000][square>=200000][zoom>=16][waterway!='riverbank'] {
  text-face-name: @sans_italic;
  text-name: '[name]';
  text-size: 12;
  text-fill: @water_label;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-min-distance:400;
  text-spacing: 400; 
}  

/*LABELS RIVERS*/
 #rivers_labels [zoom>=12] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 9;
  text-character-spacing: 1.1;
  text-fill: @water_label;
  text-placement: line;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: false;
  text-min-distance:400;
  text-spacing: 400; 
  text-dy: -7;
}

