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
  background-color: white;
  srs: '+proj=eqdc +lat_1=56 +lat_2=57 +lat_0=60 +lon_0=31';
  font-directory: url(./fonts/);  
}

/*LANDUSE*/

#landuse [zoom>=12]{
  [landuse='residential'],
  [landuse='allotments'],
  [landuse='industrial'] {
   polygon-fill: dimgray;
   opacity: 0.1;
    }
 } 
/*OOPT*/

#nature_reserves [area<400000][zoom=9]{
   marker-fill: @oopt;
   marker-width: 3; 
}
#nature_reserves [area<400000][zoom>9][zoom<14]{
   marker-fill: @oopt;
   marker-width: 7;
   marker-file: url(icons/marker-15.svg);
}
#nature_reserves [area<400000][zoom>=15]{
   marker-fill: @oopt;
   marker-width: 10;
   marker-file: url(icons/marker-15.svg);
}
#nature_reserves [area>=400000][zoom>=9]{
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
   [state='planning']{
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
#buildings [zoom>=15]{
   polygon-fill: dimgray;
   opacity: 0.5;
}  

/*BUILDINGS LABELS*/
#buildings [zoom>=17]{ 
    text-face-name: @sans_book;
    text-name: '[a_hsnmbr]';
    text-size: 9;
    text-halo-radius: 1;
    text-halo-fill:@halo;
    text-allow-overlap: true;
}  



/* Boundaries */
#boundaries_pol {
    polygon-fill: @boudaries-pol;
    opacity: 1;
} /*общая бежевая подложка*/ 

#coloured_boundaries [zoom<=8]{
   [name='Кингисеппский район'],
   [name='Тихвинский район'],
   [name='Гатчинский район'],
   [name='Кировский район']{
   polygon-fill: #6BB274;
   opacity: 0.2;
    }
   [name='Волосовский район'],
   [name='Лодейнопольский район'],
   [name='Всеволожский район']{
   polygon-fill: #9A8FD3;
   opacity: 0.2;
    }
   [name='Лужский район'],
   [name='Киришский район'],
   [name='Выборгский район'],
   [name='Бокситогорский район']{
   polygon-fill: #D36C6A;
   opacity: 0.2;
    }
}  /*цветные районы на превью*/

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
}  /*линейные границы*/

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
}  /*линейные границы в воде*/

/*BOUNDARIES LABLES*/

#boundaries_labels [zoom=8] {
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 12;
    text-fill: dimgray;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: false;
    text-wrap-width: 30;
    text-spacing: 20;
}  /*подписи районов на превью*/
   


/*HIGHWAYS*/

#highways{
  [highway='motorway'],[highway='trunk']{
    line-color: @highway; 
    line-width: 0.4;
    opacity: 0.7;
    } 
  [highway='primary']{
    line-color: @highway; 
    line-width: 0.1;
    }
} 
#highways [highway='secondary'][zoom>=9]{
    line-color: @highway; 
    line-width: 0.1;
}
#highways [zoom>9][zoom<12]{
    [highway='motorway'],
    [highway='trunk'],
    [highway='primary']{
      ::outline {
      line-color: @highway_outline;
      line-width: 1;
      }
      line-color: @highway; 
      line-width: 2;
      }
    [highway='secondary']{
      line-color: @highway; 
      line-width: 0.7;
      }
    [highway='tertiary']{
      line-color: @highway; 
      line-width: 0.7;
      line-opacity: 0.3;
      }  
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link']{
      line-color: @highway; 
      line-width: 0.5;
      }
}
#highways [zoom>=12]{
    [highway='unclassified'],
    [highway='residential']{
      line-color: @highway; 
      line-width: 0.5;
      line-opacity: 0.3;
      }
    [highway='motorway'],
    [highway='trunk'],
    [highway='primary'],
    [highway='motorway_link'],
    [highway='trunk_link'],
    [highway='primary_link'],
    [highway='secondary'],
    [highway='tertiary']{
      ::outline {
      line-color: @highway_outline;
      line-width: 0.6;
      }
      line-color: @highway; 
      line-width: 1.6;
      }
    [highway='motorway'],
    [highway='trunk'],
    [highway='primary']{
      ::outline {
      line-color: @highway_outline;
      line-width: 2;
      line-join: round;
      line-cap: round;
      }
      line-color: @highway; 
      line-width: 3;
      line-join: round;
      line-cap: round;
      }
}
#highways [zoom>=13] {
    [highway='service'],
    [highway='living_street'],
    [highway='pedestrian']{
      line-color: @highway; 
      line-width: 0.2;
      line-opacity: 0.5;
      }
    [highway='unclassified'],
    [highway='residential']{
      line-color: @highway; 
      line-width: 1;
      }
}

