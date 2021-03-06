# This file is part of the WaveleT package
# Copyright 2015 2016 Lise Vaudor
# This program is distributed under the GPLv3 license

output$mylogo <- renderImage({
  list(src=findmypath("app/images","logo_toolkat_small.png"),
                       width="252px",height="180px")
}, deleteFile = FALSE)


for(x in 0:10){
  local({  ## sans le "local" tous les outputs renvoient sur une meme image
    i=x
    output[[paste0("catpaw",i)]]=renderImage({
      list(src=findmypath("app/images","catpaw.png"),width="18px",height="28px")
    },deleteFile=FALSE)
  })
}

