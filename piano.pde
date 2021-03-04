class Piano {
  //float w;
  float b;
  float w;
  //int w_color1;
  //int w_color2;
  //int w_color3;
  Boolean [] pressed_keys = new Boolean [13];
  //int i = 0;
 
  
  Piano(float m){
    w = m*100;
    if(m == 0){
      b = -60;}else if(m == 3 || m == 7 || m == 10){
      b = m*200 - 30;
    }else{b = m*100 - 30;}
    
    for(int i = 0; i < pressed_keys.length; i++){
      pressed_keys[i] = false;
    }
    
  }
  
  void show_white(){
    //w_color1 = w_color2 = w_color3 = 255;
    fill(255, 150);
    stroke(169);
    rect(w, 500, 100, 350);
    //keyPressed(m);
  }
  
  void show_black(){
    noStroke();
    fill(0, 0, 30);
    rect(b, 500, 60, 270);
  }
  
  void keyPressed(int pr){
    if(keyCode == 65 && pr == 0){
      image(capella, width/2, height/2);
      
      fill(252, 254, 214, 150);
      noStroke();
      rect(pr * 100, 500, 100, 350);
      
      starName = "Capella";
      pianoMap = loadImage("capellaMap.jpeg");
      starInfo = "At a magnitude of 0.08 and more \nthan 40 light-years away," + 
      "\nit's the sixth-brightest naked-eye \nstar in Earth's night sky." + 
      "\nSometimes known as the \"Goat" + 
      "\nStar\", Capella's yellow-orange \nappearance at times makes it hard" +
      "\nto distinguish the star \nfrom the planet Mars." + 
      "\nIt's visible for most of the year \nin the Northern Hemisphere.";
    }
      
    if(keyCode == 83 && pr == 1){
      //pressed_keys[pr] = true;
      image(sirius, width/2, height/2);
      
      fill(134, 173, 210, 150);
      noStroke();
      rect(pr * 100, 500, 100, 350);
      
      //starInfoPos = 100;
      starName = "Sirius";
      starInfo = "Sirius, also known as the Dog Star" 
      + "\nor Sirius A, is the brightest star" + 
      "\nin Earth's night sky. The name" + 
      "\nmeans \"glowing\" in Greek —" + 
      "\na fitting description, as only a few" +"\nplanets, the full moon" + 
      "\nand the International Space Station" + 
      "\noutshine this star." + "\nBecause Sirius is so bright," + 
      "\nit was well-known to the ancients.";
      pianoMap = loadImage("siriusMap.png");
  }
      
    if(keyCode == 68 && pr == 2){
      fill(240, 230, 220, 150);
      noStroke();
      rect(w, 500, 100, 350);
      image(betelgeuse, width/2, height/2);
      
      starName = "Betelgeuse";
      starInfo = "The red supergiant star Betelgeuse" +
      "\nis nearing the end of its life," + 
      "\nand researchers are preparing" + 
      "\nfor what it will look like when" + 
      "\nthe star dies in a fiery explosion" +
      "\ncalled a supernova. Located in the" + 
      "\nconstellation Orion, the star is about" + 
      "\n1,000 times the size of the sun." + 
      "\nBetelgeuse's brightness has been" + 
      "\ndipping to the lowest point" + 
      "\nin the past 100 years.";
      //, and some scientists have suggested that the star is getting close to running out of fuel and going supernova. 
      
      pianoMap = loadImage("betelgeuseMap.jpeg");
}
      
    if(keyCode == 70 && pr == 3){
      fill(204, 187, 141, 150);
      noStroke();
      rect(w, 500, 100, 350);
      image(arcturus, width/2, height/2);
      
      pianoMap = loadImage("arcturusMap.jpg");
      starName = "Arcturus";
      starInfo = "Arcturus is a red giant star that is" + 
      "\nthe brightest star in the constellation" + 
      "\nBoötes (the herdsman). Arcturus" + 
      "\nis also among the brightest" +
      "\nstars that can be seen from Earth." + 
      "\nAstronomers say Arcturus will end up" + 
      "\nas a white dwarf at the end of its life." +
      "\nThe light of Arcturus is so bright" +  
      "\nthat the star was used to help open" + "\nthe Chicago World's Fair in 1933.";
  }
      
    if(keyCode == 71 && pr == 4){
      fill(133, 167, 241, 150);
      noStroke();
      rect(w, 500, 100, 350);
      image(rigel, width/2, height/2);
      
      starName = "Rigel";
      starInfo = "Rigel is a blue supergiant that is" + 
      "\nthe brightest star in the constellation" + "\nOrion (the Hunter). Due to its" + 
      "\nmeasured size and brightness it is" + 
      "\nexpected to end in a supernova one" +
      "\nday. The star is about 870 light-years" + 
      "\nfrom the sun and 47,000 times" +
      "\nas luminous Rigel's name is popular" +
      "\nin science-fiction. It's in the name" + "\nof a number of planets in the \"Star" +
      "\n Trek\" universe and is mentioned in" +
      "\n\"The Hitchhiker's Guide to the Galaxy\".";
      pianoMap = loadImage("rigelMap.jpg");
    }
    
    if(keyCode == 72 && pr == 5){
      fill(74, 121, 161, 150);
      noStroke();
      rect(w, 500, 100, 350);
      image(vega, width/2, height/2);
      
      pianoMap = loadImage("vegaMap.jpg");
      starName = "Vega";
      starInfo = "The star is part of the constellation" + 
      "\nLyra and, with the stars Deneb and," + 
      "\nAltair forms an asterism known as" +
      "\nthe Summer Triangle. The star is only" +
      "\nabout 450 million years old, which" +
      "\nmakes it a youngster compared to our" + 
      "\nown solar system (which is 4.6 billion" + "\nyears old). Studies of " +
      "\nVega help astronomers learn more" + 
      "\nabout solar systems that are in the" + 
      "\nearly stages of their formation.";
  }
      
    if(keyCode == 74 && pr == 6){
      fill(130, 113, 231, 150);
      noStroke();
      rect(w, 500, 100, 350);
      image(altair, width/2, height/2);
      
      starName = "Altair";
      starInfo = "Altair is a bright star in the northern" + 
      "\nsummer sky that is one of the three" + 
      "\nstars of the Summer Triangle." +
      "\nThe star, which is in the constellation" + 
      "\nAquila (the Eagle), is just 16.7 light-" + 
      "\nyears from Earth, making it one of the" +
      "\nclosest naked-eye stars visible in the" + 
      "\nsky. It is the 12th brightest star in the" + 
      "\nnight sky. It also rotating so rapidly" +
      "\nthat it is about at 90% of the" +
      "\nspeed it would take to rotate" + 
      "\nfast enough to blow apart.";
      pianoMap = loadImage("altairMap.jpg");
  }
  
    if(keyCode == 75 && pr == 7){
      starName = "Welcome to the\nSpace Piano!";
      starInfo = "Press middle-row computer\nkeys (starting with A)\nto activate the piano.\n\nPress K to clear the screen.\n\nPress SPACE to \nmute background music.";
      pianoMap = loadImage("pianoMap.png"); 
}
}
  
  //  }else{pressed_keys[pr] = false;}
  //}
    
  //void keyReleased(){
  //  if(keyCode == 65){
  //    pressed_keys[0] = false;}
  //}
  
  void press(int pr_boolean){
    if(pressed_keys[pr_boolean] == true){
       fill(29, 17, 53);
       noStroke();
       rect(pr_boolean * 100, 500, 100, 350);
    }
    else{
      fill(255);
    stroke(169);
    rect(w, 500, 100, 350);
    }
  }
    
  //  else{
  //    stroke(169);
  //    rect(w, 500, 100, 350);
  //  }
  //}
  
  
  
}