/*RAILWAYS*/

#railways [zoom<=10][zoom>=8] [service!='siding']{
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


/*HIGHWAY LABLES*/



#highways_labels [ref!=''][zoom=9] {
    [highway='motorway'],
    [highway='trunk']{
       shield-file: url(icons/shield-road_20.svg);
       shield-fill: white;
       shield-size: 8;
       shield-allow-overlap: false;
       shield-face-name: @sans_book;
       shield-name: '[ref]';
       shield-min-distance: 50;
       shield-spacing: 50;
   }
}
#highways_labels [ref!=''][zoom>=10] {
    [highway='motorway'],
    [highway='trunk']{
       shield-file: url(icons/shield-road_20.svg);
       shield-fill: white;
       shield-size: 8;
       shield-allow-overlap: false;
       shield-face-name: @sans_book;
       shield-name: '[ref]';
       shield-min-distance: 100;
       shield-spacing: 100;
   }
}
#highways_labels [zoom>=16] {
    [highway='living_street'],
    [highway='residential'],
    [highway='pedestrian'],
    [highway='primary']{
       text-face-name: @sans_italic;
       text-name: [name];
       text-size: 9;
       text-character-spacing: 1.1;
       text-fill: black;
       text-placement: line;
       text-halo-radius: 2;
       text-halo-fill:@halo;
       text-allow-overlap: false;
       text-min-distance:400;
       text-spacing: 400; 
       text-dy: -5;
    }
}  /*подписи улиц*/



/*SETTLEMENTS LABELS AND MARKERS*/

#settlements [zoom>=9][place='town']{
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 10;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: false;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-transform:uppercase;
    text-line-spacing:1;
    marker-fill: @stlmnts;
    marker-width: 6;
    marker-allow-overlap:true;
    text-min-distance: 20;
} 
#settlements[zoom>=10][place='town']{
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
#settlements[zoom=11][place='village']{
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
#settlements [zoom=12]{
    [place='town']{
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
    [place='village']{
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
#settlements [zoom>=13]{  
    [place='hamlet']{
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 11;
    text-fill: @stlmnts;
    text-allow-overlap: false;
    text-halo-fill:@halo;
    text-wrap-width: 15;
    text-halo-radius: 2;
    } 
    [place='town']{
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
    [place='village']{
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
    
#water {
    polygon-fill: @water;
    opacity: 1;
}  /*финский залив и ладожское озеро*/


#lakes [waterway!='drain']{
    polygon-fill: @water;
}  /*все остальные озера полигоны*/


#rivers [waterway!='drain']{
    line-color: darken(@water,10%);
    line-width: 0.3; 
} 
#rivers [waterway!='drain'][zoom>=14]{
    line-color: darken(@water,10%);
    line-width: 0.5; 
} /*реки линейные*/
  

/*LABLES WATER*/

#water [name_2!='Сосновоборский городской округ']{ 
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

#lakes_labels [area>=1000000][zoom>10][zoom<15][waterway!='riverbank']{
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 10;
    text-fill: @water_label;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: false;
}  
#lakes_labels [area<=1000000][area>=200000]
              [zoom>=15][waterway!='riverbank']{
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 12;
    text-fill: @water_label;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: true;
}  

/*LABELS RIVERS*/
 
#rivers_labels [zoom>=11]{
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
    text-spacing: 300; 
    text-dy: -7;
}
    
   
   
