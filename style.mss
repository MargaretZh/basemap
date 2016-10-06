@sans_bold: "PT Sans Bold";
@sans_book: "PT Sans Regular";
@whitney_bold: "Whitney SSm Semibold";
@gotham_bold: "Gotham Pro Narrow Medium";
@proxima_bold: "Proxima Nova Bold";
@sans_italic: "PT Sans Italic";
@halo: beige;
@oopt: seagreen;
@boudaries-pol:#f7eece;
@boundaries-line:brown;
@highway: black;
@highway_outline: goldenrod;
@stlmnts:dimgray;
@water: #C9d7e4;
@water_label: #4593AB;
@old_water: #C1D6DC;
  
Map {
  /*background-color:white;*/
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
/*
#landuse [zoom>=11] {
  [landuse='military'] {
    polygon-fill: purple;
    opacity: 0.1;
  }
}
*/
/*BUILDINGS LABELS*/
#buildings_labels [zoom>=17] { 
  text-face-name: @sans_book;
  text-name: '[a_hsnmbr]';
  text-size: 9;
  text-halo-radius: 1.5;
  text-halo-fill:@halo;
  text-allow-overlap: false;
} 
/*OOPT*/

/*#nature_reserves [square<45000][zoom=9] {
  marker-fill: @oopt;
  marker-width: 3; 
}*/


#nature_reserves [square>=45000] [zoom>=9] {
  [state='active'],[state='closing']{
    ::outline {
      line-color: @oopt;
      line-width: 3;
      line-join: round;
      line-cap: round;
      }
  polygon-fill: @oopt;
  polygon-opacity: 0.3;
  }
  [state='planning'] {
    ::outline {
      line-color:@oopt;
      line-dasharray: 8,11;
      line-width: 3;
      line-join: round;
      line-cap: round;
      }
  polygon-fill: @oopt;
  polygon-opacity: 0.15;
  }
}


#nature_reserves_labels [square>=45000] [square<300000] [zoom>=9] {
  text-face-name:'DejaVu Sans Bold';
  text-name: [label2];
  text-fill: darken(@oopt,15%);
  text-size: 30;
  text-halo-radius: 2;
  text-halo-fill: @halo;
}  

#nature_reserves_labels [square<45000][zoom>=9]{
  text-face-name:'DejaVu Sans Bold';
  text-name: '● '+[label2];
  text-fill: darken(@oopt,15%);
  text-size: 30;
  text-halo-radius: 2;
  text-halo-fill: @halo;
  text-align: left;
  text-allow-overlap: true;
  }  

#nature_reserves_labels [square>=300000][zoom>=9] {
  text-face-name:'DejaVu Sans Bold';
  text-name: [name]+' '+'('+[label2]+')';
  text-fill: darken(@oopt,18%);
  text-size: 30;
  text-allow-overlap: true;
  text-halo-radius: 2;
  text-halo-fill: @halo;
  text-wrap-width: 375;
}


/*BUILDINGS*/
#buildings [zoom>=15] {
  polygon-fill: dimgray;
  opacity: 0.5;
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
#settlements [zoom>=9][status=3] {
  text-face-name: @sans_bold;
  text-name: '[name]';
  text-size: 16;
  text-fill: @stlmnts;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-horizontal-alignment: right;
  text-dx: 9;
  text-transform:uppercase;
  text-line-spacing:1;
  marker-fill: @stlmnts;
  marker-width: 12;
  marker-allow-overlap:true;
  marker-line-color: @halo;
  marker-line-width: 2;
  text-min-distance: 20;
} 

