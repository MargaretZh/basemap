/*BOUNDARIES*/
#boundaries_pol [zoom>=10] {
  polygon-fill: @boudaries-pol;
  opacity: 1;
} 

#coloured_boundaries [zoom<=9] {
  [color=1] {
    polygon-fill: #DFFFDA;
    }
  [color=2] {
    polygon-fill: #F0E6F2;
    }
  [color=3] {
    polygon-fill: #E5D7D3;
    }
  [color=4] {
    polygon-fill: @boudaries-pol;
    }
}

#boundaries_inwater {
  line-color: @water_label;
  line-width: 0.3;
  line-dasharray: 10,15; 
} 


#boundaries_line [zoom<=10] {
    ::outline {
    line-color: darksalmon;
    line-width: 0.3;
    }
  [name='Кингисеппский район'],
  [name='Тихвинский район'],
  [name='Гатчинский район'],
  [name='Кировский район']{
    line-offset: -2;
    line-color: #b1d2ac;
    line-opacity: 0.5;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
  [name='Волосовский район'],
  [name='Лодейнопольский район'],
  [name='Всеволожский район'] {
    line-offset: -2;
    line-color: #d7bcdc;
    line-opacity: 0.5;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
  [name='Лужский район'],
  [name='Киришский район'],
  [name='Выборгский район'],
  [name='Бокситогорский район'],
  [name='Ломоносовский район'],
  [name='Сосновоборский городской округ']{
    line-offset: -2;
    line-color: #d0b6af;
    line-opacity: 0.5;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
  [name='Волховский район'],
  [name='Сланцевский район'],
  [name='Подпорожский район'],
  [name='Приозерский район'],
  [name='Ломоносовский район'],
  [name='Тосненский район'] {
    line-offset: -2;
    line-color: #e3e39c;
    line-opacity: 0.5;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
}

#boundaries_line [zoom>=10] {
    ::outline {
    line-color: darken(darksalmon,20%);
    line-width: 0.3;
    }
  [name='Кингисеппский район'],
  [name='Тихвинский район'],
  [name='Гатчинский район'],
  [name='Кировский район']{
    line-offset: -10;
    line-color: #b1d2ac;
    line-opacity: 0.3;
    line-width: 20; 
    line-join: round;
    line-cap: round;
   
    }
  [name='Волосовский район'],
  [name='Лодейнопольский район'],
  [name='Всеволожский район'] {
    line-offset: -10;
    line-color: #d7bcdc;
    line-opacity: 0.3;
    line-width: 20; 
    line-join: round;
    line-cap: round;

    }
  [name='Лужский район'],
  [name='Киришский район'],
  [name='Выборгский район'],
  [name='Бокситогорский район'],
  [name='Сосновоборский городской округ']{
    line-offset: -10;
    line-color: #d0b6af;
    line-opacity: 0.3;
    line-width: 20; 
    line-join: round;
    line-cap: round;
    }
  [name='Волховский район'],
  [name='Сланцевский район'],
  [name='Подпорожский район'],
  [name='Приозерский район'],
  [name='Ломоносовский район'],
  [name='Тосненский район'] {
    line-offset: -10;
    line-color: #d8d874;
    line-opacity: 0.3;
    line-width: 20; 
    line-join: round;
    line-cap: round;
    }
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


#municipalities_spb [zoom<=10] {
  polygon-fill: lighten(dimgray,50%);
  }
#municipalities_spb [zoom>10] {
  polygon-fill: lighten(dimgray,50%);
  line-color: dimgray;
  line-width: 0.1;
  }

#municipalities_len [color=1] {
  ::outline {
    line-width: 6;
    line-color: #b1d2ac;
    line-opacity:0.2;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#b1d2ac,10%);
  line-dasharray: 5,5;
  line-width: 0.8;
  line-opacity:0.7;
}  
#municipalities_len [color=2] {
  ::outline {
    line-width: 6;
    line-color: #d7bcdc;
    line-opacity: 0.2;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#d7bcdc,10%);
  line-dasharray: 5,5;
  line-width: 0.8;
  line-opacity:0.7;
} 
#municipalities_len [color=3] {
  ::outline {
    line-width: 6;
    line-color: #d0b6af;
    line-opacity: 0.2;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#d0b6af,10%);
  line-dasharray: 5,5;
  line-width: 0.8;
  line-opacity:0.7;
} 
#municipalities_len [color=4] {
  ::outline {
    line-width: 6;
    line-color: #d8d874;
    line-opacity: 0.2;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#d8d874,10%);
  line-dasharray: 5,5;
  line-width: 0.8;
  line-opacity:0.7;
}   

#label_of_sum {
  [color=1] {
  text-face-name: @sans_bold;
  text-name: [sum]+'т';
  text-opacity: 0.2;
  text-fill: darken(#b1d2ac,10%);
  text-size: 150;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#b1d2ac,50%);
    }
  [color=2] {
  text-face-name: @sans_bold;
  text-name: [sum]+'т';
  text-opacity: 0.2;
  text-fill: darken(#d7bcdc,10%);
  text-size: 150;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#d7bcdc,50%);
    }
  [color=3] {
  text-face-name: @sans_bold;
  text-name: [sum]+'т';
  text-opacity: 0.2;
  text-fill: darken(#d0b6af,10%);
  text-size: 150;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#d0b6af,50%);
    }
  [color=4] {
  text-face-name: @sans_bold;
  text-name: [sum]+'т';
  text-opacity: 0.2;
  text-fill: darken(#d8d874,10%);
  text-size: 150;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(#d8d874,40%);
    }
}
#total_sum_spb2 {
  text-face-name: @sans_bold;
  text-name: [sum]+'тыс.т';
  text-opacity: 0.2;
  text-fill: lighten(dimgray,20%);
  text-size: 150;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(dimgray,20%);
    }


#districts_spb [zoom<12] {
  polygon-fill: lighten(dimgray,50%);
  line-color: dimgray;
  line-width: 0.1;
  }

#districts_spb_label [zoom>=12] {
  [color=0],[color=3] {
  text-face-name: @sans_bold;
  text-name: [title];
  text-opacity: 0.4;
  text-wrap-width:32;
  text-wrap-character:'\n';
  text-fill: darken(#e6e6ff,10%);
  text-size: 30;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(dimgray,20%);
  }
  [color=1] {
  text-face-name: @sans_bold;
  text-name: [title];
  text-opacity: 0.4;
  text-wrap-width:32;
  text-wrap-character:'\n';
  text-fill: darken(#e6fff2,10%);
  text-size: 30;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(dimgray,20%);
  }
  [color=2] {
  text-face-name: @sans_bold;
  text-name: [title];
  text-opacity: 0.4;
  text-wrap-width:32;
  text-wrap-character:'\n';
  text-fill: darken(#f2d9e6,10%);
  text-size: 30;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(dimgray,20%);
  }
  [color=4] {
  text-face-name: @sans_bold;
  text-name: [title];
  text-opacity: 0.4;
  text-wrap-width:32;
  text-wrap-character:'\n';
  text-fill: darken(#f2d9e6,10%);
  text-size: 30;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(dimgray,20%);
  }
  [color=5] {
  text-face-name: @sans_bold;
  text-name: [title];
  text-opacity: 0.4;
  text-wrap-width:32;
  text-wrap-character:'\n';
  text-fill: darken(#ffddcc,10%);
  text-size: 30;
  text-allow-overlap: true;
  text-halo-radius: 1;
  text-halo-fill: darken(dimgray,20%);
  }
}
  

#districts_spb [zoom>=12]{
  [color=0],[color=3] {
    polygon-fill: #e6e6ff;
    line-color: darken(#e6e6ff,30%);
    line-width: 0.1;
       ::outline {
      line-width: 4;
      line-color: lighten(dimgray,30%);
      line-opacity:0.3;
      line-offset:-2;}
    }
  [color=1] {
    polygon-fill: #e6fff2;
    line-color: darken(#e6fff2,30%);
    line-width: 0.1;
       ::outline {
      line-width: 4;
      line-color: lighten(dimgray,30%);
      line-opacity:0.3;
      line-offset:-2;}
   } 
   [color=2] {
    polygon-fill: lighten(#f2d9e6,3%);
    line-color: darken(#f2d9e6,30%);
    line-width: 0.1;
       ::outline {
      line-width: 4;
      line-color: lighten(dimgray,30%);
      line-opacity:0.3;
      line-offset:-2;}
   }
   [color=4] {
    polygon-fill: #ffffe6;
    line-color: darken(#ffffe6,30%);
    line-width: 0.1;
       ::outline {
      line-width: 4;
      line-color: lighten(dimgray,30%);
      line-opacity:0.3;
      line-offset:-2;}
    }
   [color=5] {
    polygon-fill: lighten(#ffddcc,3%);
    line-color: darken(#ffddcc,30%);
    line-width: 0.1;
      ::outline {
      line-width: 4;
      line-color: lighten(dimgray,30%);
      line-opacity:0.3;
      line-offset:-2;}
    }
}
/*одноцветные границы для потоков*/
/*#boundaries_line { 
  ::outline {
    line-offset: -10;
    line-color: @boundaries-line;
    line-opacity: 0.2;
    line-width: 20; 
    line-join: round;
    line-cap: round;
    }
  line-color: @boundaries-line;
  line-width: 0.3;
  line-opacity: 0.7;
  line-join: round;
  line-cap: round;
} 
#municipalities_len {
  ::outline {
    line-width: 6;
    line-color: @boundaries-line;
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(@boundaries-line,30%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
    }
*/
  
/*#boundaries_line [zoom>=10] {
  line-color: @boundaries-line;
  line-width: 0.8;
  line-opacity: 0.7;
  line-join: round;
  line-cap: round;
}*/
/*#municipalities_len {
  [stream_color=1] {
  ::outline {
    line-width: 6;
    line-color: darken(#DFFFDA,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#DFFFDA,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
  [stream_color=2] {
  ::outline {
    line-width: 6;
    line-color: darken(#ecffb3,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#ecffb3,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
    [stream_color=3] {
  ::outline {
    line-width: 6;
    line-color: darken(@boudaries-pol,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(@boudaries-pol,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
}
      [stream_color=4] {
  ::outline {
    line-width: 6;
    line-color: darken(#b3ffb3,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#b3ffb3,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
      [stream_color=5] {
  ::outline {
    line-width: 6;
    line-color: darken(#f2f2f2,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#f2f2f2,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
       [stream_color=6] {
  ::outline {
    line-width: 6;
    line-color: darken(#e0ccff,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#e0ccff,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
       [stream_color=7] {
  ::outline {
    line-width: 6;
    line-color: darken(#ccf2ff,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#ccf2ff,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
         [stream_color=8] {
  ::outline {
    line-width: 6;
    line-color: darken(#d9f2e6,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#d9f2e6,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
        [stream_color=9] {
  ::outline {
    line-width: 6;
    line-color: darken(#ffddcc,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#ffddcc,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
        [stream_color=10] {
  ::outline {
    line-width: 6;
    line-color: darken(#ffccff,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#ffccff,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
      [stream_color=11] {
  ::outline {
    line-width: 6;
    line-color: darken(#ffcce0,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#ffcce0,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
      [stream_color=12] {
  ::outline {
    line-width: 6;
    line-color: darken(#ccccff,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#ccccff,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
      [stream_color=13] {
  ::outline {
    line-width: 6;
    line-color: darken(#e0e0eb,20%);
    line-opacity:0.3;
    line-offset:-3;
    line-join: round;
    line-cap: round;}
  line-color: darken(#e0e0eb,50%);
  line-dasharray: 5,5;
  line-width: 0.3;
  line-opacity:0.5;
} 
}
*/