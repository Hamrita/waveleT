# This file is part of the WaveleT package
# Copyright 2015 2016 Lise Vaudor
# This program is distributed under the GPLv3 license

f_plotXWT=function(){
  if(input$XWT_info!="rsq" | input$XWT_plot_type=="3) Power=f(T)"){mywt=XWT()}
  if(input$XWT_info=="rsq" & input$XWT_plot_type!="3) Power=f(T)"){mywt=WTC()}
  plotWT(mywt,
         data=xy1y2(),
         plot.type=input$XWT_plot_type,
         plot.sig=input$XWT_plot_sig,
         alpha=input$XWT_alpha,
         info=input$XWT_info,
         mother=input$XWT_filter,
         myperiod=as.numeric(input$XWT_period),
         plot.maxima=input$XWT_plot_maxima,
         plot.minima=input$XWT_plot_minima,
         step=fstep(),
         real_or_sim=input$real_or_sim,
         x_is_date=input$x_is_date,
         plot.cb=input$XWT_plot.cb,
         xlim=input$xlimxwt,
         ylim=input$ylimxwt,
         plot.phase=input$plot.phase
  )
}

output$plotXWT=renderPlot({
  f_plotXWT()
},
height=function(x){input$height},
width=function(x){input$width}
)