#settlements[zoom>=10][status=3] {
  text-face-name: @sans_bold;
  text-name: '[name]';
  text-size: 17;
  text-fill: @stlmnts;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-horizontal-alignment: right;
} 
#settlements[zoom=11][status=2] {
  text-face-name: @sans_book;
  text-name: '[name]';
  text-size: 15;
  text-fill: @stlmnts;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  text-dx: 10;
  text-wrap-width: 35;
  marker-fill: @halo;
  marker-width: 8;
  marker-line-color: @stlmnts;
  marker-line-width: 1;
  marker-allow-overlap:true;
}  
#settlements [zoom=12] {
  [status=3] {
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 25;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-allow-overlap: true;
    
    }
  [status=2] {
    text-face-name: @sans_book;
    text-name: '[name]';
    text-size: 21;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 12;
    text-wrap-width: 60;
    text-allow-overlap: false;
    marker-fill: @halo;
    marker-width: 8;
    marker-line-color: @stlmnts;
    marker-line-width: 1;
    marker-allow-overlap:false;
    }
    [status=1] {
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 16;
    text-fill: @stlmnts;
    text-allow-overlap: false;
    text-halo-fill:@halo;
    text-wrap-width: 15;
    text-halo-radius: 1.5;
    } 
}  
#settlements [zoom>=13] {  
  [status=1] {
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 16;
    text-fill: @stlmnts;
    text-allow-overlap: false;
    text-halo-fill:@halo;
    text-wrap-width: 15;
    text-halo-radius: 2;
    } 
  [status=3] {
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 21;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-wrap-width: 60;
    }
  [status=2] {
    text-face-name: @sans_book;
    text-name: '[name]';
    text-size: 19;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 10;
    text-wrap-width: 60;
    marker-fill: @halo;
    marker-width: 8;
    marker-line-color: @stlmnts;
    marker-line-width: 1;
    marker-allow-overlap:true;  
    }
}

/*WATER*/    
#water {
  polygon-fill: @water;
  opacity: 1;
  /*
  polygon-pattern-file:url(images/water.png);
  polygon-pattern-comp-op:color-burn;
  polygon-pattern-alignment:global;
  */
} 

#lakes [waterway!='drain'] {
  polygon-fill: @water;
}  
#rivers [waterway!='drain'] {
  line-color: @water;
  line-width: 0.3; 
}
#rivers [waterway!='drain'][zoom>=14] {
  line-color: @water;
  line-width: 0.5; 
} 
  
/*LABLES WATER*/
#water [name_2!='Сосновоборский городской округ'] { 
  text-face-name: @sans_bold;
  text-name: '[name]';
  text-size: 60;
  text-fill: @water_label;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-line-spacing:1;
  text-min-distance: 20;
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
  text-min-distance:500;
  text-spacing: 500; 
  text-dy: -7;
}

#minerals_bounds [zoom>8] {
  [TYPE='Глина и каолин'] {
    ::outline {
  polygon-pattern-file:url(images/glain.png);
  polygon-pattern-alignment:global;
  polygon-pattern-opacity: 0.4;
    }
  }
  [TYPE='Гравий, песок'] {
    ::outline {
  polygon-pattern-file:url(images/gravel.png);
  polygon-pattern-alignment:global;
  polygon-pattern-opacity: 0.4;
    }
  }
  [TYPE='Известняк, камень гипсовый и мел'] {
    ::outline {
  polygon-pattern-file:url(images/limestone.png);
  polygon-pattern-alignment:global;
  polygon-pattern-opacity: 0.4;
    }
  }
    [TYPE='Камень для строительства'] {
    ::outline {
  polygon-pattern-file:url(images/stones.png);
  polygon-pattern-alignment:global;
  polygon-pattern-opacity: 0.4;
    }
 }
  [TYPE='Месторождение торфа'] {
    ::outline {
  polygon-pattern-file:url(images/peat2.png);
  polygon-pattern-alignment:global;
  polygon-pattern-opacity: 0.4;
    }
  }
  [TYPE='Песок'] {
    ::outline {
  polygon-pattern-file:url(images/sand2.png);
  polygon-pattern-alignment:global;
  polygon-pattern-opacity: 0.4;
    }
  }
  polygon-fill: #FF9800;
  opacity: 0.15;
}

#trash [zoom>8] { 
   marker-file: url(icons/circle-15.svg);
   marker-fill: white;
   marker-width: 45;
   marker-allow-overlap:true;
     ::outline {
      marker-file: url(icons/waste-basket-15.svg);
      marker-fill: darken(dimgray,20%);
      marker-width: 25;
      marker-allow-overlap:true;
    }
 
 }
#trash_labels { 
  text-face-name: @sans_italic;
  text-name: '[NAME]';
  text-size: 30;
  text-fill: darken(dimgray,10%);
  text-placement: point;
  text-halo-radius: 3;
  text-character-spacing: 0.7;
  text-halo-fill:white;
  text-horizontal-alignment: left;
  text-dx: -25;
  text-allow-overlap:true;
 }

#industry {
   [VOLUME<=100]{
   marker-file: url(icons/circle-15.svg);
   marker-fill: darkred;
   marker-width: 24;}
   [VOLUME>100],[VOLUME<=1000]{
   marker-file: url(icons/circle-15.svg);
   marker-fill: darkred;
   marker-width: 48;}
   [VOLUME>1000],[VOLUME<=10000]{
   marker-file: url(icons/circle-15.svg);
   marker-fill: darkred;
   marker-width: 64;}
   [VOLUME>10000]{
   marker-file: url(icons/circle-15.svg);
   marker-fill: darkred;
   marker-width: 80;}
}


/*#social_wastes {
  marker-line-color: darken(rgb(152,155,177),20%);
  marker-line-width: 1;
  marker-fill: rgb(152,155,177);
  marker-width: [msize];
  marker-transform:translate(-[offset],0);

  ::outline {
    [status=3] {
      text-name: [name];
      text-face-name: @sans_bold; 
      text-size:20;
      text-horizontal-alignment: right;
      text-fill: darken(rgb(152,155,177),20%);
      text-halo-radius: 3;
      text-halo-fill: @halo;
      text-allow-overlap: true;
    }
  text-name: [name];
  text-face-name: @sans_bold; 
  text-size:13;
  text-horizontal-alignment: right;
  text-fill: darken(rgb(152,155,177),20%);
  text-halo-radius: 3;
  text-halo-fill: @halo; 
  
    }
  }
*/

/*#tbo {
  [type='tbo'] {
    shield-file: url(icons/shields/shield-tbo_100.svg);
    shield-fill: dimgray;
    shield-size: 80;
    shield-allow-overlap: true;
    shield-face-name: @sans_book;
    shield-name: '[name]';
   }
  [type='rec'] {
    shield-file: url(icons/shields/shield-rec_100.svg);
    shield-fill: dimgray;
    shield-size: 80;
    shield-allow-overlap: true;
    shield-face-name: @sans_book;
    shield-name: '[name]';
   }
}  */

#tbo {
 [type='tbo'] {  
 marker-line-color: dimgray;
 marker-line-width: 1;
 marker-fill: #6699ff;
 marker-width: 100;
 marker-allow-overlap: true;
       ::outline {
      text-name: [name];
      text-face-name: @sans_bold; 
      text-size:75;
      text-fill: dimgray;
      text-halo-radius: 3;
      text-halo-fill: @halo;
      text-allow-overlap: true;}
    }
 [type='rec'] {  
 marker-line-color: dimgray;
 marker-line-width: 1;
 marker-fill: #2eb82e;
 marker-width: 100;
 marker-allow-overlap: true;
       ::outline {
      text-name: [name];
      text-face-name: @sans_bold; 
      text-size:75;
      text-fill: dimgray;
      text-halo-radius: 3;
      text-halo-fill: @halo;
      text-allow-overlap: true;}
    }
   }

/*#social_wastes {
        [msize>=4]{
        text-face-name:'DejaVu Sans Bold';
  text-name: '● '+[name];
  text-size: 45;
  text-fill: @stlmnts;
  text-halo-radius: 1;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  }
      [msize>=2][msize<4]{
        text-face-name:'DejaVu Sans Bold';
  text-name: '● '+[name];
  text-size: 35;
  text-fill: @stlmnts;
  text-halo-radius: 1;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  }
    [msize>=1][msize<2]{
        text-face-name:'DejaVu Sans Book';
  text-name: '● '+[name];
  text-size: 25;
  text-fill: @stlmnts;
  text-halo-radius: 1;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  }
  [msize<1] {
        text-face-name:'DejaVu Sans Book';
  text-name: '● '+[name];
  text-size: 15;
  text-fill: @stlmnts;
  text-halo-radius: 1;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  }
}
*/
#social_wastes_t [volume<2000] {
  marker-line-color: darken(#000066,60%);
  marker-line-width: 1;
  marker-fill: #000066;
  marker-width: [msize];
  marker-transform:translate(-[off],0);
  marker-allow-overlap: true;
  ::outline {
    [status=3] {
      text-name: [name]+' '+'('+[volume]+' т'+')';
      text-face-name: @sans_bold; 
      text-size:30;
      text-horizontal-alignment: right;
      text-fill: darken(rgb(152,155,177),30%);
      text-halo-radius: 3;
      text-halo-fill: @halo;
      text-allow-overlap: true;
    }
  text-name: [name]+' '+'('+[volume]+' т'+')';
  text-face-name: @sans_bold; 
  text-size:17;
  text-horizontal-alignment: right;
  text-fill: darken(rgb(152,155,177),30%);
  text-halo-radius: 2;
  text-halo-fill: @halo; 
    }
  }
#social_wastes_t [volume>=2000] [volume<5000]  {
  marker-line-color: darken(#009933,60%);
  marker-line-width: 1;
  marker-fill: #009933;
  marker-width: [msize];
  marker-transform:translate(-[off],0);
  marker-allow-overlap: true;
  ::outline {
    [status=3] {
      text-name: [name]+' '+'('+[volume]+' т'+')';
      text-face-name: @sans_bold; 
      text-size:30;
      text-horizontal-alignment: right;
      text-fill: darken(rgb(152,155,177),30%);
      text-halo-radius: 3;
      text-halo-fill: @halo;
      text-allow-overlap: true;
    }
  text-name: [name]+' '+'('+[volume]+' т'+')';
  text-face-name: @sans_bold; 
  text-size:22;
  text-horizontal-alignment: right;
  text-fill: darken(rgb(152,155,177),30%);
  text-halo-radius: 2;
  text-halo-fill: @halo; 
  text-allow-overlap: true;  
    }
  }
#social_wastes_t [volume>=5000] [volume<10000]  {
  marker-line-color: darken(#ff6600,60%);
  marker-line-width: 1;
  marker-fill: #ff6600;
  marker-width: [msize];
  marker-transform:translate(-[off],0);
  marker-allow-overlap: true;
  ::outline {
    [status=3] {
      text-name: [name]+' '+'('+[volume]+' т'+')';
      text-face-name: @sans_bold; 
      text-size:30;
      text-horizontal-alignment: right;
      text-fill: darken(rgb(152,155,177),30%);
      text-halo-radius: 3;
      text-halo-fill: @halo;
      text-allow-overlap: true;
    }
  text-name: [name]+' '+'('+[volume]+' т'+')';
  text-face-name: @sans_bold; 
  text-size:26;
  text-horizontal-alignment: right;
  text-fill: darken(rgb(152,155,177),30%);
  text-halo-radius: 2;
  text-halo-fill: @halo; 
  text-allow-overlap: true;   
    }
  }
#social_wastes_t [volume>=10000]  {
  marker-line-color: darken(#990000,60%);
  marker-line-width: 1;
  marker-fill:  #990000;
  marker-width: [msize];
  marker-transform:translate(-[off],0);
  marker-allow-overlap: true;
  ::outline {
    [status=3] {
      text-name: [name]+' '+'('+[volume]+' т'+')';
      text-face-name: @sans_bold; 
      text-size:30;
      text-horizontal-alignment: right;
      text-fill: darken(rgb(152,155,177),30%);
      text-halo-radius: 3;
      text-halo-fill: @halo;
      text-allow-overlap: true;
    }
  text-name: [name]+' '+'('+[volume]+' т'+')';
  text-face-name: @sans_bold; 
  text-size:30;
  text-horizontal-alignment: right;
  text-fill: darken(rgb(152,155,177),30%);
  text-halo-radius: 2;
  text-halo-fill: @halo;
  text-allow-overlap: true;
    }
  }
  

#streams [zoom>=10] {
  [color=1] {
    polygon-fill: lighten(#DFFFDA,1%);
    }
  [color=2] {
    polygon-fill: lighten(#ecffb3,1%);
    }
  [color=3] {
    polygon-fill: lighten(@boudaries-pol,1%);
    }
  [color=4] {
    polygon-fill: lighten(#b3ffb3,1%);
    }
  [color=5] {
    polygon-fill: lighten(#f2f2f2,1%); 
}
  [color=6] {
    polygon-fill: lighten(#e0ccff,1%); 
}
  [color=7] {
    polygon-fill: lighten(#ccf2ff,1%); 
}
   [color=8] {
    polygon-fill: lighten(#d9f2e6,1%); 
}
  [color=9] {
    polygon-fill: lighten(#ffddcc,1%); 
}
  [color=10] {
    polygon-fill: lighten(#ffccff,1%); 
}
  [color=11] {
    polygon-fill: lighten(#ffcce0,1%); 
}
  [color=12] {
    polygon-fill: lighten(#ccccff,1%); 
}
  [color=13] {
    polygon-fill: lighten(#e0e0eb,1%); 
}
}

#centers_of_streams { 
  [Name='Ⅰ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(@boudaries-pol,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(@boudaries-pol,95%);
  }
  [Name='Ⅱ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#ccccff,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#ccccff,95%);
  }
   [Name='Ⅲ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#ecffb3,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#ecffb3,95%);
  }
  [Name='Ⅳ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#ffcce0,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#ffcce0,95%);
  }
   [Name='Ⅴ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#e0ccff,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#e0ccff,95%);
}
    [Name='Ⅵ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#e0e0eb,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#e0e0eb,95%);
}
  [Name='Ⅶ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#ffccff,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#ffccff,95%);
}
  [Name='Ⅷ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#DFFFDA,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#DFFFDA,95%);
  }
   [Name='Ⅸ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#ffddcc,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#ffddcc,95%);
  }
  [Name='Ⅹ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#b3ffb3,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#b3ffb3,95%);
  }
  [Name='Ⅺ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#ccf2ff,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#ccf2ff,95%);
  }
    [Name='Ⅻ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#ccccff,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#ccccff,95%);
  }
    [Name='ⅩⅢ'] {
  text-face-name:'DejaVu Serif Bold';
  text-name: [Name];
  text-opacity: 0.2;
  text-fill: darken(#e0e0eb,75%);
  text-size: 230;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#e0e0eb,95%);
  }
  }

#waste_objects {
  text-face-name: 'DejaVu Sans Bold';
  text-name: [LABEL]; 
  text-wrap-width: 30;
  text-wrap-character:'\n';
  text-align: left;
  text-fill: darkblue;
  text-size: 60;
  text-halo-radius: 4;
  text-halo-fill: @halo;
  text-allow-overlap: true;
  }

#landfils {
  text-face-name:  'DejaVu Sans Bold';
  text-name: [label];
  text-size: 20;
  text-fill: darkred;
  text-halo-radius: 1;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  text-allow-overlap: false;
  }

#waste_disposal {
  marker-fill: #660033;
  marker-width: 13;
  marker-line-color: @halo;
  marker-line-width: 2;
  }

#settlements_waste [real!=null] {
   [status=1] {
    text-face-name: @sans_italic;
    text-name: [name]+' '+[real]+'/'+[need];
    text-size: 28;
    text-fill: @stlmnts;
    text-allow-overlap: false;
    text-halo-fill:@halo;
    text-halo-radius: 2;
    } 
    [status=2] {
    text-face-name: @sans_bold;
    text-name: [name]+' '+[real]+'/'+[need];
    text-size: 45;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 12;
    text-allow-overlap: false;
    marker-fill: @halo;
    marker-width: 15;
    marker-line-color: @stlmnts;
    marker-line-width: 1;
    marker-allow-overlap:false;
    }
  [status=3] {
  text-face-name: @whitney_bold;
  text-name: [name]+' '+[real]+'/'+[need];
  text-size: 45;
  text-fill: @stlmnts;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-horizontal-alignment: right;
  text-dx: 15;
  text-line-spacing:1;
  marker-fill: @stlmnts;
  marker-width: 23;
  marker-allow-overlap:true;
  marker-line-color: @halo;
  marker-line-width: 2;
  text-min-distance: 20;
    }
   
}  
/*#settlements_waste [real=null] {
  [status=3] {
  text-face-name: @sans_bold;
  text-name: [name];
  text-size: 14;
  text-fill: @stlmnts;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: true;
  text-horizontal-alignment: right;
  text-dx: 9;
  text-transform:uppercase;
  text-line-spacing:1;
  marker-fill: @stlmnts;
  marker-width: 12;
  marker-allow-overlap:true;
  marker-line-color: @halo;
  marker-line-width: 2;
  text-min-distance: 20;
    }
  [status=2] {
    text-face-name: @sans_book;
    text-name: [name];
    text-size: 17;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 12;
    marker-fill: @halo;
    marker-width: 8;
    marker-line-color: @stlmnts;
    marker-line-width: 1;
    marker-allow-overlap:true;
    }
    [status=1] {
    text-face-name: @sans_italic;
    text-name: [name];
    text-size: 11;
    text-fill: @stlmnts;
    text-allow-overlap: false;
    text-halo-fill:@halo;
    text-halo-radius: 2;
    } 
}
*/
#neu_place {
  marker-fill: #003cb3;
  marker-width: 10;
  marker-allow-overlap: true;
  marker-line-color: @halo;
  marker-line-width: 1;
  }

#neu {
  ['gid'!=63] {
  text-face-name:'DejaVu Sans Bold';
  text-name: '◼ '+[field_1]+' тыс.м³';
  text-size: 40;
  text-fill: #003cb3;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  text-allow-overlap: true;
  text-dx:-7;
  }
   ['gid'=63] {
  text-face-name:'DejaVu Sans Bold';
  text-name: '◼ '+[field_1];
  text-size: 40;
  text-fill: #003cb3;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-horizontal-alignment: right;
  text-allow-overlap: true;
  text-dx:-7;
    }
    }
#neu_labels {
  line-color: @halo;
  line-width: 5;
  ::outline {
    line-color: #003cb3;
    line-width: 3;}
  }


#unauthorized_waste [volume=null] {
    polygon-fill: #f2d9e6;
    polygon-opacity: 1;
    }

#unauthorized_waste  [volume<1000] {
    polygon-fill: #e6b3cc;
    polygon-opacity: 1;
    }
#unauthorized_waste  [volume>=1000] [volume<=20000] {
    polygon-fill: #d279a6;
    polygon-opacity: 1;
    }
#unauthorized_waste  [volume>20000] [volume<=100000] {
    polygon-fill: #c6538c;
    polygon-opacity: 1;
    }
#unauthorized_waste  [volume>100000] [volume<=200000] {
    polygon-fill: #862d59;
    polygon-opacity: 1;
    }
#unauthorized_waste  [volume>500000] {
    polygon-fill: #391326;
    polygon-opacity: 1;
    }

#waste_objects_geom {
  marker-fill: white;
  marker-width: 45;
  marker-allow-overlap: true;
  marker-line-color: blue;
  marker-line-width: 1;
    ::outline {
  text-face-name:'PT Sans Narrow Bold';
  text-name: [label];
  text-size: 40;
  text-fill: blue;
  text-allow-overlap: true;
 }   
 }
#waste_objects_labels {
  line-color: white;
  line-width: 5;
  ::outline {
    line-color: blue;
    line-width: 3;}
  }
 #waste_objects_place {
  marker-fill: white;
  marker-width: 10;
  marker-allow-overlap: true;
  marker-line-color: blue;
  marker-line-width: 1;
  }
