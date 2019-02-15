---
title: "Cleaning Data in R"
author: "Ken Harmon"
date: "2019 February 13"
output:
  html_document:  
    keep_md: true
    code_folding: hide
    fig_height: 6
    fig_width: 12
    fig_align: 'center'
---

# {.tabset .tabset-fade}



## Background

https://www.datacamp.com/courses/ggvis-data-visualization-r-tutorial

https://github.com/JoshuaHaden/Data-Visualization-in-R-with-ggvis-Data-Camp

## Grammar


```r
###Chapter 1 The Grammar Of Graphics

###Load ggvis And Start To Explore
# ggvis is already installed for you; now load it and start playing around
library("ggvis")

# change the code below to plot the disp variable of mtcars on the x axis
mtcars %>% ggvis(~disp, ~mpg) %>% layer_points()
```

<!--html_preserve--><div id="plot_id518010324-container" class="ggvis-output-container">
<div id="plot_id518010324" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id518010324_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id518010324" data-renderer="svg">SVG</a>
 | 
<a id="plot_id518010324_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id518010324" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id518010324_download" class="ggvis-download" data-plot-id="plot_id518010324">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id518010324_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "disp": "number",
          "mpg": "number"
        }
      },
      "values": "\"disp\",\"mpg\"\n160,21\n160,21\n108,22.8\n258,21.4\n360,18.7\n225,18.1\n360,14.3\n146.7,24.4\n140.8,22.8\n167.6,19.2\n167.6,17.8\n275.8,16.4\n275.8,17.3\n275.8,15.2\n472,10.4\n460,10.4\n440,14.7\n78.7,32.4\n75.7,30.4\n71.1,33.9\n120.1,21.5\n318,15.5\n304,15.2\n350,13.3\n400,19.2\n79,27.3\n120.3,26\n95.1,30.4\n351,15.8\n145,19.7\n301,15\n121,21.4"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n51.055\n492.045"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.disp"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "disp"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id518010324").parseSpec(plot_id518010324_spec);
</script><!--/html_preserve-->

```r
###ggvis And Its Capabilities
# The ggvis packages is loaded into the workspace already

# Change the code below to make a graph with red points
mtcars %>% ggvis(~wt, ~mpg, fill := "red") %>% layer_points()
```

<!--html_preserve--><div id="plot_id767789192-container" class="ggvis-output-container">
<div id="plot_id767789192" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id767789192_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id767789192" data-renderer="svg">SVG</a>
 | 
<a id="plot_id767789192_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id767789192" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id767789192_download" class="ggvis-download" data-plot-id="plot_id767789192">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id767789192_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"wt\",\"mpg\"\n2.62,21\n2.875,21\n2.32,22.8\n3.215,21.4\n3.44,18.7\n3.46,18.1\n3.57,14.3\n3.19,24.4\n3.15,22.8\n3.44,19.2\n3.44,17.8\n4.07,16.4\n3.73,17.3\n3.78,15.2\n5.25,10.4\n5.424,10.4\n5.345,14.7\n2.2,32.4\n1.615,30.4\n1.835,33.9\n2.465,21.5\n3.52,15.5\n3.435,15.2\n3.84,13.3\n3.845,19.2\n1.935,27.3\n2.14,26\n1.513,30.4\n3.17,15.8\n2.77,19.7\n3.57,15\n2.78,21.4"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "value": "red"
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id767789192").parseSpec(plot_id767789192_spec);
</script><!--/html_preserve-->

```r
# Change the code below draw smooths instead of points
mtcars %>% ggvis(~wt, ~mpg) %>% layer_smooths()
```

<!--html_preserve--><div id="plot_id557217250-container" class="ggvis-output-container">
<div id="plot_id557217250" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id557217250_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id557217250" data-renderer="svg">SVG</a>
 | 
<a id="plot_id557217250_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id557217250" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id557217250_download" class="ggvis-download" data-plot-id="plot_id557217250">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id557217250_spec = {
  "data": [
    {
      "name": ".0/model_prediction1",
      "format": {
        "type": "csv",
        "parse": {
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"pred_\",\"resp_\"\n1.513,32.08897233857\n1.56250632911392,31.6878645869701\n1.61201265822785,31.2816303797918\n1.66151898734177,30.8703709543688\n1.7110253164557,30.4541875480347\n1.76053164556962,30.0331813981231\n1.81003797468354,29.6074537419677\n1.85954430379747,29.1771058169022\n1.90905063291139,28.7422388602601\n1.95855696202532,28.3001719301536\n2.00806329113924,27.834621969428\n2.05756962025316,27.3476575600419\n2.10707594936709,26.84497968394\n2.15658227848101,26.3322893230667\n2.20608860759494,25.8152874593666\n2.25559493670886,25.2996750747841\n2.30510126582278,24.7911531512637\n2.35460759493671,24.29542267075\n2.40411392405063,23.8181846151875\n2.45362025316456,23.3651399665205\n2.50312658227848,22.9552530395981\n2.55263291139241,22.6138488714952\n2.60213924050633,22.3275852300224\n2.65164556962025,22.0817586181852\n2.70115189873418,21.8616655389892\n2.7506582278481,21.65260249544\n2.80016455696203,21.4398659905432\n2.84967088607595,21.2087525273044\n2.89917721518987,20.953335722037\n2.9486835443038,20.7158424594628\n2.99818987341772,20.4957065225374\n3.04769620253165,20.2829337645837\n3.09720253164557,20.0675300389245\n3.14670886075949,19.8395011988825\n3.19621518987342,19.5888530977805\n3.24572151898734,19.2971559094315\n3.29522784810127,18.9444093670088\n3.34473417721519,18.5670026794964\n3.39424050632911,18.2056968860288\n3.44374683544304,17.9009022641924\n3.49325316455696,17.620602502374\n3.54275949367089,17.3400153015964\n3.59226582278481,17.079077805285\n3.64177215189873,16.8175887231322\n3.69127848101266,16.5575726926136\n3.74078481012658,16.3083303048321\n3.79029113924051,16.0791621508901\n3.83979746835443,15.8793688218903\n3.88930379746835,15.7018119854881\n3.93881012658228,15.5259429561214\n3.9883164556962,15.3517253848296\n4.03782278481013,15.1793328075288\n4.08732911392405,15.0089387601353\n4.13683544303798,14.8407167785652\n4.1863417721519,14.6748403987346\n4.23584810126582,14.5114831565596\n4.28535443037975,14.3508185879563\n4.33486075949367,14.193020228841\n4.3843670886076,14.0382616151298\n4.43387341772152,13.8867162827388\n4.48337974683544,13.7385577675841\n4.53288607594937,13.5939596055819\n4.58239240506329,13.4530953326483\n4.63189873417722,13.3161384846995\n4.68140506329114,13.1832625976516\n4.73091139240506,13.0546412074207\n4.78041772151899,12.930447849923\n4.82992405063291,12.8108560610747\n4.87943037974684,12.6960393767918\n4.92893670886076,12.5861713329905\n4.97844303797468,12.4814254655869\n5.02794936708861,12.3819753104973\n5.07745569620253,12.2879944036376\n5.12696202531646,12.1996562809241\n5.17646835443038,12.117134478273\n5.2259746835443,12.0406025316002\n5.27548101265823,11.9702339768221\n5.32498734177215,11.9062023498547\n5.37449367088608,11.8486811866141\n5.424,11.7978440230166"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n10.7832876072389\n33.1035287543476"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "strokeWidth": {
            "value": 2
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          },
          "fill": {
            "value": "transparent"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/model_prediction1"
          }
        }
      },
      "from": {
        "data": ".0/model_prediction1"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id557217250").parseSpec(plot_id557217250_spec);
</script><!--/html_preserve-->

```r
# Change the code below to make a graph containing both points and a smoothed summary line
mtcars %>% ggvis(~wt, ~mpg) %>% layer_points() %>% layer_smooths()
```

<!--html_preserve--><div id="plot_id441624276-container" class="ggvis-output-container">
<div id="plot_id441624276" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id441624276_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id441624276" data-renderer="svg">SVG</a>
 | 
<a id="plot_id441624276_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id441624276" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id441624276_download" class="ggvis-download" data-plot-id="plot_id441624276">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id441624276_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"wt\",\"mpg\"\n2.62,21\n2.875,21\n2.32,22.8\n3.215,21.4\n3.44,18.7\n3.46,18.1\n3.57,14.3\n3.19,24.4\n3.15,22.8\n3.44,19.2\n3.44,17.8\n4.07,16.4\n3.73,17.3\n3.78,15.2\n5.25,10.4\n5.424,10.4\n5.345,14.7\n2.2,32.4\n1.615,30.4\n1.835,33.9\n2.465,21.5\n3.52,15.5\n3.435,15.2\n3.84,13.3\n3.845,19.2\n1.935,27.3\n2.14,26\n1.513,30.4\n3.17,15.8\n2.77,19.7\n3.57,15\n2.78,21.4"
    },
    {
      "name": ".0/model_prediction1",
      "format": {
        "type": "csv",
        "parse": {
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"pred_\",\"resp_\"\n1.513,32.08897233857\n1.56250632911392,31.6878645869701\n1.61201265822785,31.2816303797918\n1.66151898734177,30.8703709543688\n1.7110253164557,30.4541875480347\n1.76053164556962,30.0331813981231\n1.81003797468354,29.6074537419677\n1.85954430379747,29.1771058169022\n1.90905063291139,28.7422388602601\n1.95855696202532,28.3001719301536\n2.00806329113924,27.834621969428\n2.05756962025316,27.3476575600419\n2.10707594936709,26.84497968394\n2.15658227848101,26.3322893230667\n2.20608860759494,25.8152874593666\n2.25559493670886,25.2996750747841\n2.30510126582278,24.7911531512637\n2.35460759493671,24.29542267075\n2.40411392405063,23.8181846151875\n2.45362025316456,23.3651399665205\n2.50312658227848,22.9552530395981\n2.55263291139241,22.6138488714952\n2.60213924050633,22.3275852300224\n2.65164556962025,22.0817586181852\n2.70115189873418,21.8616655389892\n2.7506582278481,21.65260249544\n2.80016455696203,21.4398659905432\n2.84967088607595,21.2087525273044\n2.89917721518987,20.953335722037\n2.9486835443038,20.7158424594628\n2.99818987341772,20.4957065225374\n3.04769620253165,20.2829337645837\n3.09720253164557,20.0675300389245\n3.14670886075949,19.8395011988825\n3.19621518987342,19.5888530977805\n3.24572151898734,19.2971559094315\n3.29522784810127,18.9444093670088\n3.34473417721519,18.5670026794964\n3.39424050632911,18.2056968860288\n3.44374683544304,17.9009022641924\n3.49325316455696,17.620602502374\n3.54275949367089,17.3400153015964\n3.59226582278481,17.079077805285\n3.64177215189873,16.8175887231322\n3.69127848101266,16.5575726926136\n3.74078481012658,16.3083303048321\n3.79029113924051,16.0791621508901\n3.83979746835443,15.8793688218903\n3.88930379746835,15.7018119854881\n3.93881012658228,15.5259429561214\n3.9883164556962,15.3517253848296\n4.03782278481013,15.1793328075288\n4.08732911392405,15.0089387601353\n4.13683544303798,14.8407167785652\n4.1863417721519,14.6748403987346\n4.23584810126582,14.5114831565596\n4.28535443037975,14.3508185879563\n4.33486075949367,14.193020228841\n4.3843670886076,14.0382616151298\n4.43387341772152,13.8867162827388\n4.48337974683544,13.7385577675841\n4.53288607594937,13.5939596055819\n4.58239240506329,13.4530953326483\n4.63189873417722,13.3161384846995\n4.68140506329114,13.1832625976516\n4.73091139240506,13.0546412074207\n4.78041772151899,12.930447849923\n4.82992405063291,12.8108560610747\n4.87943037974684,12.6960393767918\n4.92893670886076,12.5861713329905\n4.97844303797468,12.4814254655869\n5.02794936708861,12.3819753104973\n5.07745569620253,12.2879944036376\n5.12696202531646,12.1996562809241\n5.17646835443038,12.117134478273\n5.2259746835443,12.0406025316002\n5.27548101265823,11.9702339768221\n5.32498734177215,11.9062023498547\n5.37449367088608,11.8486811866141\n5.424,11.7978440230166"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    },
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "strokeWidth": {
            "value": 2
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          },
          "fill": {
            "value": "transparent"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/model_prediction1"
          }
        }
      },
      "from": {
        "data": ".0/model_prediction1"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id441624276").parseSpec(plot_id441624276_spec);
</script><!--/html_preserve-->

```r
###ggvis Grammar ~ Graphics Grammar
# Adapt the code: show bars instead of points
pressure %>% ggvis(~temperature, ~pressure) %>% layer_bars()
```

<!--html_preserve--><div id="plot_id998150287-container" class="ggvis-output-container">
<div id="plot_id998150287" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id998150287_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id998150287" data-renderer="svg">SVG</a>
 | 
<a id="plot_id998150287_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id998150287" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id998150287_download" class="ggvis-download" data-plot-id="plot_id998150287">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id998150287_spec = {
  "data": [
    {
      "name": ".0/count1/align2/stack3",
      "format": {
        "type": "csv",
        "parse": {
          "xmin_": "number",
          "xmax_": "number",
          "stack_upr_": "number",
          "stack_lwr_": "number"
        }
      },
      "values": "\"xmin_\",\"xmax_\",\"stack_upr_\",\"stack_lwr_\"\n-10,10,2e-04,0\n10,30,0.0012,0\n30,50,0.006,0\n50,70,0.03,0\n70,90,0.09,0\n90,110,0.27,0\n110,130,0.75,0\n130,150,1.85,0\n150,170,4.2,0\n170,190,8.8,0\n190,210,17.3,0\n210,230,32.1,0\n230,250,57,0\n250,270,96,0\n270,290,157,0\n290,310,247,0\n310,330,376,0\n330,350,558,0\n350,370,806,0"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-29\n389"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n846.3"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "rect",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "fill": {
            "value": "#333333"
          },
          "x": {
            "scale": "x",
            "field": "data.xmin_"
          },
          "x2": {
            "scale": "x",
            "field": "data.xmax_"
          },
          "y": {
            "scale": "y",
            "field": "data.stack_upr_"
          },
          "y2": {
            "scale": "y",
            "field": "data.stack_lwr_"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/count1/align2/stack3"
          }
        }
      },
      "from": {
        "data": ".0/count1/align2/stack3"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id998150287").parseSpec(plot_id998150287_spec);
</script><!--/html_preserve-->

```r
# Adapt the codee: show lines instead of points
pressure %>% ggvis(~temperature, ~pressure) %>% layer_lines()
```

<!--html_preserve--><div id="plot_id923082586-container" class="ggvis-output-container">
<div id="plot_id923082586" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id923082586_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id923082586" data-renderer="svg">SVG</a>
 | 
<a id="plot_id923082586_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id923082586" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id923082586_download" class="ggvis-download" data-plot-id="plot_id923082586">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id923082586_spec = {
  "data": [
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id923082586").parseSpec(plot_id923082586_spec);
</script><!--/html_preserve-->

```r
# Extend the code: map the fill property to the temperature variable
pressure %>% ggvis(~temperature, ~pressure, fill = ~temperature) %>% layer_points()
```

<!--html_preserve--><div id="plot_id190945021-container" class="ggvis-output-container">
<div id="plot_id190945021" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id190945021_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id190945021" data-renderer="svg">SVG</a>
 | 
<a id="plot_id190945021_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id190945021" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id190945021_download" class="ggvis-download" data-plot-id="plot_id190945021">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id190945021_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n360"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.temperature"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "temperature"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id190945021").parseSpec(plot_id190945021_spec);
</script><!--/html_preserve-->

```r
# Extend the code: map the size property to the pressure variable
pressure %>% ggvis(~temperature, ~pressure, size = ~pressure) %>% layer_points()
```

<!--html_preserve--><div id="plot_id467544704-container" class="ggvis-output-container">
<div id="plot_id467544704" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id467544704_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id467544704" data-renderer="svg">SVG</a>
 | 
<a id="plot_id467544704_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id467544704" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id467544704_download" class="ggvis-download" data-plot-id="plot_id467544704">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id467544704_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "pressure": "number",
          "temperature": "number"
        }
      },
      "values": "\"pressure\",\"temperature\"\n2e-04,0\n0.0012,20\n0.006,40\n0.03,60\n0.09,80\n0.27,100\n0.75,120\n1.85,140\n4.2,160\n8.8,180\n17.3,200\n32.1,220\n57,240\n96,260\n157,280\n247,300\n376,320\n558,340\n806,360"
    },
    {
      "name": "scale/size",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n2e-04\n806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "size",
      "domain": {
        "data": "scale/size",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": [20, 100]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "scale": "size",
            "field": "data.pressure"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "size": "size",
      "title": "pressure"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id467544704").parseSpec(plot_id467544704_spec);
</script><!--/html_preserve-->

```r
###4 Essential Components Of A Graph
faithful %>%
  ggvis(~waiting, ~eruptions, fill := "red") %>%
  layer_points() %>%
  add_axis("y", title = "Duration of eruption (m)",
           values = c(2, 3, 4, 5), subdivide = 9) %>%
  add_axis("x", title = "Time since previous eruption (m)")
```

<!--html_preserve--><div id="plot_id594209841-container" class="ggvis-output-container">
<div id="plot_id594209841" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id594209841_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id594209841" data-renderer="svg">SVG</a>
 | 
<a id="plot_id594209841_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id594209841" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id594209841_download" class="ggvis-download" data-plot-id="plot_id594209841">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id594209841_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "waiting": "number",
          "eruptions": "number"
        }
      },
      "values": "\"waiting\",\"eruptions\"\n79,3.6\n54,1.8\n74,3.333\n62,2.283\n85,4.533\n55,2.883\n88,4.7\n85,3.6\n51,1.95\n85,4.35\n54,1.833\n84,3.917\n78,4.2\n47,1.75\n83,4.7\n52,2.167\n62,1.75\n84,4.8\n52,1.6\n79,4.25\n51,1.8\n47,1.75\n78,3.45\n69,3.067\n74,4.533\n83,3.6\n55,1.967\n76,4.083\n78,3.85\n79,4.433\n73,4.3\n77,4.467\n66,3.367\n80,4.033\n74,3.833\n52,2.017\n48,1.867\n80,4.833\n59,1.833\n90,4.783\n80,4.35\n58,1.883\n84,4.567\n58,1.75\n73,4.533\n83,3.317\n64,3.833\n53,2.1\n82,4.633\n59,2\n75,4.8\n90,4.716\n54,1.833\n80,4.833\n54,1.733\n83,4.883\n71,3.717\n64,1.667\n77,4.567\n81,4.317\n59,2.233\n84,4.5\n48,1.75\n82,4.8\n60,1.817\n92,4.4\n78,4.167\n78,4.7\n65,2.067\n73,4.7\n82,4.033\n56,1.967\n79,4.5\n71,4\n62,1.983\n76,5.067\n60,2.017\n78,4.567\n76,3.883\n83,3.6\n75,4.133\n82,4.333\n70,4.1\n65,2.633\n73,4.067\n88,4.933\n76,3.95\n80,4.517\n48,2.167\n86,4\n60,2.2\n90,4.333\n50,1.867\n78,4.817\n63,1.833\n72,4.3\n84,4.667\n75,3.75\n51,1.867\n82,4.9\n62,2.483\n88,4.367\n49,2.1\n83,4.5\n81,4.05\n47,1.867\n84,4.7\n52,1.783\n86,4.85\n81,3.683\n75,4.733\n59,2.3\n89,4.9\n79,4.417\n59,1.7\n81,4.633\n50,2.317\n85,4.6\n59,1.817\n87,4.417\n53,2.617\n69,4.067\n77,4.25\n56,1.967\n88,4.6\n81,3.767\n45,1.917\n82,4.5\n55,2.267\n90,4.65\n45,1.867\n83,4.167\n56,2.8\n89,4.333\n46,1.833\n82,4.383\n51,1.883\n86,4.933\n53,2.033\n79,3.733\n81,4.233\n60,2.233\n82,4.533\n77,4.817\n76,4.333\n59,1.983\n80,4.633\n49,2.017\n96,5.1\n53,1.8\n77,5.033\n77,4\n65,2.4\n81,4.6\n71,3.567\n70,4\n81,4.5\n93,4.083\n53,1.8\n89,3.967\n45,2.2\n86,4.15\n58,2\n78,3.833\n66,3.5\n76,4.583\n63,2.367\n88,5\n52,1.933\n93,4.617\n49,1.917\n57,2.083\n77,4.583\n68,3.333\n81,4.167\n81,4.333\n73,4.5\n50,2.417\n85,4\n74,4.167\n55,1.883\n77,4.583\n83,4.25\n83,3.767\n51,2.033\n78,4.433\n84,4.083\n46,1.833\n83,4.417\n55,2.183\n81,4.8\n57,1.833\n76,4.8\n84,4.1\n77,3.966\n81,4.233\n87,3.5\n77,4.366\n51,2.25\n78,4.667\n60,2.1\n82,4.35\n91,4.133\n53,1.867\n78,4.6\n46,1.783\n77,4.367\n84,3.85\n49,1.933\n83,4.5\n71,2.383\n80,4.7\n49,1.867\n75,3.833\n64,3.417\n76,4.233\n53,2.4\n94,4.8\n55,2\n76,4.15\n50,1.867\n82,4.267\n54,1.75\n75,4.483\n78,4\n79,4.117\n78,4.083\n78,4.267\n70,3.917\n79,4.55\n70,4.083\n54,2.417\n86,4.183\n50,2.217\n90,4.45\n54,1.883\n54,1.85\n77,4.283\n79,3.95\n64,2.333\n75,4.15\n47,2.35\n86,4.933\n63,2.9\n85,4.583\n82,3.833\n57,2.083\n82,4.367\n67,2.133\n74,4.35\n54,2.2\n83,4.45\n73,3.567\n73,4.5\n88,4.15\n80,3.817\n71,3.917\n83,4.45\n56,2\n79,4.283\n78,4.767\n84,4.533\n58,1.85\n83,4.25\n43,1.983\n60,2.25\n75,4.75\n81,4.117\n46,2.15\n90,4.417\n46,1.817\n74,4.467"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "value": "red"
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "title": "Duration of eruption (m)",
      "values": [2, 3, 4, 5],
      "subdivide": 9,
      "layer": "back",
      "grid": true
    },
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "title": "Time since previous eruption (m)",
      "layer": "back",
      "grid": true
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id594209841").parseSpec(plot_id594209841_spec);
</script><!--/html_preserve-->

## Lines and Syntax


```r
###Chapter 2 Lines And Syntax

###Three Operators: %>%, = And :=
# Rewrite the code with the pipe operator     
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id712284766-container" class="ggvis-output-container">
<div id="plot_id712284766" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id712284766_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id712284766" data-renderer="svg">SVG</a>
 | 
<a id="plot_id712284766_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id712284766" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id712284766_download" class="ggvis-download" data-plot-id="plot_id712284766">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id712284766_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "waiting": "number",
          "eruptions": "number"
        }
      },
      "values": "\"waiting\",\"eruptions\"\n79,3.6\n54,1.8\n74,3.333\n62,2.283\n85,4.533\n55,2.883\n88,4.7\n85,3.6\n51,1.95\n85,4.35\n54,1.833\n84,3.917\n78,4.2\n47,1.75\n83,4.7\n52,2.167\n62,1.75\n84,4.8\n52,1.6\n79,4.25\n51,1.8\n47,1.75\n78,3.45\n69,3.067\n74,4.533\n83,3.6\n55,1.967\n76,4.083\n78,3.85\n79,4.433\n73,4.3\n77,4.467\n66,3.367\n80,4.033\n74,3.833\n52,2.017\n48,1.867\n80,4.833\n59,1.833\n90,4.783\n80,4.35\n58,1.883\n84,4.567\n58,1.75\n73,4.533\n83,3.317\n64,3.833\n53,2.1\n82,4.633\n59,2\n75,4.8\n90,4.716\n54,1.833\n80,4.833\n54,1.733\n83,4.883\n71,3.717\n64,1.667\n77,4.567\n81,4.317\n59,2.233\n84,4.5\n48,1.75\n82,4.8\n60,1.817\n92,4.4\n78,4.167\n78,4.7\n65,2.067\n73,4.7\n82,4.033\n56,1.967\n79,4.5\n71,4\n62,1.983\n76,5.067\n60,2.017\n78,4.567\n76,3.883\n83,3.6\n75,4.133\n82,4.333\n70,4.1\n65,2.633\n73,4.067\n88,4.933\n76,3.95\n80,4.517\n48,2.167\n86,4\n60,2.2\n90,4.333\n50,1.867\n78,4.817\n63,1.833\n72,4.3\n84,4.667\n75,3.75\n51,1.867\n82,4.9\n62,2.483\n88,4.367\n49,2.1\n83,4.5\n81,4.05\n47,1.867\n84,4.7\n52,1.783\n86,4.85\n81,3.683\n75,4.733\n59,2.3\n89,4.9\n79,4.417\n59,1.7\n81,4.633\n50,2.317\n85,4.6\n59,1.817\n87,4.417\n53,2.617\n69,4.067\n77,4.25\n56,1.967\n88,4.6\n81,3.767\n45,1.917\n82,4.5\n55,2.267\n90,4.65\n45,1.867\n83,4.167\n56,2.8\n89,4.333\n46,1.833\n82,4.383\n51,1.883\n86,4.933\n53,2.033\n79,3.733\n81,4.233\n60,2.233\n82,4.533\n77,4.817\n76,4.333\n59,1.983\n80,4.633\n49,2.017\n96,5.1\n53,1.8\n77,5.033\n77,4\n65,2.4\n81,4.6\n71,3.567\n70,4\n81,4.5\n93,4.083\n53,1.8\n89,3.967\n45,2.2\n86,4.15\n58,2\n78,3.833\n66,3.5\n76,4.583\n63,2.367\n88,5\n52,1.933\n93,4.617\n49,1.917\n57,2.083\n77,4.583\n68,3.333\n81,4.167\n81,4.333\n73,4.5\n50,2.417\n85,4\n74,4.167\n55,1.883\n77,4.583\n83,4.25\n83,3.767\n51,2.033\n78,4.433\n84,4.083\n46,1.833\n83,4.417\n55,2.183\n81,4.8\n57,1.833\n76,4.8\n84,4.1\n77,3.966\n81,4.233\n87,3.5\n77,4.366\n51,2.25\n78,4.667\n60,2.1\n82,4.35\n91,4.133\n53,1.867\n78,4.6\n46,1.783\n77,4.367\n84,3.85\n49,1.933\n83,4.5\n71,2.383\n80,4.7\n49,1.867\n75,3.833\n64,3.417\n76,4.233\n53,2.4\n94,4.8\n55,2\n76,4.15\n50,1.867\n82,4.267\n54,1.75\n75,4.483\n78,4\n79,4.117\n78,4.083\n78,4.267\n70,3.917\n79,4.55\n70,4.083\n54,2.417\n86,4.183\n50,2.217\n90,4.45\n54,1.883\n54,1.85\n77,4.283\n79,3.95\n64,2.333\n75,4.15\n47,2.35\n86,4.933\n63,2.9\n85,4.583\n82,3.833\n57,2.083\n82,4.367\n67,2.133\n74,4.35\n54,2.2\n83,4.45\n73,3.567\n73,4.5\n88,4.15\n80,3.817\n71,3.917\n83,4.45\n56,2\n79,4.283\n78,4.767\n84,4.533\n58,1.85\n83,4.25\n43,1.983\n60,2.25\n75,4.75\n81,4.117\n46,2.15\n90,4.417\n46,1.817\n74,4.467"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "eruptions"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id712284766").parseSpec(plot_id712284766_spec);
</script><!--/html_preserve-->

```r
# Modify this graph to map the size property to the pressure variable
pressure %>% ggvis(~temperature, ~pressure, size = ~pressure) %>% layer_points()
```

<!--html_preserve--><div id="plot_id156575698-container" class="ggvis-output-container">
<div id="plot_id156575698" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id156575698_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id156575698" data-renderer="svg">SVG</a>
 | 
<a id="plot_id156575698_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id156575698" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id156575698_download" class="ggvis-download" data-plot-id="plot_id156575698">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id156575698_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "pressure": "number",
          "temperature": "number"
        }
      },
      "values": "\"pressure\",\"temperature\"\n2e-04,0\n0.0012,20\n0.006,40\n0.03,60\n0.09,80\n0.27,100\n0.75,120\n1.85,140\n4.2,160\n8.8,180\n17.3,200\n32.1,220\n57,240\n96,260\n157,280\n247,300\n376,320\n558,340\n806,360"
    },
    {
      "name": "scale/size",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n2e-04\n806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "size",
      "domain": {
        "data": "scale/size",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": [20, 100]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "scale": "size",
            "field": "data.pressure"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "size": "size",
      "title": "pressure"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id156575698").parseSpec(plot_id156575698_spec);
</script><!--/html_preserve-->

```r
# Modify this graph by setting the size property
pressure %>% ggvis(~temperature, ~pressure, size := 100) %>% layer_points()
```

<!--html_preserve--><div id="plot_id467113181-container" class="ggvis-output-container">
<div id="plot_id467113181" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id467113181_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id467113181" data-renderer="svg">SVG</a>
 | 
<a id="plot_id467113181_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id467113181" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id467113181_download" class="ggvis-download" data-plot-id="plot_id467113181">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id467113181_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 100
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id467113181").parseSpec(plot_id467113181_spec);
</script><!--/html_preserve-->

```r
# Fix this code to set the fill property to red
pressure %>% ggvis(~temperature, ~pressure, fill := "red") %>% layer_points()
```

<!--html_preserve--><div id="plot_id188422456-container" class="ggvis-output-container">
<div id="plot_id188422456" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id188422456_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id188422456" data-renderer="svg">SVG</a>
 | 
<a id="plot_id188422456_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id188422456" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id188422456_download" class="ggvis-download" data-plot-id="plot_id188422456">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id188422456_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "value": "red"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id188422456").parseSpec(plot_id188422456_spec);
</script><!--/html_preserve-->

```r
###Referring To Different Objects
red <- "green"
pressure$red <- pressure$temperature

# GRAPH A
pressure %>%
  ggvis(~temperature, ~pressure,
        fill = ~red) %>%
  layer_points()
```

<!--html_preserve--><div id="plot_id369654323-container" class="ggvis-output-container">
<div id="plot_id369654323" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id369654323_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id369654323" data-renderer="svg">SVG</a>
 | 
<a id="plot_id369654323_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id369654323" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id369654323_download" class="ggvis-download" data-plot-id="plot_id369654323">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id369654323_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "red": "number",
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"red\",\"temperature\",\"pressure\"\n0,0,2e-04\n20,20,0.0012\n40,40,0.006\n60,60,0.03\n80,80,0.09\n100,100,0.27\n120,120,0.75\n140,140,1.85\n160,160,4.2\n180,180,8.8\n200,200,17.3\n220,220,32.1\n240,240,57\n260,260,96\n280,280,157\n300,300,247\n320,320,376\n340,340,558\n360,360,806"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n360"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.red"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "red"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id369654323").parseSpec(plot_id369654323_spec);
</script><!--/html_preserve-->

```r
# GRAPH B
pressure %>%
  ggvis(~temperature, ~pressure,
        fill = "red") %>%
  layer_points()
```

<!--html_preserve--><div id="plot_id777030195-container" class="ggvis-output-container">
<div id="plot_id777030195" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id777030195_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id777030195" data-renderer="svg">SVG</a>
 | 
<a id="plot_id777030195_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id777030195" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id777030195_download" class="ggvis-download" data-plot-id="plot_id777030195">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id777030195_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"red\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "value": "red"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id777030195").parseSpec(plot_id777030195_spec);
</script><!--/html_preserve-->

```r
# GRAPH C
pressure %>%
  ggvis(~temperature, ~pressure,
        fill := red) %>%
  layer_points()
```

<!--html_preserve--><div id="plot_id262927961-container" class="ggvis-output-container">
<div id="plot_id262927961" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id262927961_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id262927961" data-renderer="svg">SVG</a>
 | 
<a id="plot_id262927961_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id262927961" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id262927961_download" class="ggvis-download" data-plot-id="plot_id262927961">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id262927961_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "value": "green"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id262927961").parseSpec(plot_id262927961_spec);
</script><!--/html_preserve-->

```r
###Referring To Diffeent Objects (2)
red <- "green"
pressure$red <- pressure$temperature

# GRAPH A
pressure %>%
  ggvis(~temperature, ~pressure,
        fill = ~red) %>%
  layer_points()
```

<!--html_preserve--><div id="plot_id847886349-container" class="ggvis-output-container">
<div id="plot_id847886349" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id847886349_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id847886349" data-renderer="svg">SVG</a>
 | 
<a id="plot_id847886349_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id847886349" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id847886349_download" class="ggvis-download" data-plot-id="plot_id847886349">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id847886349_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "red": "number",
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"red\",\"temperature\",\"pressure\"\n0,0,2e-04\n20,20,0.0012\n40,40,0.006\n60,60,0.03\n80,80,0.09\n100,100,0.27\n120,120,0.75\n140,140,1.85\n160,160,4.2\n180,180,8.8\n200,200,17.3\n220,220,32.1\n240,240,57\n260,260,96\n280,280,157\n300,300,247\n320,320,376\n340,340,558\n360,360,806"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n360"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.red"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "red"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id847886349").parseSpec(plot_id847886349_spec);
</script><!--/html_preserve-->

```r
# GRAPH B
pressure %>%
  ggvis(~temperature, ~pressure,
        fill = "red") %>%
  layer_points()
```

<!--html_preserve--><div id="plot_id361734768-container" class="ggvis-output-container">
<div id="plot_id361734768" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id361734768_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id361734768" data-renderer="svg">SVG</a>
 | 
<a id="plot_id361734768_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id361734768" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id361734768_download" class="ggvis-download" data-plot-id="plot_id361734768">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id361734768_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"red\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "value": "red"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id361734768").parseSpec(plot_id361734768_spec);
</script><!--/html_preserve-->

```r
# GRAPH C
pressure %>%
  ggvis(~temperature, ~pressure,
        fill := red) %>%
  layer_points()
```

<!--html_preserve--><div id="plot_id677614279-container" class="ggvis-output-container">
<div id="plot_id677614279" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id677614279_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id677614279" data-renderer="svg">SVG</a>
 | 
<a id="plot_id677614279_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id677614279" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id677614279_download" class="ggvis-download" data-plot-id="plot_id677614279">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id677614279_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "value": "green"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id677614279").parseSpec(plot_id677614279_spec);
</script><!--/html_preserve-->

```r
###Properties For Points
# Add code
faithful %>% 
  ggvis(~waiting, ~eruptions, 
        size = ~eruptions, opacity := 0.5, 
        fill := "blue", stroke := "black") %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id929302028-container" class="ggvis-output-container">
<div id="plot_id929302028" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id929302028_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id929302028" data-renderer="svg">SVG</a>
 | 
<a id="plot_id929302028_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id929302028" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id929302028_download" class="ggvis-download" data-plot-id="plot_id929302028">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id929302028_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "eruptions": "number",
          "waiting": "number"
        }
      },
      "values": "\"eruptions\",\"waiting\"\n3.6,79\n1.8,54\n3.333,74\n2.283,62\n4.533,85\n2.883,55\n4.7,88\n3.6,85\n1.95,51\n4.35,85\n1.833,54\n3.917,84\n4.2,78\n1.75,47\n4.7,83\n2.167,52\n1.75,62\n4.8,84\n1.6,52\n4.25,79\n1.8,51\n1.75,47\n3.45,78\n3.067,69\n4.533,74\n3.6,83\n1.967,55\n4.083,76\n3.85,78\n4.433,79\n4.3,73\n4.467,77\n3.367,66\n4.033,80\n3.833,74\n2.017,52\n1.867,48\n4.833,80\n1.833,59\n4.783,90\n4.35,80\n1.883,58\n4.567,84\n1.75,58\n4.533,73\n3.317,83\n3.833,64\n2.1,53\n4.633,82\n2,59\n4.8,75\n4.716,90\n1.833,54\n4.833,80\n1.733,54\n4.883,83\n3.717,71\n1.667,64\n4.567,77\n4.317,81\n2.233,59\n4.5,84\n1.75,48\n4.8,82\n1.817,60\n4.4,92\n4.167,78\n4.7,78\n2.067,65\n4.7,73\n4.033,82\n1.967,56\n4.5,79\n4,71\n1.983,62\n5.067,76\n2.017,60\n4.567,78\n3.883,76\n3.6,83\n4.133,75\n4.333,82\n4.1,70\n2.633,65\n4.067,73\n4.933,88\n3.95,76\n4.517,80\n2.167,48\n4,86\n2.2,60\n4.333,90\n1.867,50\n4.817,78\n1.833,63\n4.3,72\n4.667,84\n3.75,75\n1.867,51\n4.9,82\n2.483,62\n4.367,88\n2.1,49\n4.5,83\n4.05,81\n1.867,47\n4.7,84\n1.783,52\n4.85,86\n3.683,81\n4.733,75\n2.3,59\n4.9,89\n4.417,79\n1.7,59\n4.633,81\n2.317,50\n4.6,85\n1.817,59\n4.417,87\n2.617,53\n4.067,69\n4.25,77\n1.967,56\n4.6,88\n3.767,81\n1.917,45\n4.5,82\n2.267,55\n4.65,90\n1.867,45\n4.167,83\n2.8,56\n4.333,89\n1.833,46\n4.383,82\n1.883,51\n4.933,86\n2.033,53\n3.733,79\n4.233,81\n2.233,60\n4.533,82\n4.817,77\n4.333,76\n1.983,59\n4.633,80\n2.017,49\n5.1,96\n1.8,53\n5.033,77\n4,77\n2.4,65\n4.6,81\n3.567,71\n4,70\n4.5,81\n4.083,93\n1.8,53\n3.967,89\n2.2,45\n4.15,86\n2,58\n3.833,78\n3.5,66\n4.583,76\n2.367,63\n5,88\n1.933,52\n4.617,93\n1.917,49\n2.083,57\n4.583,77\n3.333,68\n4.167,81\n4.333,81\n4.5,73\n2.417,50\n4,85\n4.167,74\n1.883,55\n4.583,77\n4.25,83\n3.767,83\n2.033,51\n4.433,78\n4.083,84\n1.833,46\n4.417,83\n2.183,55\n4.8,81\n1.833,57\n4.8,76\n4.1,84\n3.966,77\n4.233,81\n3.5,87\n4.366,77\n2.25,51\n4.667,78\n2.1,60\n4.35,82\n4.133,91\n1.867,53\n4.6,78\n1.783,46\n4.367,77\n3.85,84\n1.933,49\n4.5,83\n2.383,71\n4.7,80\n1.867,49\n3.833,75\n3.417,64\n4.233,76\n2.4,53\n4.8,94\n2,55\n4.15,76\n1.867,50\n4.267,82\n1.75,54\n4.483,75\n4,78\n4.117,79\n4.083,78\n4.267,78\n3.917,70\n4.55,79\n4.083,70\n2.417,54\n4.183,86\n2.217,50\n4.45,90\n1.883,54\n1.85,54\n4.283,77\n3.95,79\n2.333,64\n4.15,75\n2.35,47\n4.933,86\n2.9,63\n4.583,85\n3.833,82\n2.083,57\n4.367,82\n2.133,67\n4.35,74\n2.2,54\n4.45,83\n3.567,73\n4.5,73\n4.15,88\n3.817,80\n3.917,71\n4.45,83\n2,56\n4.283,79\n4.767,78\n4.533,84\n1.85,58\n4.25,83\n1.983,43\n2.25,60\n4.75,75\n4.117,81\n2.15,46\n4.417,90\n1.817,46\n4.467,74"
    },
    {
      "name": "scale/size",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.6\n5.1"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "size",
      "domain": {
        "data": "scale/size",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": [20, 100]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "scale": "size",
            "field": "data.eruptions"
          },
          "opacity": {
            "value": 0.5
          },
          "fill": {
            "value": "blue"
          },
          "stroke": {
            "value": "black"
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "size": "size",
      "title": "eruptions"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "eruptions"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id929302028").parseSpec(plot_id929302028_spec);
</script><!--/html_preserve-->

```r
# Add code
faithful %>% 
  ggvis(~waiting, ~eruptions, 
        fillOpacity = ~eruptions, size := 100,  
        fill := "red", stroke := "red", shape := "cross") %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id653353308-container" class="ggvis-output-container">
<div id="plot_id653353308" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id653353308_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id653353308" data-renderer="svg">SVG</a>
 | 
<a id="plot_id653353308_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id653353308" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id653353308_download" class="ggvis-download" data-plot-id="plot_id653353308">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id653353308_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "eruptions": "number",
          "waiting": "number"
        }
      },
      "values": "\"eruptions\",\"waiting\"\n3.6,79\n1.8,54\n3.333,74\n2.283,62\n4.533,85\n2.883,55\n4.7,88\n3.6,85\n1.95,51\n4.35,85\n1.833,54\n3.917,84\n4.2,78\n1.75,47\n4.7,83\n2.167,52\n1.75,62\n4.8,84\n1.6,52\n4.25,79\n1.8,51\n1.75,47\n3.45,78\n3.067,69\n4.533,74\n3.6,83\n1.967,55\n4.083,76\n3.85,78\n4.433,79\n4.3,73\n4.467,77\n3.367,66\n4.033,80\n3.833,74\n2.017,52\n1.867,48\n4.833,80\n1.833,59\n4.783,90\n4.35,80\n1.883,58\n4.567,84\n1.75,58\n4.533,73\n3.317,83\n3.833,64\n2.1,53\n4.633,82\n2,59\n4.8,75\n4.716,90\n1.833,54\n4.833,80\n1.733,54\n4.883,83\n3.717,71\n1.667,64\n4.567,77\n4.317,81\n2.233,59\n4.5,84\n1.75,48\n4.8,82\n1.817,60\n4.4,92\n4.167,78\n4.7,78\n2.067,65\n4.7,73\n4.033,82\n1.967,56\n4.5,79\n4,71\n1.983,62\n5.067,76\n2.017,60\n4.567,78\n3.883,76\n3.6,83\n4.133,75\n4.333,82\n4.1,70\n2.633,65\n4.067,73\n4.933,88\n3.95,76\n4.517,80\n2.167,48\n4,86\n2.2,60\n4.333,90\n1.867,50\n4.817,78\n1.833,63\n4.3,72\n4.667,84\n3.75,75\n1.867,51\n4.9,82\n2.483,62\n4.367,88\n2.1,49\n4.5,83\n4.05,81\n1.867,47\n4.7,84\n1.783,52\n4.85,86\n3.683,81\n4.733,75\n2.3,59\n4.9,89\n4.417,79\n1.7,59\n4.633,81\n2.317,50\n4.6,85\n1.817,59\n4.417,87\n2.617,53\n4.067,69\n4.25,77\n1.967,56\n4.6,88\n3.767,81\n1.917,45\n4.5,82\n2.267,55\n4.65,90\n1.867,45\n4.167,83\n2.8,56\n4.333,89\n1.833,46\n4.383,82\n1.883,51\n4.933,86\n2.033,53\n3.733,79\n4.233,81\n2.233,60\n4.533,82\n4.817,77\n4.333,76\n1.983,59\n4.633,80\n2.017,49\n5.1,96\n1.8,53\n5.033,77\n4,77\n2.4,65\n4.6,81\n3.567,71\n4,70\n4.5,81\n4.083,93\n1.8,53\n3.967,89\n2.2,45\n4.15,86\n2,58\n3.833,78\n3.5,66\n4.583,76\n2.367,63\n5,88\n1.933,52\n4.617,93\n1.917,49\n2.083,57\n4.583,77\n3.333,68\n4.167,81\n4.333,81\n4.5,73\n2.417,50\n4,85\n4.167,74\n1.883,55\n4.583,77\n4.25,83\n3.767,83\n2.033,51\n4.433,78\n4.083,84\n1.833,46\n4.417,83\n2.183,55\n4.8,81\n1.833,57\n4.8,76\n4.1,84\n3.966,77\n4.233,81\n3.5,87\n4.366,77\n2.25,51\n4.667,78\n2.1,60\n4.35,82\n4.133,91\n1.867,53\n4.6,78\n1.783,46\n4.367,77\n3.85,84\n1.933,49\n4.5,83\n2.383,71\n4.7,80\n1.867,49\n3.833,75\n3.417,64\n4.233,76\n2.4,53\n4.8,94\n2,55\n4.15,76\n1.867,50\n4.267,82\n1.75,54\n4.483,75\n4,78\n4.117,79\n4.083,78\n4.267,78\n3.917,70\n4.55,79\n4.083,70\n2.417,54\n4.183,86\n2.217,50\n4.45,90\n1.883,54\n1.85,54\n4.283,77\n3.95,79\n2.333,64\n4.15,75\n2.35,47\n4.933,86\n2.9,63\n4.583,85\n3.833,82\n2.083,57\n4.367,82\n2.133,67\n4.35,74\n2.2,54\n4.45,83\n3.567,73\n4.5,73\n4.15,88\n3.817,80\n3.917,71\n4.45,83\n2,56\n4.283,79\n4.767,78\n4.533,84\n1.85,58\n4.25,83\n1.983,43\n2.25,60\n4.75,75\n4.117,81\n2.15,46\n4.417,90\n1.817,46\n4.467,74"
    },
    {
      "name": "scale/opacity",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.6\n5.1"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "opacity",
      "domain": {
        "data": "scale/opacity",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": [0, 1]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fillOpacity": {
            "scale": "opacity",
            "field": "data.eruptions"
          },
          "size": {
            "value": 100
          },
          "fill": {
            "value": "red"
          },
          "stroke": {
            "value": "red"
          },
          "shape": {
            "value": "cross"
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "eruptions"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id653353308").parseSpec(plot_id653353308_spec);
</script><!--/html_preserve-->

```r
###Properties For Lines
# Update the code
pressure %>% 
  ggvis(~temperature, ~pressure, 
        stroke := "red", strokeWidth := 2, strokeDash := 6) %>% 
  layer_lines()
```

<!--html_preserve--><div id="plot_id350589718-container" class="ggvis-output-container">
<div id="plot_id350589718" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id350589718_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id350589718" data-renderer="svg">SVG</a>
 | 
<a id="plot_id350589718_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id350589718" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id350589718_download" class="ggvis-download" data-plot-id="plot_id350589718">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id350589718_spec = {
  "data": [
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "red"
          },
          "strokeWidth": {
            "value": 2
          },
          "strokeDash": {
            "value": 6
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id350589718").parseSpec(plot_id350589718_spec);
</script><!--/html_preserve-->

```r
###Path Marks And Polygons
# Update the plot
# Texas available in Data Camp workspace
texas <- read.csv("texas.csv")
# See Texas.png for the resulting plot
texas %>% ggvis(~long, ~lat, fill := "darkorange") %>% layer_paths()
```

<!--html_preserve--><div id="plot_id728453292-container" class="ggvis-output-container">
<div id="plot_id728453292" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id728453292_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id728453292" data-renderer="svg">SVG</a>
 | 
<a id="plot_id728453292_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id728453292" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id728453292_download" class="ggvis-download" data-plot-id="plot_id728453292">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id728453292_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "long": "number",
          "lat": "number"
        }
      },
      "values": "\"long\",\"lat\"\n-94.4979248046875,33.6669998168945\n-94.4807434082031,33.6555404663086\n-94.4750137329102,33.6326217651367\n-94.4635543823242,33.6154365539551\n-94.4520874023438,33.5982437133789\n-94.4234466552734,33.5982437133789\n-94.40625,33.5753288269043\n-94.4005279541016,33.5695991516113\n-94.3661499023438,33.5753288269043\n-94.3088531494141,33.5695991516113\n-94.2973937988281,33.5753288269043\n-94.2802047729492,33.586784362793\n-94.2630157470703,33.586784362793\n-94.2400970458984,33.5753288269043\n-94.2286376953125,33.5982437133789\n-94.2229080200195,33.6097030639648\n-94.2057189941406,33.6154365539551\n-94.1885375976562,33.6097030639648\n-94.1541595458984,33.586784362793\n-94.1484298706055,33.586784362793\n-94.1197738647461,33.5925178527832\n-94.0911254882812,33.5982437133789\n-94.0796661376953,33.586784362793\n-94.056755065918,33.5753288269043\n-94.051025390625,33.3003082275391\n-94.051025390625,33.0367469787598\n-94.051025390625,32.8992347717285\n-94.051025390625,32.7101631164551\n-94.051025390625,32.4064903259277\n-94.051025390625,32.2116889953613\n-94.056755065918,32.0168800354004\n-94.0109176635742,31.9882354736328\n-93.9593505859375,31.9366664886475\n-93.9077835083008,31.8908290863037\n-93.873405456543,31.8564529418945\n-93.873405456543,31.8278045654297\n-93.8447570800781,31.8048877716064\n-93.8332977294922,31.7876968383789\n-93.8332977294922,31.7590503692627\n-93.8161087036133,31.7304019927979\n-93.7989196777344,31.7132129669189\n-93.8103790283203,31.6960258483887\n-93.8275680541992,31.6845645904541\n-93.8390274047852,31.6731071472168\n-93.8390274047852,31.6501884460449\n-93.8218383789062,31.6387310028076\n-93.8275680541992,31.627269744873\n-93.8390274047852,31.6158123016357\n-93.8447570800781,31.5986232757568\n-93.8218383789062,31.5814323425293\n-93.7989196777344,31.5413246154785\n-93.7760009765625,31.5298671722412\n-93.7473526000977,31.5298671722412\n-93.7301635742188,31.5184097290039\n-93.7416305541992,31.5069484710693\n-93.7530822753906,31.4783000946045\n-93.7187042236328,31.4611110687256\n-93.7015228271484,31.4210052490234\n-93.6614074707031,31.3808975219727\n-93.6671371459961,31.3694400787354\n-93.684326171875,31.3407917022705\n-93.7015228271484,31.3236026763916\n-93.6957931518555,31.3121452331543\n-93.678596496582,31.3006839752197\n-93.6499557495117,31.2892265319824\n-93.6270294189453,31.2663078308105\n-93.6098480224609,31.2433891296387\n-93.6098480224609,31.2204704284668\n-93.5754699707031,31.1975517272949\n-93.5468139648438,31.2032814025879\n-93.5525512695312,31.1459865570068\n-93.5640106201172,31.1058807373047\n-93.5468139648438,31.0657730102539\n-93.5353622436523,31.0485820770264\n-93.5468139648438,31.0256633758545\n-93.5640106201172,31.0142059326172\n-93.5811920166016,30.9970169067383\n-93.5697402954102,30.979829788208\n-93.5582809448242,30.9683685302734\n-93.5468139648438,30.9511795043945\n-93.5468139648438,30.9339923858643\n-93.5640106201172,30.9168033599854\n-93.5754699707031,30.8996162414551\n-93.5640106201172,30.8824234008789\n-93.5754699707031,30.8537788391113\n-93.5811920166016,30.8365898132324\n-93.598388671875,30.8079414367676\n-93.6499557495117,30.727725982666\n-93.6671371459961,30.6876201629639\n-93.7015228271484,30.6532440185547\n-93.7015228271484,30.6303253173828\n-93.7015228271484,30.6131362915039\n-93.7187042236328,30.6016750335693\n-93.7301635742188,30.5844879150391\n-93.7416305541992,30.5443801879883\n-93.7301635742188,30.5042743682861\n-93.7187042236328,30.4584369659424\n-93.7301635742188,30.4412479400635\n-93.7301635742188,30.4183292388916\n-93.7530822753906,30.4011421203613\n-93.7588119506836,30.3323860168457\n-93.7473526000977,30.3209266662598\n-93.7129745483398,30.2808208465576\n-93.678596496582,30.2464408874512\n-93.6900634765625,30.2235221862793\n-93.684326171875,30.2006072998047\n-93.7015228271484,30.137580871582\n-93.7244338989258,30.0917434692383\n-93.7129745483398,30.0688247680664\n-93.7416305541992,30.0401763916016\n-93.7645416259766,30.0172576904297\n-93.7989196777344,29.9771499633789\n-93.8046493530273,29.9599628448486\n-93.8332977294922,29.9255867004395\n-93.861946105957,29.8797492980957\n-93.9077835083008,29.8511028289795\n-93.9307022094727,29.822452545166\n-93.9307022094727,29.7995338439941\n-93.9077835083008,29.7766151428223\n-93.8848648071289,29.7766151428223\n-93.8447570800781,29.7365093231201\n-93.873405456543,29.7365093231201\n-94.0395584106445,29.7078590393066\n-94.0682144165039,29.7078590393066\n-94.3203125,29.6104583740234\n-94.3604202270508,29.5932693481445\n-94.3833389282227,29.5875396728516\n-94.4291763305664,29.5760822296143\n-94.4750137329102,29.5588932037354\n-94.5323028564453,29.5359745025635\n-94.6125183105469,29.5015983581543\n-94.6812744140625,29.4614887237549\n-94.7213821411133,29.4213809967041\n-94.7500305175781,29.4099235534668\n-94.767219543457,29.3984661102295\n-94.7844085693359,29.4099235534668\n-94.7844085693359,29.4213809967041\n-94.767219543457,29.444299697876\n-94.7156524658203,29.4729499816895\n-94.6812744140625,29.5130558013916\n-94.6526260375977,29.5130558013916\n-94.6354370117188,29.5245132446289\n-94.6125183105469,29.5474319458008\n-94.5953369140625,29.5588932037354\n-94.5494995117188,29.5588932037354\n-94.5265731811523,29.5646209716797\n-94.5380325317383,29.5932693481445\n-94.5666885375977,29.6047306060791\n-94.6125183105469,29.5875396728516\n-94.68701171875,29.5760822296143\n-94.7557601928711,29.5588932037354\n-94.778678894043,29.5588932037354\n-94.7901382446289,29.5703506469727\n-94.7844085693359,29.5875396728516\n-94.767219543457,29.621919631958\n-94.7328414916992,29.6792144775391\n-94.7099227905273,29.7823467254639\n-94.6927337646484,29.822452545166\n-94.6984634399414,29.8396415710449\n-94.7099227905273,29.8453712463379\n-94.7385711669922,29.816722869873\n-94.7901382446289,29.7995338439941\n-94.8474349975586,29.765157699585\n-94.8818130493164,29.7250518798828\n-94.9104614257812,29.6906719207764\n-94.9276504516602,29.6906719207764\n-94.9677581787109,29.7193202972412\n-94.9963989257812,29.7422389984131\n-95.0193252563477,29.7479705810547\n-95.0021362304688,29.7536964416504\n-95.0307769775391,29.7422389984131\n-95.036506652832,29.7307777404785\n-95.0135955810547,29.7078590393066\n-95.0135955810547,29.6964015960693\n-95.0250473022461,29.6677532196045\n-95.0021362304688,29.6505641937256\n-94.9906692504883,29.6276454925537\n-95.0078659057617,29.5932693481445\n-95.0193252563477,29.5818119049072\n-95.0193252563477,29.5588932037354\n-95.0021362304688,29.5474319458008\n-94.9677581787109,29.5359745025635\n-94.9333801269531,29.5245132446289\n-94.9333801269531,29.5073261260986\n-94.962028503418,29.4901371002197\n-94.962028503418,29.4729499816895\n-94.9219207763672,29.4672183990479\n-94.9104614257812,29.4328422546387\n-94.9104614257812,29.3927364349365\n-94.9161911010742,29.3526287078857\n-94.9276504516602,29.3354396820068\n-94.956298828125,29.3411674499512\n-94.9734878540039,29.3468990325928\n-95.0479736328125,29.2609539031982\n-95.0766143798828,29.2265777587891\n-95.1224517822266,29.2151165008545\n-95.1396484375,29.2208461761475\n-95.1568298339844,29.2380352020264\n-95.1740188598633,29.232307434082\n-95.1740188598633,29.1979274749756\n-95.1797485351562,29.1635513305664\n-95.2083969116211,29.1520938873291\n-95.231315612793,29.1291751861572\n-95.231315612793,29.1062564849854\n-95.2141265869141,29.0947952270508\n-95.1682891845703,29.1119842529297\n-95.1625595092773,29.1005268096924\n-95.2026672363281,29.0432319641113\n-95.2943420410156,28.9859371185303\n-95.3573608398438,28.9458293914795\n-95.4031982421875,28.9229106903076\n-95.5521774291992,28.8426971435547\n-95.6438446044922,28.7853984832764\n-95.7469787597656,28.7281036376953\n-95.8787612915039,28.6650772094727\n-96.0048141479492,28.6192417144775\n-96.125129699707,28.5562171936035\n-96.2798309326172,28.4760036468506\n-96.3371200561523,28.4301662445068\n-96.3657760620117,28.4129772186279\n-96.3829574584961,28.4301662445068\n-96.3772354125977,28.4358959197998\n-96.3543090820312,28.4760036468506\n-96.3084716796875,28.4817314147949\n-96.2397232055664,28.5275688171387\n-96.1136703491211,28.5848636627197\n-96.0563735961914,28.6135120391846\n-96.0162658691406,28.6421604156494\n-95.9933471679688,28.6650772094727\n-95.9016723632812,28.6822662353516\n-95.7813568115234,28.7452907562256\n-95.7584381103516,28.7624797821045\n-95.7584381103516,28.7853984832764\n-95.7813568115234,28.7853984832764\n-95.8157272338867,28.7853984832764\n-95.8615646362305,28.7567520141602\n-95.9188690185547,28.7452907562256\n-95.9933471679688,28.7109146118164\n-96.130859375,28.6364307403564\n-96.1824264526367,28.6192417144775\n-96.2339935302734,28.5905952453613\n-96.2569046020508,28.6135120391846\n-96.2569046020508,28.6307010650635\n-96.1938858032227,28.6307010650635\n-96.1881561279297,28.6421604156494\n-96.1996154785156,28.6536197662354\n-96.2397232055664,28.6478900909424\n-96.2397232055664,28.6650772094727\n-96.2110748291016,28.7452907562256\n-96.2110748291016,28.7682094573975\n-96.222526550293,28.7682094573975\n-96.2454528808594,28.7223720550537\n-96.2741012573242,28.6994533538818\n-96.2798309326172,28.7281036376953\n-96.2855606079102,28.7452907562256\n-96.2970123291016,28.716646194458\n-96.319938659668,28.6708087921143\n-96.3600387573242,28.6536197662354\n-96.3829574584961,28.6708087921143\n-96.405876159668,28.7109146118164\n-96.4116134643555,28.7452907562256\n-96.4402542114258,28.7281036376953\n-96.4402542114258,28.6994533538818\n-96.400146484375,28.6307010650635\n-96.4517135620117,28.6077823638916\n-96.4860916137695,28.5848636627197\n-96.5032806396484,28.5963230133057\n-96.4860916137695,28.6077823638916\n-96.4631729125977,28.6249713897705\n-96.4746322631836,28.6708087921143\n-96.4918212890625,28.6307010650635\n-96.5147399902344,28.6307010650635\n-96.5261993408203,28.6536197662354\n-96.5433883666992,28.6879959106445\n-96.58349609375,28.6708087921143\n-96.5949554443359,28.7109146118164\n-96.6121444702148,28.7281036376953\n-96.6522521972656,28.7223720550537\n-96.66943359375,28.7281036376953\n-96.6579818725586,28.6879959106445\n-96.6407928466797,28.6364307403564\n-96.6579818725586,28.6077823638916\n-96.6579818725586,28.5905952453613\n-96.6407928466797,28.5905952453613\n-96.6006851196289,28.5963230133057\n-96.577766418457,28.6020526885986\n-96.5261993408203,28.5676765441895\n-96.5147399902344,28.5504856109619\n-96.5548477172852,28.5332984924316\n-96.58349609375,28.5103797912598\n-96.589225769043,28.4931907653809\n-96.5548477172852,28.4931907653809\n-96.5147399902344,28.5103797912598\n-96.4689025878906,28.5161094665527\n-96.4345245361328,28.4645442962646\n-96.4746322631836,28.4416255950928\n-96.4975509643555,28.4244365692139\n-96.5147399902344,28.4301662445068\n-96.5376586914062,28.407247543335\n-96.6178741455078,28.3671398162842\n-96.6522521972656,28.3499526977539\n-96.6866302490234,28.338493347168\n-96.6980895996094,28.3442230224609\n-96.7152709960938,28.3614120483398\n-96.7267379760742,28.4244365692139\n-96.7381973266602,28.4358959197998\n-96.772575378418,28.4473533630371\n-96.7954864501953,28.4760036468506\n-96.8012161254883,28.4989204406738\n-96.8241424560547,28.5046501159668\n-96.8355941772461,28.4931907653809\n-96.8298721313477,28.470272064209\n-96.8012161254883,28.4473533630371\n-96.7954864501953,28.4244365692139\n-96.7954864501953,28.407247543335\n-96.8126754760742,28.407247543335\n-96.8355941772461,28.4301662445068\n-96.858512878418,28.4358959197998\n-96.8699798583984,28.4187068939209\n-96.852783203125,28.401517868042\n-96.8298721313477,28.3728713989258\n-96.8069458007812,28.3442230224609\n-96.8012161254883,28.3155746459961\n-96.8126754760742,28.2869262695312\n-96.8069458007812,28.2582778930664\n-96.8241424560547,28.2181720733643\n-96.8757019042969,28.1952533721924\n-96.9100875854492,28.1666049957275\n-96.9444580078125,28.1494159698486\n-96.9444580078125,28.1837940216064\n-96.9272689819336,28.2410907745361\n-96.9215393066406,28.2697372436523\n-96.9444580078125,28.2754669189453\n-96.9902954101562,28.2525482177734\n-96.9845657348633,28.2353591918945\n-96.9731063842773,28.2181720733643\n-96.9616470336914,28.1952533721924\n-96.9731063842773,28.1723346710205\n-97.0017547607422,28.1551456451416\n-97.0361328125,28.1551456451416\n-97.041862487793,28.1723346710205\n-97.0361328125,28.2009811401367\n-97.0590515136719,28.2181720733643\n-97.0762405395508,28.2067127227783\n-97.1106185913086,28.1895236968994\n-97.1220703125,28.1723346710205\n-97.1449966430664,28.1666049957275\n-97.1621780395508,28.1837940216064\n-97.1908340454102,28.1895236968994\n-97.2137451171875,28.1837940216064\n-97.1908340454102,28.1608753204346\n-97.1908340454102,28.1494159698486\n-97.2022857666016,28.1264991760254\n-97.2481231689453,28.0978488922119\n-97.2653121948242,28.0978488922119\n-97.2538528442383,28.0749320983887\n-97.1392669677734,27.8915843963623\n-97.1965637207031,27.8572082519531\n-97.2309417724609,27.8400192260742\n-97.2481231689453,27.8400192260742\n-97.2710494995117,27.8686676025391\n-97.2939605712891,27.880126953125\n-97.3168869018555,27.880126953125\n-97.3569869995117,27.874397277832\n-97.3913650512695,27.8915843963623\n-97.4085540771484,27.8973159790039\n-97.48876953125,27.880126953125\n-97.5116882324219,27.8973159790039\n-97.5403366088867,27.8973159790039\n-97.5689849853516,27.8915843963623\n-97.5460662841797,27.8629379272461\n-97.5174179077148,27.8457489013672\n-97.4715805053711,27.8342895507812\n-97.4429321289062,27.8342895507812\n-97.4200134277344,27.8514785766602\n-97.4028244018555,27.8285598754883\n-97.4085540771484,27.8171005249023\n-97.4142837524414,27.7884540557861\n-97.4142837524414,27.7598037719727\n-97.3856353759766,27.7368869781494\n-97.3627243041992,27.7139682769775\n-97.3627243041992,27.7025089263916\n-97.3856353759766,27.6795902252197\n-97.3970947265625,27.6566715240479\n-97.3856353759766,27.6452121734619\n-97.3684463500977,27.6566715240479\n-97.3283386230469,27.6967792510986\n-97.311149597168,27.7082386016846\n-97.299690246582,27.6910495758057\n-97.2939605712891,27.6681308746338\n-97.3226165771484,27.6337547302246\n-97.3455276489258,27.5592708587646\n-97.3741760253906,27.4733257293701\n-97.4028244018555,27.4389476776123\n-97.4257431030273,27.3759250640869\n-97.4658508300781,27.3243579864502\n-97.48876953125,27.3128986358643\n-97.5174179077148,27.2899799346924\n-97.5517959594727,27.2957096099854\n-97.5689849853516,27.3128986358643\n-97.5403366088867,27.3186283111572\n-97.5174179077148,27.3415470123291\n-97.5116882324219,27.3759250640869\n-97.5116882324219,27.421760559082\n-97.5288772583008,27.427490234375\n-97.5403366088867,27.421760559082\n-97.5345993041992,27.3931121826172\n-97.5575256347656,27.364465713501\n-97.57470703125,27.3415470123291\n-97.6205444335938,27.3415470123291\n-97.6320114135742,27.3358173370361\n-97.6148147583008,27.3071689605713\n-97.6320114135742,27.3014392852783\n-97.6549224853516,27.3071689605713\n-97.6663818359375,27.3415470123291\n-97.7007598876953,27.3587341308594\n-97.7236862182617,27.3931121826172\n-97.7809753417969,27.4618663787842\n-97.7981643676758,27.4675979614258\n-97.8038940429688,27.4561386108398\n-97.763786315918,27.4160308837891\n-97.763786315918,27.3931121826172\n-97.7351455688477,27.364465713501\n-97.7351455688477,27.3415470123291\n-97.7064895629883,27.3186283111572\n-97.6950378417969,27.3014392852783\n-97.7064895629883,27.2899799346924\n-97.758056640625,27.2785205841064\n-97.758056640625,27.2670612335205\n-97.7236862182617,27.2498722076416\n-97.6893081665039,27.2441425323486\n-97.6492004394531,27.2498722076416\n-97.6148147583008,27.2556018829346\n-97.5919036865234,27.2498722076416\n-97.5632553100586,27.2326850891113\n-97.5345993041992,27.2441425323486\n-97.5059585571289,27.2556018829346\n-97.4773101806641,27.2670612335205\n-97.4543914794922,27.2556018829346\n-97.4543914794922,27.1983070373535\n-97.4543914794922,27.1524696350098\n-97.4715805053711,27.1295528411865\n-97.494499206543,27.1180934906006\n-97.5059585571289,27.0951747894287\n-97.494499206543,27.0665264129639\n-97.48876953125,27.049337387085\n-97.5002288818359,27.0264205932617\n-97.5460662841797,27.0092296600342\n-97.5575256347656,26.9920425415039\n-97.5689849853516,26.969123840332\n-97.5575256347656,26.9290161132812\n-97.5689849853516,26.900369644165\n-97.5689849853516,26.8545322418213\n-97.5403366088867,26.8373432159424\n-97.5116882324219,26.8086948394775\n-97.494499206543,26.7628574371338\n-97.4658508300781,26.6539974212646\n-97.4543914794922,26.6081600189209\n-97.4429321289062,26.5508651733398\n-97.4543914794922,26.527946472168\n-97.4715805053711,26.4878387451172\n-97.4543914794922,26.4190845489502\n-97.4200134277344,26.4133548736572\n-97.3913650512695,26.3904361724854\n-97.3741760253906,26.3617877960205\n-97.3741760253906,26.3044929504395\n-97.3627243041992,26.2873020172119\n-97.3397979736328,26.2987613677979\n-97.3226165771484,26.2873020172119\n-97.3340682983398,26.2701148986816\n-97.3455276489258,26.2300071716309\n-97.305419921875,26.2128200531006\n-97.3168869018555,26.1669826507568\n-97.3168869018555,26.144063949585\n-97.311149597168,26.1211471557617\n-97.2825088500977,26.1039562225342\n-97.2538528442383,26.1154155731201\n-97.2309417724609,26.1211471557617\n-97.2137451171875,26.1039562225342\n-97.225212097168,26.0867691040039\n-97.2538528442383,26.069580078125\n-97.2653121948242,26.0409317016602\n-97.2538528442383,26.0008239746094\n-97.2194747924805,26.0122833251953\n-97.225212097168,26.0294723510742\n-97.2080154418945,26.0409317016602\n-97.1793746948242,26.0122833251953\n-97.1851043701172,26.063850402832\n-97.1793746948242,26.0810375213623\n-97.1564559936523,26.0810375213623\n-97.1507263183594,26.0581207275391\n-97.1679077148438,25.9664478302002\n-97.2710494995117,25.9664478302002\n-97.2939605712891,25.9607181549072\n-97.2939605712891,25.9435291290283\n-97.299690246582,25.9377994537354\n-97.3340682983398,25.9377994537354\n-97.3627243041992,25.9377994537354\n-97.3741760253906,25.9377994537354\n-97.3684463500977,25.9377994537354\n-97.3741760253906,25.9377994537354\n-97.3970947265625,25.9377994537354\n-97.4142837524414,25.9377994537354\n-97.4257431030273,25.9377994537354\n-97.4486618041992,25.9377994537354\n-97.4773101806641,25.9377994537354\n-97.494499206543,25.9377994537354\n-97.5231475830078,25.9377994537354\n-97.6148147583008,25.9779052734375\n-97.6492004394531,26.0352020263672\n-97.677848815918,26.0409317016602\n-97.7064895629883,26.0352020263672\n-97.7351455688477,26.0352020263672\n-97.7695236206055,26.0466613769531\n-97.7924346923828,26.0409317016602\n-97.8096237182617,26.063850402832\n-97.8268127441406,26.0523910522461\n-97.8440017700195,26.069580078125\n-97.8669204711914,26.069580078125\n-97.9585952758789,26.069580078125\n-97.9815139770508,26.0581207275391\n-97.9929733276367,26.069580078125\n-98.0158920288086,26.069580078125\n-98.0559997558594,26.0523910522461\n-98.0789108276367,26.0523910522461\n-98.1075592041016,26.069580078125\n-98.1247482299805,26.063850402832\n-98.1591262817383,26.0581207275391\n-98.1763229370117,26.069580078125\n-98.1935043334961,26.075309753418\n-98.2221603393555,26.075309753418\n-98.2851791381836,26.0982284545898\n-98.2851791381836,26.1211471557617\n-98.2966384887695,26.132604598999\n-98.3080978393555,26.132604598999\n-98.3195571899414,26.1211471557617\n-98.3310165405273,26.1211471557617\n-98.3482055664062,26.1669826507568\n-98.3653945922852,26.1669826507568\n-98.388313293457,26.1669826507568\n-98.4055023193359,26.1727123260498\n-98.4112319946289,26.195629119873\n-98.4341506958008,26.195629119873\n-98.4513397216797,26.2013607025146\n-98.4570693969727,26.2242794036865\n-98.4685287475586,26.2357368469238\n-98.4914474487305,26.2242794036865\n-98.5086364746094,26.2242794036865\n-98.5372848510742,26.2471961975098\n-98.5601959228516,26.2529258728027\n-98.5716552734375,26.2414665222168\n-98.583122253418,26.2471961975098\n-98.5945816040039,26.2586555480957\n-98.6289596557617,26.2586555480957\n-98.6404190063477,26.2414665222168\n-98.669059753418,26.2471961975098\n-98.7435455322266,26.3102207183838\n-98.7492752075195,26.3274116516113\n-98.7721939086914,26.3388690948486\n-98.8065719604492,26.3503284454346\n-98.8294906616211,26.3675174713135\n-98.8638687133789,26.3732471466064\n-98.9097061157227,26.3675174713135\n-98.9326171875,26.3789768218994\n-98.9670028686523,26.3847064971924\n-98.9899215698242,26.4018955230713\n-99.0472183227539,26.4133548736572\n-99.0701293945312,26.3961658477783\n-99.0987777709961,26.4076251983643\n-99.1045074462891,26.4305419921875\n-99.0987777709961,26.4821090698242\n-99.1560745239258,26.5508651733398\n-99.1560745239258,26.585241317749\n-99.1789932250977,26.6310787200928\n-99.2019119262695,26.659725189209\n-99.2076416015625,26.7055625915527\n-99.2763977050781,26.8488025665283\n-99.3165054321289,26.8659915924072\n-99.3451461791992,26.911828994751\n-99.3795318603516,26.9232883453369\n-99.390983581543,26.9404754638672\n-99.4024505615234,26.980583190918\n-99.4253616333008,27.0035018920898\n-99.4540176391602,27.0321483612061\n-99.4654693603516,27.0607967376709\n-99.4482879638672,27.0951747894287\n-99.4368209838867,27.1238212585449\n-99.4425582885742,27.2154941558838\n-99.4425582885742,27.2384128570557\n-99.4941253662109,27.2727909088135\n-99.5055847167969,27.2957096099854\n-99.5399627685547,27.3071689605713\n-99.5227661132812,27.3415470123291\n-99.5055847167969,27.3701934814453\n-99.5113067626953,27.4103012084961\n-99.5055847167969,27.4504070281982\n-99.4998550415039,27.501974105835\n-99.5342330932617,27.5077037811279\n-99.5342330932617,27.5478115081787\n-99.5456924438477,27.5879173278809\n-99.6316299438477,27.6394844055176\n-99.6545486450195,27.6280250549316\n-99.6774673461914,27.6566715240479\n-99.7175750732422,27.6624031066895\n-99.751953125,27.6967792510986\n-99.7863311767578,27.7311573028564\n-99.7977828979492,27.7598037719727\n-99.8264389038086,27.7655353546143\n-99.8550872802734,27.7827224731445\n-99.8722763061523,27.8171005249023\n-99.8894577026367,27.8686676025391\n-99.9295654296875,27.9145030975342\n-99.9352951049805,27.948881149292\n-99.9524917602539,27.9660701751709\n-99.9754028320312,27.9660701751709\n-99.9983291625977,27.9832592010498\n-100.021240234375,28.0348262786865\n-100.055618286133,28.0863914489746\n-100.084266662598,28.1264991760254\n-100.135833740234,28.1494159698486\n-100.181671142578,28.1723346710205\n-100.198860168457,28.1952533721924\n-100.227508544922,28.2238998413086\n-100.273345947266,28.2582778930664\n-100.29052734375,28.2869262695312\n-100.301986694336,28.3155746459961\n-100.319183349609,28.332763671875\n-100.324913024902,28.3671398162842\n-100.330635070801,28.401517868042\n-100.342094421387,28.4301662445068\n-100.370742797852,28.4530849456787\n-100.376472473145,28.470272064209\n-100.365020751953,28.4931907653809\n-100.370742797852,28.5103797912598\n-100.399398803711,28.5218391418457\n-100.422309875488,28.5390281677246\n-100.428039550781,28.5676765441895\n-100.422309875488,28.5848636627197\n-100.439498901367,28.5905952453613\n-100.456687927246,28.6077823638916\n-100.468147277832,28.6421604156494\n-100.508255004883,28.6536197662354\n-100.525444030762,28.6822662353516\n-100.525444030762,28.7223720550537\n-100.55982208252,28.8025875091553\n-100.582740783691,28.8140468597412\n-100.594200134277,28.854154586792\n-100.588470458984,28.8828029632568\n-100.622848510742,28.8885307312012\n-100.645767211914,28.911449432373\n-100.662948608398,28.9572868347168\n-100.685874938965,29.0546894073486\n-100.691604614258,29.0718765258789\n-100.71452331543,29.1177139282227\n-100.760360717773,29.1520938873291\n-100.789001464844,29.1750087738037\n-100.806198120117,29.2208461761475\n-100.806198120117,29.2437648773193\n-100.834838867188,29.2552242279053\n-100.869216918945,29.2781429290771\n-100.903602600098,29.306791305542\n-100.960891723633,29.3354396820068\n-101.023918151855,29.364086151123\n-101.05256652832,29.444299697876\n-101.075485229492,29.4500312805176\n-101.104133605957,29.4729499816895\n-101.155693054199,29.4786796569824\n-101.201530456543,29.5073261260986\n-101.241638183594,29.5073261260986\n-101.25309753418,29.5359745025635\n-101.235908508301,29.5531635284424\n-101.230186462402,29.5932693481445\n-101.247367858887,29.6104583740234\n-101.26456451416,29.6161880493164\n-101.270294189453,29.5932693481445\n-101.281745910645,29.5703506469727\n-101.304672241211,29.5646209716797\n-101.316131591797,29.5818119049072\n-101.304672241211,29.621919631958\n-101.304672241211,29.6448383331299\n-101.321853637695,29.6333770751953\n-101.350509643555,29.6391067504883\n-101.361961364746,29.6505641937256\n-101.390609741211,29.7422389984131\n-101.40779876709,29.7422389984131\n-101.436447143555,29.7307777404785\n-101.459365844727,29.7365093231201\n-101.46509552002,29.765157699585\n-101.516662597656,29.759428024292\n-101.539581298828,29.759428024292\n-101.533851623535,29.7823467254639\n-101.551040649414,29.7938041687012\n-101.579689025879,29.7766151428223\n-101.614059448242,29.7536964416504\n-101.659896850586,29.7536964416504\n-101.728660583496,29.759428024292\n-101.751571655273,29.765157699585\n-101.797409057617,29.7823467254639\n-101.820327758789,29.7823467254639\n-101.934921264648,29.765157699585\n-101.963569641113,29.8052654266357\n-102.049514770508,29.7766151428223\n-102.221405029297,29.8396415710449\n-102.272964477539,29.8625602722168\n-102.324531555176,29.8682899475098\n-102.364639282227,29.8511028289795\n-102.381828308105,29.765157699585\n-102.399017333984,29.7536964416504\n-102.462043762207,29.759428024292\n-102.502151489258,29.7823467254639\n-102.52507019043,29.7536964416504\n-102.547988891602,29.7422389984131\n-102.576637268066,29.759428024292\n-102.62247467041,29.7365093231201\n-102.65111541748,29.7365093231201\n-102.674041748047,29.7365093231201\n-102.708419799805,29.6620254516602\n-102.742790222168,29.6333770751953\n-102.742790222168,29.5932693481445\n-102.76570892334,29.6047306060791\n-102.771438598633,29.5760822296143\n-102.782897949219,29.5359745025635\n-102.811546325684,29.5245132446289\n-102.811546325684,29.4786796569824\n-102.828735351562,29.4500312805176\n-102.828735351562,29.4156551361084\n-102.834465026855,29.364086151123\n-102.880302429199,29.3468990325928\n-102.897491455078,29.2953338623047\n-102.903221130371,29.2666835784912\n-102.880302429199,29.2151165008545\n-102.908950805664,29.2151165008545\n-102.937599182129,29.1864700317383\n-102.989166259766,29.169282913208\n-103.012077331543,29.1635513305664\n-103.035003662109,29.1119842529297\n-103.07511138916,29.0890693664551\n-103.10375213623,29.0489616394043\n-103.115219116211,28.991662979126\n-103.132400512695,28.9744758605957\n-103.161056518555,28.9859371185303\n-103.195426940918,28.9859371185303\n-103.258453369141,28.9744758605957\n-103.287101745605,28.9744758605957\n-103.338668823242,29.0375003814697\n-103.350128173828,29.0375003814697\n-103.373046875,29.0145816802979\n-103.390235900879,29.0145816802979\n-103.441802978516,29.0546894073486\n-103.470443725586,29.0604190826416\n-103.493370056152,29.1234455108643\n-103.544929504395,29.1406326293945\n-103.573585510254,29.1520938873291\n-103.642333984375,29.1520938873291\n-103.699630737305,29.1635513305664\n-103.739738464355,29.1979274749756\n-103.756927490234,29.2151165008545\n-103.791305541992,29.2151165008545\n-103.774116516113,29.2437648773193\n-103.797035217285,29.2609539031982\n-103.848602294922,29.2724151611328\n-103.917350769043,29.2781429290771\n-104.00902557373,29.2953338623047\n-104.077781677246,29.3411674499512\n-104.146537780762,29.381275177002\n-104.186645507812,29.3984661102295\n-104.22102355957,29.4500312805176\n-104.238212585449,29.4786796569824\n-104.284042358398,29.5073261260986\n-104.347076416016,29.5187873840332\n-104.381454467773,29.5302448272705\n-104.43302154541,29.5875396728516\n-104.473129272461,29.5932693481445\n-104.513229370117,29.6276454925537\n-104.536148071289,29.6505641937256\n-104.57625579834,29.7823467254639\n-104.610633850098,29.7938041687012\n-104.639282226562,29.8625602722168\n-104.67366027832,29.9083976745605\n-104.696578979492,29.9943428039551\n-104.696578979492,30.0802822113037\n-104.685119628906,30.1433086395264\n-104.702308654785,30.212064743042\n-104.736679077148,30.2521705627441\n-104.81689453125,30.3610343933105\n-104.851280212402,30.3724918365479\n-104.851280212402,30.4011421203613\n-104.868461608887,30.4870853424072\n-104.88565826416,30.5501117706299\n-104.942947387695,30.5844879150391\n-104.971603393555,30.6131362915039\n-104.994514465332,30.6532440185547\n-105.017433166504,30.664701461792\n-105.069000244141,30.6761589050293\n-105.114837646484,30.7162666320801\n-105.166404724121,30.7506446838379\n-105.223701477051,30.7792911529541\n-105.286720275879,30.7964820861816\n-105.389862060547,30.8480472564697\n-105.475799560547,30.9168033599854\n-105.544555664062,30.9683685302734\n-105.57893371582,31.0199356079102\n-105.596122741699,31.0657730102539\n-105.687789916992,31.1287956237793\n-105.762283325195,31.1517143249512\n-105.802391052246,31.1918201446533\n-105.871139526367,31.2663078308105\n-105.922706604004,31.3006839752197\n-105.957084655762,31.3465213775635\n-105.997192382812,31.3808975219727\n-106.025840759277,31.3808975219727\n-106.083137512207,31.3808975219727\n-106.117515563965,31.4095478057861\n-106.163352966309,31.4381923675537\n-106.214920043945,31.4611110687256\n-106.237831115723,31.5126800537109\n-106.283668518066,31.5585174560547\n-106.312316894531,31.6100807189941\n-106.340965270996,31.6731071472168\n-106.392532348633,31.7475910186768\n-106.472747802734,31.7418632507324\n-106.512855529785,31.7533206939697\n-106.547225952148,31.7819690704346\n-106.598793029785,31.8220767974854\n-106.638900756836,31.8679141998291\n-106.644630432129,31.9022903442383\n-106.638900756836,31.948127746582\n-106.650367736816,31.9825038909912\n-106.62744140625,31.9939613342285\n-106.461288452148,31.9939613342285\n-106.38680267334,31.9882354736328\n-105.997192382812,31.9939613342285\n-104.91429901123,31.9882354736328\n-104.845550537109,31.9939613342285\n-104.014755249023,31.9939613342285\n-103.963188171387,31.9939613342285\n-103.716819763184,31.9939613342285\n-103.361587524414,31.9939613342285\n-103.07511138916,31.9939613342285\n-103.07511138916,32.0741806030273\n-103.07511138916,32.5096244812012\n-103.069381713867,32.9450721740723\n-103.06364440918,33.3862533569336\n-103.06364440918,33.5524101257324\n-103.057914733887,33.8217010498047\n-103.052185058594,34.2972526550293\n-103.052185058594,34.3144416809082\n-103.046455383301,34.7327003479004\n-103.046455383301,34.93896484375\n-103.046455383301,35.1738777160645\n-103.046455383301,35.6093292236328\n-103.046455383301,35.7296485900879\n-103.046455383301,36.0447769165039\n-103.046455383301,36.4802207946777\n-103.000625610352,36.4802207946777\n-102.15837097168,36.4916839599609\n-102.01513671875,36.4916839599609\n-101.625526428223,36.4916839599609\n-101.075485229492,36.4859504699707\n-100.943710327148,36.4916839599609\n-100.542633056641,36.4916839599609\n-100.004051208496,36.4916839599609\n-100.004051208496,36.0447769165039\n-100.004051208496,35.8786201477051\n-100.009780883789,35.6150550842285\n-100.004051208496,35.4145202636719\n-100.009780883789,35.1796112060547\n-100.004051208496,35.0306396484375\n-100.004051208496,34.7498931884766\n-99.9983291625977,34.5608139038086\n-99.9868698120117,34.5608139038086\n-99.9467620849609,34.5608139038086\n-99.9181060791016,34.5608139038086\n-99.8894577026367,34.5493545532227\n-99.8493576049805,34.5207099914551\n-99.8207092285156,34.5035171508789\n-99.8092498779297,34.4748725891113\n-99.757682800293,34.4347648620605\n-99.7175750732422,34.3889274597168\n-99.6889266967773,34.3774681091309\n-99.6602783203125,34.3831977844238\n-99.6087112426758,34.3717384338379\n-99.5915222167969,34.3774681091309\n-99.574333190918,34.4118461608887\n-99.562873840332,34.4175758361816\n-99.4998550415039,34.4175758361816\n-99.4711990356445,34.4118461608887\n-99.4310913085938,34.3774681091309\n-99.4081802368164,34.3774681091309\n-99.390983581543,34.4003829956055\n-99.38525390625,34.4404945373535\n-99.3738021850586,34.4462203979492\n-99.3566131591797,34.4576835632324\n-99.3336944580078,34.4462203979492\n-99.3165054321289,34.4233016967773\n-99.293586730957,34.4118461608887\n-99.2649383544922,34.4003829956055\n-99.2362899780273,34.3660087585449\n-99.2133712768555,34.343090057373\n-99.1904525756836,34.343090057373\n-99.1904525756836,34.3087120056152\n-99.2019119262695,34.2456855773926\n-99.1904525756836,34.2227668762207\n-99.1618041992188,34.211311340332\n-99.0930557250977,34.2055816650391\n-99.0414886474609,34.2055816650391\n-99.0128326416016,34.211311340332\n-98.9841842651367,34.2227668762207\n-98.9498138427734,34.211311340332\n-98.9211654663086,34.1826629638672\n-98.8810577392578,34.1654739379883\n-98.8352203369141,34.1540107727051\n-98.8008422851562,34.1540107727051\n-98.7664642333984,34.1482849121094\n-98.7492752075195,34.1310958862305\n-98.7206344604492,34.1368255615234\n-98.6919784545898,34.1540107727051\n-98.657600402832,34.1540107727051\n-98.6289596557617,34.1540107727051\n-98.6060333251953,34.176929473877\n-98.5773849487305,34.1540107727051\n-98.5544738769531,34.1425552368164\n-98.5372848510742,34.0967178344727\n-98.5086364746094,34.0737991333008\n-98.485710144043,34.0623397827148\n-98.4456100463867,34.0680732727051\n-98.4226913452148,34.0852584838867\n-98.4112319946289,34.0852584838867\n-98.39404296875,34.1425552368164\n-98.3825836181641,34.1540107727051\n-98.3539352416992,34.1654739379883\n-98.3252868652344,34.1540107727051\n-98.2794494628906,34.1253662109375\n-98.210693359375,34.1196365356445\n-98.1820526123047,34.1196365356445\n-98.1591262817383,34.1310958862305\n-98.130485534668,34.1540107727051\n-98.1132888793945,34.1482849121094\n-98.0903778076172,34.1368255615234\n-98.0846481323242,34.1196365356445\n-98.1018371582031,34.0852584838867\n-98.0961074829102,34.039421081543\n-98.0731811523438,34.0107727050781\n-98.0445404052734,33.9993171691895\n-97.9987030029297,34.0107727050781\n-97.9643249511719,33.9935836791992\n-97.947135925293,33.9821281433105\n-97.9643249511719,33.9534797668457\n-97.9757843017578,33.9191017150879\n-97.9757843017578,33.9133720397949\n-97.9528656005859,33.8675346374512\n-97.9070281982422,33.8503456115723\n-97.8841094970703,33.8388862609863\n-97.8611907958984,33.8388862609863\n-97.8325424194336,33.8618049621582\n-97.8038940429688,33.896183013916\n-97.7809753417969,33.9248313903809\n-97.763786315918,33.9420204162598\n-97.7351455688477,33.9534797668457\n-97.7179489135742,33.9763984680176\n-97.6950378417969,33.9821281433105\n-97.6549224853516,33.9821281433105\n-97.6205444335938,33.9763984680176\n-97.5976333618164,33.9420204162598\n-97.5861740112305,33.907642364502\n-97.5632553100586,33.901912689209\n-97.5460662841797,33.9248313903809\n-97.5174179077148,33.9133720397949\n-97.48876953125,33.9133720397949\n-97.4658508300781,33.8789939880371\n-97.4543914794922,33.8331565856934\n-97.4257431030273,33.8102378845215\n-97.3913650512695,33.7987823486328\n-97.3283386230469,33.8675346374512\n-97.305419921875,33.8618049621582\n-97.2767791748047,33.8618049621582\n-97.2595825195312,33.901912689209\n-97.2366714477539,33.9133720397949\n-97.2080154418945,33.901912689209\n-97.1851043701172,33.8675346374512\n-97.1736373901367,33.8446159362793\n-97.1908340454102,33.8217010498047\n-97.2137451171875,33.7930526733398\n-97.1965637207031,33.7529449462891\n-97.1679077148438,33.7185668945312\n-97.1392669677734,33.7128372192383\n-97.1106185913086,33.7242965698242\n-97.0991592407227,33.7529449462891\n-97.0991592407227,33.7987823486328\n-97.0819625854492,33.8102378845215\n-97.1106185913086,33.8274269104004\n-97.1106185913086,33.8503456115723\n-97.0876998901367,33.8560752868652\n-97.0590515136719,33.8446159362793\n-97.0361328125,33.8331565856934\n-96.9788360595703,33.8847236633301\n-96.9902954101562,33.9534797668457\n-96.9444580078125,33.9534797668457\n-96.9158096313477,33.9649391174316\n-96.8928909301758,33.9477462768555\n-96.8814315795898,33.8560752868652\n-96.8642501831055,33.8446159362793\n-96.8413238525391,33.8618049621582\n-96.8012161254883,33.8618049621582\n-96.7668380737305,33.8331565856934\n-96.7381973266602,33.8217010498047\n-96.7152709960938,33.8331565856934\n-96.6923599243164,33.8847236633301\n-96.66943359375,33.9133720397949\n-96.6407928466797,33.907642364502\n-96.6350631713867,33.8847236633301\n-96.6121444702148,33.8847236633301\n-96.5949554443359,33.890453338623\n-96.589225769043,33.8675346374512\n-96.6121444702148,33.8503456115723\n-96.6350631713867,33.8446159362793\n-96.6236038208008,33.8217010498047\n-96.5433883666992,33.8102378845215\n-96.5261993408203,33.7873191833496\n-96.5147399902344,33.7644004821777\n-96.4803619384766,33.7644004821777\n-96.4574508666992,33.770133972168\n-96.4230651855469,33.7472152709961\n-96.3886871337891,33.7242965698242\n-96.3657760620117,33.6956481933594\n-96.3371200561523,33.6956481933594\n-96.3142013549805,33.7414855957031\n-96.2912902832031,33.7472152709961\n-96.2626342773438,33.7529449462891\n-96.2339935302734,33.7529449462891\n-96.2110748291016,33.7529449462891\n-96.1881561279297,33.770133972168\n-96.1537780761719,33.8217010498047\n-96.1136703491211,33.8331565856934\n-96.0678329467773,33.8560752868652\n-95.9990768432617,33.8503456115723\n-95.9818878173828,33.8388862609863\n-95.9647064208984,33.8675346374512\n-95.9188690185547,33.8675346374512\n-95.8615646362305,33.8675346374512\n-95.8271942138672,33.8675346374512\n-95.7870864868164,33.8675346374512\n-95.7928161621094,33.896183013916\n-95.7813568115234,33.9133720397949\n-95.7469787597656,33.907642364502\n-95.7297897338867,33.9191017150879\n-95.7011413574219,33.907642364502\n-95.6610336303711,33.9248313903809\n-95.6209259033203,33.9592094421387\n-95.5865478515625,33.9592094421387\n-95.5636291503906,33.9534797668457\n-95.5521774291992,33.9133720397949\n-95.5292510986328,33.896183013916\n-95.4834136962891,33.901912689209\n-95.4375762939453,33.890453338623\n-95.4031982421875,33.8847236633301\n-95.3688278198242,33.901912689209\n-95.3229904174805,33.9133720397949\n-95.3000717163086,33.907642364502\n-95.2828826904297,33.9133720397949\n-95.2656936645508,33.9592094421387\n-95.2427749633789,33.9821281433105\n-95.1625595092773,33.9763984680176\n-95.1453704833984,33.9649391174316\n-95.1109924316406,33.9420204162598\n-95.0938110351562,33.9191017150879\n-95.0708847045898,33.896183013916\n-95.0307769775391,33.8847236633301\n-94.9906692504883,33.890453338623\n-94.9677581787109,33.8789939880371\n-94.956298828125,33.8503456115723\n-94.8989944458008,33.7930526733398\n-94.8646240234375,33.7758636474609\n-94.8302459716797,33.7758636474609\n-94.7958679199219,33.7758636474609\n-94.7844085693359,33.7529449462891\n-94.7500305175781,33.7472152709961\n-94.7328414916992,33.7300262451172\n-94.7156524658203,33.7357559204102\n-94.6984634399414,33.7185668945312\n-94.6812744140625,33.7300262451172\n-94.6640853881836,33.7242965698242\n-94.6640853881836,33.6956481933594\n-94.6469039916992,33.6956481933594\n-94.6239776611328,33.7071075439453\n-94.5781402587891,33.6899185180664\n-94.5494995117188,33.6612701416016\n-94.4979248046875,33.6669998168945"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-107.306118011474\n-92.8796119689941"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n25.4101052284241\n37.0193781852722"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "fill": {
            "value": "darkorange"
          },
          "x": {
            "scale": "x",
            "field": "data.long"
          },
          "y": {
            "scale": "y",
            "field": "data.lat"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "long"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "lat"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id728453292").parseSpec(plot_id728453292_spec);
</script><!--/html_preserve-->

```r
###Display Model Fits
# Compute the x and y coordinates for a loess smooth line that predicts mpg with the wt
mtcars %>% compute_smooth(mpg ~ wt)
```

```
##       pred_    resp_
## 1  1.513000 32.08897
## 2  1.562506 31.68786
## 3  1.612013 31.28163
## 4  1.661519 30.87037
## 5  1.711025 30.45419
## 6  1.760532 30.03318
## 7  1.810038 29.60745
## 8  1.859544 29.17711
## 9  1.909051 28.74224
## 10 1.958557 28.30017
## 11 2.008063 27.83462
## 12 2.057570 27.34766
## 13 2.107076 26.84498
## 14 2.156582 26.33229
## 15 2.206089 25.81529
## 16 2.255595 25.29968
## 17 2.305101 24.79115
## 18 2.354608 24.29542
## 19 2.404114 23.81818
## 20 2.453620 23.36514
## 21 2.503127 22.95525
## 22 2.552633 22.61385
## 23 2.602139 22.32759
## 24 2.651646 22.08176
## 25 2.701152 21.86167
## 26 2.750658 21.65260
## 27 2.800165 21.43987
## 28 2.849671 21.20875
## 29 2.899177 20.95334
## 30 2.948684 20.71584
## 31 2.998190 20.49571
## 32 3.047696 20.28293
## 33 3.097203 20.06753
## 34 3.146709 19.83950
## 35 3.196215 19.58885
## 36 3.245722 19.29716
## 37 3.295228 18.94441
## 38 3.344734 18.56700
## 39 3.394241 18.20570
## 40 3.443747 17.90090
## 41 3.493253 17.62060
## 42 3.542759 17.34002
## 43 3.592266 17.07908
## 44 3.641772 16.81759
## 45 3.691278 16.55757
## 46 3.740785 16.30833
## 47 3.790291 16.07916
## 48 3.839797 15.87937
## 49 3.889304 15.70181
## 50 3.938810 15.52594
## 51 3.988316 15.35173
## 52 4.037823 15.17933
## 53 4.087329 15.00894
## 54 4.136835 14.84072
## 55 4.186342 14.67484
## 56 4.235848 14.51148
## 57 4.285354 14.35082
## 58 4.334861 14.19302
## 59 4.384367 14.03826
## 60 4.433873 13.88672
## 61 4.483380 13.73856
## 62 4.532886 13.59396
## 63 4.582392 13.45310
## 64 4.631899 13.31614
## 65 4.681405 13.18326
## 66 4.730911 13.05464
## 67 4.780418 12.93045
## 68 4.829924 12.81086
## 69 4.879430 12.69604
## 70 4.928937 12.58617
## 71 4.978443 12.48143
## 72 5.027949 12.38198
## 73 5.077456 12.28799
## 74 5.126962 12.19966
## 75 5.176468 12.11713
## 76 5.225975 12.04060
## 77 5.275481 11.97023
## 78 5.324987 11.90620
## 79 5.374494 11.84868
## 80 5.424000 11.79784
```

```r
###compute_smooth() To Simplify Model Fits
# Extend with ggvis() and layer_lines()
mtcars %>% compute_smooth(mpg ~ wt) %>% ggvis(~pred_, ~resp_) %>% layer_lines()
```

<!--html_preserve--><div id="plot_id901530910-container" class="ggvis-output-container">
<div id="plot_id901530910" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id901530910_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id901530910" data-renderer="svg">SVG</a>
 | 
<a id="plot_id901530910_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id901530910" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id901530910_download" class="ggvis-download" data-plot-id="plot_id901530910">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id901530910_spec = {
  "data": [
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"pred_\",\"resp_\"\n1.513,32.08897233857\n1.56250632911392,31.6878645869701\n1.61201265822785,31.2816303797918\n1.66151898734177,30.8703709543688\n1.7110253164557,30.4541875480347\n1.76053164556962,30.0331813981231\n1.81003797468354,29.6074537419677\n1.85954430379747,29.1771058169022\n1.90905063291139,28.7422388602601\n1.95855696202532,28.3001719301536\n2.00806329113924,27.834621969428\n2.05756962025316,27.3476575600419\n2.10707594936709,26.84497968394\n2.15658227848101,26.3322893230667\n2.20608860759494,25.8152874593666\n2.25559493670886,25.2996750747841\n2.30510126582278,24.7911531512637\n2.35460759493671,24.29542267075\n2.40411392405063,23.8181846151875\n2.45362025316456,23.3651399665205\n2.50312658227848,22.9552530395981\n2.55263291139241,22.6138488714952\n2.60213924050633,22.3275852300224\n2.65164556962025,22.0817586181852\n2.70115189873418,21.8616655389892\n2.7506582278481,21.65260249544\n2.80016455696203,21.4398659905432\n2.84967088607595,21.2087525273044\n2.89917721518987,20.953335722037\n2.9486835443038,20.7158424594628\n2.99818987341772,20.4957065225374\n3.04769620253165,20.2829337645837\n3.09720253164557,20.0675300389245\n3.14670886075949,19.8395011988825\n3.19621518987342,19.5888530977805\n3.24572151898734,19.2971559094315\n3.29522784810127,18.9444093670088\n3.34473417721519,18.5670026794964\n3.39424050632911,18.2056968860288\n3.44374683544304,17.9009022641924\n3.49325316455696,17.620602502374\n3.54275949367089,17.3400153015964\n3.59226582278481,17.079077805285\n3.64177215189873,16.8175887231322\n3.69127848101266,16.5575726926136\n3.74078481012658,16.3083303048321\n3.79029113924051,16.0791621508901\n3.83979746835443,15.8793688218903\n3.88930379746835,15.7018119854881\n3.93881012658228,15.5259429561214\n3.9883164556962,15.3517253848296\n4.03782278481013,15.1793328075288\n4.08732911392405,15.0089387601353\n4.13683544303798,14.8407167785652\n4.1863417721519,14.6748403987346\n4.23584810126582,14.5114831565596\n4.28535443037975,14.3508185879563\n4.33486075949367,14.193020228841\n4.3843670886076,14.0382616151298\n4.43387341772152,13.8867162827388\n4.48337974683544,13.7385577675841\n4.53288607594937,13.5939596055819\n4.58239240506329,13.4530953326483\n4.63189873417722,13.3161384846995\n4.68140506329114,13.1832625976516\n4.73091139240506,13.0546412074207\n4.78041772151899,12.930447849923\n4.82992405063291,12.8108560610747\n4.87943037974684,12.6960393767918\n4.92893670886076,12.5861713329905\n4.97844303797468,12.4814254655869\n5.02794936708861,12.3819753104973\n5.07745569620253,12.2879944036376\n5.12696202531646,12.1996562809241\n5.17646835443038,12.117134478273\n5.2259746835443,12.0406025316002\n5.27548101265823,11.9702339768221\n5.32498734177215,11.9062023498547\n5.37449367088608,11.8486811866141\n5.424,11.7978440230166"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n10.7832876072389\n33.1035287543476"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id901530910").parseSpec(plot_id901530910_spec);
</script><!--/html_preserve-->

```r
# Extend with layer_points() and layer_smooths()
mtcars %>% ggvis(~wt, ~mpg) %>% layer_smooths() %>% layer_points()
```

<!--html_preserve--><div id="plot_id905401614-container" class="ggvis-output-container">
<div id="plot_id905401614" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id905401614_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id905401614" data-renderer="svg">SVG</a>
 | 
<a id="plot_id905401614_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id905401614" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id905401614_download" class="ggvis-download" data-plot-id="plot_id905401614">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id905401614_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"wt\",\"mpg\"\n2.62,21\n2.875,21\n2.32,22.8\n3.215,21.4\n3.44,18.7\n3.46,18.1\n3.57,14.3\n3.19,24.4\n3.15,22.8\n3.44,19.2\n3.44,17.8\n4.07,16.4\n3.73,17.3\n3.78,15.2\n5.25,10.4\n5.424,10.4\n5.345,14.7\n2.2,32.4\n1.615,30.4\n1.835,33.9\n2.465,21.5\n3.52,15.5\n3.435,15.2\n3.84,13.3\n3.845,19.2\n1.935,27.3\n2.14,26\n1.513,30.4\n3.17,15.8\n2.77,19.7\n3.57,15\n2.78,21.4"
    },
    {
      "name": ".0/model_prediction1",
      "format": {
        "type": "csv",
        "parse": {
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"pred_\",\"resp_\"\n1.513,32.08897233857\n1.56250632911392,31.6878645869701\n1.61201265822785,31.2816303797918\n1.66151898734177,30.8703709543688\n1.7110253164557,30.4541875480347\n1.76053164556962,30.0331813981231\n1.81003797468354,29.6074537419677\n1.85954430379747,29.1771058169022\n1.90905063291139,28.7422388602601\n1.95855696202532,28.3001719301536\n2.00806329113924,27.834621969428\n2.05756962025316,27.3476575600419\n2.10707594936709,26.84497968394\n2.15658227848101,26.3322893230667\n2.20608860759494,25.8152874593666\n2.25559493670886,25.2996750747841\n2.30510126582278,24.7911531512637\n2.35460759493671,24.29542267075\n2.40411392405063,23.8181846151875\n2.45362025316456,23.3651399665205\n2.50312658227848,22.9552530395981\n2.55263291139241,22.6138488714952\n2.60213924050633,22.3275852300224\n2.65164556962025,22.0817586181852\n2.70115189873418,21.8616655389892\n2.7506582278481,21.65260249544\n2.80016455696203,21.4398659905432\n2.84967088607595,21.2087525273044\n2.89917721518987,20.953335722037\n2.9486835443038,20.7158424594628\n2.99818987341772,20.4957065225374\n3.04769620253165,20.2829337645837\n3.09720253164557,20.0675300389245\n3.14670886075949,19.8395011988825\n3.19621518987342,19.5888530977805\n3.24572151898734,19.2971559094315\n3.29522784810127,18.9444093670088\n3.34473417721519,18.5670026794964\n3.39424050632911,18.2056968860288\n3.44374683544304,17.9009022641924\n3.49325316455696,17.620602502374\n3.54275949367089,17.3400153015964\n3.59226582278481,17.079077805285\n3.64177215189873,16.8175887231322\n3.69127848101266,16.5575726926136\n3.74078481012658,16.3083303048321\n3.79029113924051,16.0791621508901\n3.83979746835443,15.8793688218903\n3.88930379746835,15.7018119854881\n3.93881012658228,15.5259429561214\n3.9883164556962,15.3517253848296\n4.03782278481013,15.1793328075288\n4.08732911392405,15.0089387601353\n4.13683544303798,14.8407167785652\n4.1863417721519,14.6748403987346\n4.23584810126582,14.5114831565596\n4.28535443037975,14.3508185879563\n4.33486075949367,14.193020228841\n4.3843670886076,14.0382616151298\n4.43387341772152,13.8867162827388\n4.48337974683544,13.7385577675841\n4.53288607594937,13.5939596055819\n4.58239240506329,13.4530953326483\n4.63189873417722,13.3161384846995\n4.68140506329114,13.1832625976516\n4.73091139240506,13.0546412074207\n4.78041772151899,12.930447849923\n4.82992405063291,12.8108560610747\n4.87943037974684,12.6960393767918\n4.92893670886076,12.5861713329905\n4.97844303797468,12.4814254655869\n5.02794936708861,12.3819753104973\n5.07745569620253,12.2879944036376\n5.12696202531646,12.1996562809241\n5.17646835443038,12.117134478273\n5.2259746835443,12.0406025316002\n5.27548101265823,11.9702339768221\n5.32498734177215,11.9062023498547\n5.37449367088608,11.8486811866141\n5.424,11.7978440230166"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "strokeWidth": {
            "value": 2
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          },
          "fill": {
            "value": "transparent"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/model_prediction1"
          }
        }
      },
      "from": {
        "data": ".0/model_prediction1"
      }
    },
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id905401614").parseSpec(plot_id905401614_spec);
</script><!--/html_preserve-->

```r
# Extend the code for the second plot and add 'layer_points()' to the graph
mtcars %>% ggvis(~wt, ~mpg) %>% layer_points() %>% layer_smooths()
```

<!--html_preserve--><div id="plot_id272409853-container" class="ggvis-output-container">
<div id="plot_id272409853" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id272409853_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id272409853" data-renderer="svg">SVG</a>
 | 
<a id="plot_id272409853_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id272409853" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id272409853_download" class="ggvis-download" data-plot-id="plot_id272409853">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id272409853_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"wt\",\"mpg\"\n2.62,21\n2.875,21\n2.32,22.8\n3.215,21.4\n3.44,18.7\n3.46,18.1\n3.57,14.3\n3.19,24.4\n3.15,22.8\n3.44,19.2\n3.44,17.8\n4.07,16.4\n3.73,17.3\n3.78,15.2\n5.25,10.4\n5.424,10.4\n5.345,14.7\n2.2,32.4\n1.615,30.4\n1.835,33.9\n2.465,21.5\n3.52,15.5\n3.435,15.2\n3.84,13.3\n3.845,19.2\n1.935,27.3\n2.14,26\n1.513,30.4\n3.17,15.8\n2.77,19.7\n3.57,15\n2.78,21.4"
    },
    {
      "name": ".0/model_prediction1",
      "format": {
        "type": "csv",
        "parse": {
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"pred_\",\"resp_\"\n1.513,32.08897233857\n1.56250632911392,31.6878645869701\n1.61201265822785,31.2816303797918\n1.66151898734177,30.8703709543688\n1.7110253164557,30.4541875480347\n1.76053164556962,30.0331813981231\n1.81003797468354,29.6074537419677\n1.85954430379747,29.1771058169022\n1.90905063291139,28.7422388602601\n1.95855696202532,28.3001719301536\n2.00806329113924,27.834621969428\n2.05756962025316,27.3476575600419\n2.10707594936709,26.84497968394\n2.15658227848101,26.3322893230667\n2.20608860759494,25.8152874593666\n2.25559493670886,25.2996750747841\n2.30510126582278,24.7911531512637\n2.35460759493671,24.29542267075\n2.40411392405063,23.8181846151875\n2.45362025316456,23.3651399665205\n2.50312658227848,22.9552530395981\n2.55263291139241,22.6138488714952\n2.60213924050633,22.3275852300224\n2.65164556962025,22.0817586181852\n2.70115189873418,21.8616655389892\n2.7506582278481,21.65260249544\n2.80016455696203,21.4398659905432\n2.84967088607595,21.2087525273044\n2.89917721518987,20.953335722037\n2.9486835443038,20.7158424594628\n2.99818987341772,20.4957065225374\n3.04769620253165,20.2829337645837\n3.09720253164557,20.0675300389245\n3.14670886075949,19.8395011988825\n3.19621518987342,19.5888530977805\n3.24572151898734,19.2971559094315\n3.29522784810127,18.9444093670088\n3.34473417721519,18.5670026794964\n3.39424050632911,18.2056968860288\n3.44374683544304,17.9009022641924\n3.49325316455696,17.620602502374\n3.54275949367089,17.3400153015964\n3.59226582278481,17.079077805285\n3.64177215189873,16.8175887231322\n3.69127848101266,16.5575726926136\n3.74078481012658,16.3083303048321\n3.79029113924051,16.0791621508901\n3.83979746835443,15.8793688218903\n3.88930379746835,15.7018119854881\n3.93881012658228,15.5259429561214\n3.9883164556962,15.3517253848296\n4.03782278481013,15.1793328075288\n4.08732911392405,15.0089387601353\n4.13683544303798,14.8407167785652\n4.1863417721519,14.6748403987346\n4.23584810126582,14.5114831565596\n4.28535443037975,14.3508185879563\n4.33486075949367,14.193020228841\n4.3843670886076,14.0382616151298\n4.43387341772152,13.8867162827388\n4.48337974683544,13.7385577675841\n4.53288607594937,13.5939596055819\n4.58239240506329,13.4530953326483\n4.63189873417722,13.3161384846995\n4.68140506329114,13.1832625976516\n4.73091139240506,13.0546412074207\n4.78041772151899,12.930447849923\n4.82992405063291,12.8108560610747\n4.87943037974684,12.6960393767918\n4.92893670886076,12.5861713329905\n4.97844303797468,12.4814254655869\n5.02794936708861,12.3819753104973\n5.07745569620253,12.2879944036376\n5.12696202531646,12.1996562809241\n5.17646835443038,12.117134478273\n5.2259746835443,12.0406025316002\n5.27548101265823,11.9702339768221\n5.32498734177215,11.9062023498547\n5.37449367088608,11.8486811866141\n5.424,11.7978440230166"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    },
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "strokeWidth": {
            "value": 2
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          },
          "fill": {
            "value": "transparent"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/model_prediction1"
          }
        }
      },
      "from": {
        "data": ".0/model_prediction1"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id272409853").parseSpec(plot_id272409853_spec);
</script><!--/html_preserve-->

## Transformations


```r
###Chapter 3 Transformations

###Histograms (1)
# Build a histogram of the waiting variable of the faithful data set.
faithful %>% ggvis(~waiting) %>% layer_histograms()
```

<!--html_preserve--><div id="plot_id563864605-container" class="ggvis-output-container">
<div id="plot_id563864605" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id563864605_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id563864605" data-renderer="svg">SVG</a>
 | 
<a id="plot_id563864605_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id563864605" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id563864605_download" class="ggvis-download" data-plot-id="plot_id563864605">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id563864605_spec = {
  "data": [
    {
      "name": ".0/bin1/stack2",
      "format": {
        "type": "csv",
        "parse": {
          "xmin_": "number",
          "xmax_": "number",
          "stack_upr_": "number",
          "stack_lwr_": "number"
        }
      },
      "values": "\"xmin_\",\"xmax_\",\"stack_upr_\",\"stack_lwr_\"\n43,45,4,0\n45,47,9,0\n47,49,8,0\n49,51,11,0\n51,53,12,0\n53,55,15,0\n55,57,7,0\n57,59,11,0\n59,61,6,0\n61,63,7,0\n63,65,7,0\n65,67,3,0\n67,69,3,0\n69,71,9,0\n71,73,8,0\n73,75,14,0\n75,77,21,0\n77,79,25,0\n79,81,21,0\n81,83,26,0\n83,85,16,0\n85,87,8,0\n87,89,9,0\n89,91,7,0\n91,93,3,0\n93,95,1,0\n95,97,1,0"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.3\n99.7"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n27.3"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "rect",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "fill": {
            "value": "#333333"
          },
          "x": {
            "scale": "x",
            "field": "data.xmin_"
          },
          "x2": {
            "scale": "x",
            "field": "data.xmax_"
          },
          "y": {
            "scale": "y",
            "field": "data.stack_upr_"
          },
          "y2": {
            "scale": "y",
            "field": "data.stack_lwr_"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/bin1/stack2"
          }
        }
      },
      "from": {
        "data": ".0/bin1/stack2"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "count"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id563864605").parseSpec(plot_id563864605_spec);
</script><!--/html_preserve-->

```r
# Build the same histogram, but with a binwidth of 5 units
faithful %>% ggvis(~waiting) %>% layer_histograms(width = 5)
```

<!--html_preserve--><div id="plot_id738651219-container" class="ggvis-output-container">
<div id="plot_id738651219" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id738651219_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id738651219" data-renderer="svg">SVG</a>
 | 
<a id="plot_id738651219_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id738651219" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id738651219_download" class="ggvis-download" data-plot-id="plot_id738651219">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id738651219_spec = {
  "data": [
    {
      "name": ".0/bin1/stack2",
      "format": {
        "type": "csv",
        "parse": {
          "xmin_": "number",
          "xmax_": "number",
          "stack_upr_": "number",
          "stack_lwr_": "number"
        }
      },
      "values": "\"xmin_\",\"xmax_\",\"stack_upr_\",\"stack_lwr_\"\n42.5,47.5,13,0\n47.5,52.5,24,0\n52.5,57.5,29,0\n57.5,62.5,21,0\n62.5,67.5,13,0\n67.5,72.5,13,0\n72.5,77.5,42,0\n77.5,82.5,58,0\n82.5,87.5,38,0\n87.5,92.5,17,0\n92.5,97.5,4,0"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n39.75\n100.25"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n60.9"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "rect",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "fill": {
            "value": "#333333"
          },
          "x": {
            "scale": "x",
            "field": "data.xmin_"
          },
          "x2": {
            "scale": "x",
            "field": "data.xmax_"
          },
          "y": {
            "scale": "y",
            "field": "data.stack_upr_"
          },
          "y2": {
            "scale": "y",
            "field": "data.stack_lwr_"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/bin1/stack2"
          }
        }
      },
      "from": {
        "data": ".0/bin1/stack2"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "count"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id738651219").parseSpec(plot_id738651219_spec);
</script><!--/html_preserve-->

```r
###Histograms (2)
# Finish the command
faithful %>% 
  compute_bin(~waiting, width = 5) %>% 
  ggvis(x = ~xmin_, x2 = ~xmax_, y = 0, y2 = ~count_) %>% 
  layer_rects()
```

<!--html_preserve--><div id="plot_id155787175-container" class="ggvis-output-container">
<div id="plot_id155787175" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id155787175_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id155787175" data-renderer="svg">SVG</a>
 | 
<a id="plot_id155787175_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id155787175" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id155787175_download" class="ggvis-download" data-plot-id="plot_id155787175">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id155787175_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "xmin_": "number",
          "xmax_": "number",
          "count_": "number"
        }
      },
      "values": "\"xmin_\",\"xmax_\",\"count_\"\n42.5,47.5,13\n47.5,52.5,24\n52.5,57.5,29\n57.5,62.5,21\n62.5,67.5,13\n67.5,72.5,13\n72.5,77.5,42\n77.5,82.5,58\n82.5,87.5,38\n87.5,92.5,17\n92.5,97.5,4"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n39.75\n100.25"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-2.9\n60.9"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "rect",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "fill": {
            "value": "#333333"
          },
          "x": {
            "scale": "x",
            "field": "data.xmin_"
          },
          "x2": {
            "scale": "x",
            "field": "data.xmax_"
          },
          "y": {
            "scale": "y",
            "value": 0
          },
          "y2": {
            "scale": "y",
            "field": "data.count_"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id155787175").parseSpec(plot_id155787175_spec);
</script><!--/html_preserve-->

```r
###Density Plots
# Combine compute_density() with layer_lines() to make a density plot of the waiting variable.
faithful %>% ggvis(~waiting, fill := "green") %>% layer_densities()
```

<!--html_preserve--><div id="plot_id826696311-container" class="ggvis-output-container">
<div id="plot_id826696311" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id826696311_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id826696311" data-renderer="svg">SVG</a>
 | 
<a id="plot_id826696311_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id826696311" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id826696311_download" class="ggvis-download" data-plot-id="plot_id826696311">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id826696311_spec = {
  "data": [
    {
      "name": ".0/density1",
      "format": {
        "type": "csv",
        "parse": {
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"pred_\",\"resp_\"\n31.0373235142625,8.95119349850089e-06\n31.338991565131,1.1534989323628e-05\n31.6406596159995,1.47593319048527e-05\n31.9423276668681,1.87845539148993e-05\n32.2439957177366,2.38487522560994e-05\n32.5456637686051,3.0006467946103e-05\n32.8473318194737,3.77748639995581e-05\n33.1489998703422,4.71562074841168e-05\n33.4506679212107,5.86683444341894e-05\n33.7523359720792,7.26562574020538e-05\n34.0540040229478,8.93704310358983e-05\n34.3556720738163,0.000109784562202387\n34.6573401246848,0.000133811631394183\n34.9590081755534,0.000162730440823121\n35.2606762264219,0.000196744478931246\n35.5623442772904,0.00023669122232008\n35.8640123281589,0.000283827094766215\n36.1656803790275,0.000338020123628442\n36.467348429896,0.000401864188774515\n36.7690164807645,0.000474713497715532\n37.0706845316331,0.000558617337895103\n37.3723525825016,0.00065449176323982\n37.6740206333701,0.00076260439317865\n37.9756886842387,0.000886150828838828\n38.2773567351072,0.00102366385232894\n38.5790247859757,0.00117868239055533\n38.8806928368442,0.0013506203275498\n39.1823608877128,0.00154076013343386\n39.4840289385813,0.00175132456200321\n39.7856969894498,0.00198040821393097\n40.0873650403184,0.00223276662373228\n40.3890330911869,0.0025051250818906\n40.6907011420554,0.00280002425888804\n40.992369192924,0.00311736310136235\n41.2940372437925,0.00345568265236496\n41.595705294661,0.00381817446284138\n41.8973733455295,0.00420054397086365\n42.1990413963981,0.00460549629611474\n42.5007094472666,0.00503020688637915\n42.8023774981351,0.00547401133995078\n43.1040455490037,0.00593700824800614\n43.4057135998722,0.00641545646835708\n43.7073816507407,0.0069109062835471\n44.0090497016092,0.00741901624722933\n44.3107177524778,0.00793929024678401\n44.6123858033463,0.00846965366758295\n44.9140538542148,0.00900756505492423\n45.2157219050834,0.00955198094134642\n45.5173899559519,0.0100998943271814\n45.8190580068204,0.0106496416039073\n46.120726057689,0.0111990003303638\n46.4223941085575,0.0117459111076993\n46.724062159426,0.0122880026610907\n47.0257302102945,0.0128240523731022\n47.3273982611631,0.0133505072929747\n47.6290663120316,0.0138670421599511\n47.9307343629001,0.0143707043139315\n48.2324024137687,0.0148597497491871\n48.5340704646372,0.0153335194361589\n48.8357385155057,0.015787536518715\n49.1374065663743,0.0162234878470401\n49.4390746172428,0.016636656369001\n49.7407426681113,0.0170275267124365\n50.0424107189798,0.0173944108807235\n50.3440787698484,0.0177340706444165\n50.6457468207169,0.018048962361268\n50.9474148715854,0.0183325817358685\n51.249082922454,0.0185889434622787\n51.5507509733225,0.0188144600135572\n51.852419024191,0.0190087257444698\n52.1540870750596,0.0191735398934455\n52.4557551259281,0.0193036501713601\n52.7574231767966,0.0194047367076736\n53.0590912276651,0.0194721857190688\n53.3607592785337,0.019509241535213\n53.6624273294022,0.0195161846529147\n53.9640953802707,0.01949154747848\n54.2657634311393,0.0194404346588666\n54.5674314820078,0.0193586342080251\n54.8690995328763,0.0192522476248879\n55.1707675837448,0.0191203636112487\n55.4724356346134,0.0189647857792445\n55.7741036854819,0.0187888420420231\n56.0757717363504,0.0185910374616026\n56.377439787219,0.0183766842840717\n56.6791078380875,0.0181449943671305\n56.980775888956,0.017899180974555\n57.2824439398246,0.0176408560492002\n57.5841119906931,0.0173708481007223\n57.8857800415616,0.0170922255262856\n58.1874480924301,0.0168049723609172\n58.4891161432987,0.0165118637293707\n58.7907841941672,0.0162137767335693\n59.0924522450357,0.0159121136798408\n59.3941202959043,0.0156083495199232\n59.6957883467728,0.0153035102526878\n59.9974563976413,0.0149988955927664\n60.2991244485099,0.0146957869342854\n60.6007924993784,0.0143952003749501\n60.9024605502469,0.0140982920790968\n61.2041286011154,0.0138066267701936\n61.505796651984,0.0135206172487703\n61.8074647028525,0.0132428887239272\n62.109132753721,0.0129734515394698\n62.4108008045896,0.0127145271147287\n62.7124688554581,0.0124676133025406\n63.0141369063266,0.012233256569503\n63.3158049571951,0.0120155366086294\n63.6174730080637,0.0118133104399175\n63.9191410589322,0.0116310465910422\n64.2208091098007,0.0114690228994427\n64.5224771606693,0.0113292490644152\n64.8241452115378,0.0112157310184273\n65.1258132624063,0.0111267858029682\n65.4274813132749,0.01106981940835\n65.7291493641434,0.0110419176555222\n66.0308174150119,0.0110477798665021\n66.3324854658804,0.0110893385910427\n66.634153516749,0.0111654761332354\n66.9358215676175,0.0112842388777729\n67.237489618486,0.0114399141211988\n67.5391576693546,0.0116398970955351\n67.8408257202231,0.0118818695330514\n68.1424937710916,0.0121668457179961\n68.4441618219602,0.0124992463429009\n68.7458298728287,0.0128730266579582\n69.0474979236972,0.0132968636536574\n69.3491659745658,0.0137630797774611\n69.6508340254343,0.014274999583229\n69.9525020763028,0.0148318387844009\n70.2541701271713,0.0154289013360908\n70.5558381780399,0.0160717046508421\n70.8575062289084,0.0167507868912321\n71.1591742797769,0.0174695941627038\n71.4608423306454,0.0182225648374495\n71.762510381514,0.0190068758632494\n72.0641784323825,0.0198218185824884\n72.365846483251,0.0206599730800641\n72.6675145341196,0.021521758892807\n72.9691825849881,0.0223997254008291\n73.2708506358566,0.0232908811979752\n73.5725186867251,0.0241905883967099\n73.8741867375937,0.025093730254978\n74.1758547884622,0.0259953938361871\n74.4775228393307,0.0268911392343851\n74.7791908901993,0.027774666498644\n75.0808589410678,0.0286418853234007\n75.3825269919363,0.029487901427383\n75.6841950428049,0.0303054866276585\n75.9858630936734,0.031094091301061\n76.2875311445419,0.03184250655062\n76.5891991954105,0.0325523126154715\n76.890867246279,0.0332158666524238\n77.1925352971475,0.0338288260583635\n77.494203348016,0.0343919945013136\n77.7958713988846,0.0348923495584895\n78.0975394497531,0.0353377011130603\n78.3992075006216,0.0357165125472586\n78.7008755514902,0.0360313387850538\n79.0025436023587,0.0362805201371171\n79.3042116532272,0.0364563778247056\n79.6058797040957,0.036567994605113\n79.9075477549643,0.0366015444398679\n80.2092158058328,0.0365681025528222\n80.5108838567013,0.0364622229719733\n80.8125519075699,0.0362840259859856\n81.1142199584384,0.0360407020524748\n81.4158880093069,0.035721812208346\n81.7175560601755,0.0353420927228014\n82.019224111044,0.0348945184605726\n82.3208921619125,0.0343866739309245\n82.6225602127811,0.0338219933490136\n82.9242282636496,0.0331989475431579\n83.2258963145181,0.0325291949606358\n83.5275643653866,0.03180799666944\n83.8292324162552,0.0310469824447867\n84.1309004671237,0.030247557095311\n84.4325685179922,0.0294142533362239\n84.7342365688608,0.0285545161364637\n85.0359046197293,0.0276688590580626\n85.3375726705978,0.0267662527846335\n85.6392407214663,0.0258490070339792\n85.9409087723349,0.0249226322005965\n86.2425768232034,0.0239914145956317\n86.5442448740719,0.023059272957647\n86.8459129249405,0.0221298263296868\n87.147580975809,0.0212074991737378\n87.4492490266775,0.0202942897488736\n87.750917077546,0.0193937183529569\n88.0525851284146,0.0185084104588809\n88.3542531792831,0.0176389265631324\n88.6559212301516,0.0167902667173903\n88.9575892810202,0.0159601908786671\n89.2592573318887,0.0151527643246695\n89.5609253827572,0.0143673250719436\n89.8625934336258,0.0136042956693436\n90.1642614844943,0.0128663589348468\n90.4659295353628,0.0121502550020196\n90.7675975862313,0.0114605079426842\n91.0692656370999,0.010793452339439\n91.3709336879684,0.0101507938070837\n91.6726017388369,0.00953272041854905\n91.9742697897055,0.00893682822414403\n92.275937840574,0.00836717127991672\n92.5776058914425,0.00781898804148565\n92.879273942311,0.00729531373450192\n93.1809419931796,0.00679426419396448\n93.4826100440481,0.00631530079121038\n93.7842780949166,0.00586030863678469\n94.0859461457852,0.00542560448713726\n94.3876141966537,0.00501483587107163\n94.6892822475222,0.00462432613776976\n94.9909502983908,0.00425520107644938\n95.2926183492593,0.00390733111212465\n95.5942864001278,0.00357830708961903\n95.8959544509964,0.00327124704189443\n96.1976225018649,0.00298183020614925\n96.4992905527334,0.00271215378807177\n96.8009586036019,0.00246035568106443\n97.1026266544705,0.00222558277135761\n97.404294705339,0.00200886418460255\n97.7059627562075,0.00180700577311257\n98.0076308070761,0.00162215725317528\n98.3092988579446,0.00145129099320902\n98.6109669088131,0.00129469083799423\n98.9126349596816,0.00115182644251111\n99.2143030105502,0.00102070287433327\n99.5159710614187,0.000902789436205515\n99.8176391122872,0.000795078567767809\n100.119307163156,0.000698347633460715\n100.420975214024,0.000611194372957973\n100.722643264893,0.000532786081016214\n101.024311315761,0.000463292579282012\n101.32597936663,0.000400826675805269\n101.627647417498,0.000346056174727412\n101.929315468367,0.00029734693940541\n102.230983519235,0.000254542117328407\n102.532651570104,0.000217178762095418\n102.834319620973,0.000184247586714294\n103.135987671841,0.000156075126561826\n103.43765572271,0.00013139463065589\n103.739323773578,0.000110288950270119\n104.040991824447,9.21520314198182e-05\n104.342659875315,7.65839823459673e-05\n104.644327926184,6.35036604548866e-05\n104.945995977052,5.22785962323103e-05\n105.247664027921,4.29736381794218e-05\n105.549332078789,3.50997687908875e-05\n105.851000129658,2.85408390781261e-05\n106.152668180526,2.31277414180739e-05\n106.454336231395,1.85931984995775e-05\n106.756004282263,1.49479016982855e-05\n107.057672333132,1.19149062737063e-05\n107.359340384,9.47161299055731e-06\n107.661008434869,7.48933435950369e-06\n107.962676485738,5.881022516441e-06"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n27.1910558656887\n111.808944134311"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-0.00183007722199339\n0.0384316216618613"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "area",
      "properties": {
        "update": {
          "fill": {
            "value": "green"
          },
          "y2": {
            "scale": "y",
            "value": 0
          },
          "fillOpacity": {
            "value": 0.2
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          },
          "stroke": {
            "value": "transparent"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/density1"
          }
        }
      },
      "from": {
        "data": ".0/density1"
      }
    },
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          },
          "fill": {
            "value": "transparent"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/density1"
          }
        }
      },
      "from": {
        "data": ".0/density1"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "density"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id826696311").parseSpec(plot_id826696311_spec);
</script><!--/html_preserve-->

```r
###Shortcuts
# Complete the code to plot a bar graph of the cyl factor.
mtcars %>% ggvis(~factor(cyl)) %>% layer_bars()
```

<!--html_preserve--><div id="plot_id661861628-container" class="ggvis-output-container">
<div id="plot_id661861628" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id661861628_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id661861628" data-renderer="svg">SVG</a>
 | 
<a id="plot_id661861628_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id661861628" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id661861628_download" class="ggvis-download" data-plot-id="plot_id661861628">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id661861628_spec = {
  "data": [
    {
      "name": ".0/count1/stack2",
      "format": {
        "type": "csv",
        "parse": {
          "stack_lwr_": "number",
          "stack_upr_": "number"
        }
      },
      "values": "\"x_\",\"stack_lwr_\",\"stack_upr_\"\n\"4\",0,11\n\"6\",0,7\n\"8\",0,14"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"4\"\n\"6\"\n\"8\""
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n14.7"
    }
  ],
  "scales": [
    {
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "name": "x",
      "type": "ordinal",
      "points": false,
      "padding": 0.1,
      "sort": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "rect",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "fill": {
            "value": "#333333"
          },
          "x": {
            "scale": "x",
            "field": "data.x_"
          },
          "y": {
            "scale": "y",
            "field": "data.stack_lwr_"
          },
          "y2": {
            "scale": "y",
            "field": "data.stack_upr_"
          },
          "width": {
            "scale": "x",
            "band": true
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/count1/stack2"
          }
        }
      },
      "from": {
        "data": ".0/count1/stack2"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "factor(cyl)"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "count"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id661861628").parseSpec(plot_id661861628_spec);
</script><!--/html_preserve-->

```r
# Adapt the solution to the first challenge to just calculate the count values. No plotting!
mtcars %>% compute_count(~factor(cyl))
```

```
##   count_ x_
## 1     11  4
## 2      7  6
## 3     14  8
```

```r
###ggvis And group_by
# Both ggvis and dplyr are loaded into the workspace

# Instruction 1
mtcars %>% group_by(cyl) %>% ggvis(~mpg, ~wt, stroke = ~factor(cyl)) %>% layer_smooths()
```

<!--html_preserve--><div id="plot_id720583376-container" class="ggvis-output-container">
<div id="plot_id720583376" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id720583376_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id720583376" data-renderer="svg">SVG</a>
 | 
<a id="plot_id720583376_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id720583376" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id720583376_download" class="ggvis-download" data-plot-id="plot_id720583376">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id720583376_spec = {
  "data": [
    {
      "name": ".0/model_prediction1_flat",
      "format": {
        "type": "csv",
        "parse": {
          "cyl": "number",
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"cyl\",\"factor(cyl)\",\"pred_\",\"resp_\"\n4,\"4\",21.4,2.57094644453441\n4,\"4\",21.5582278481013,2.61841040085612\n4,\"4\",21.7164556962025,2.66213449896625\n4,\"4\",21.8746835443038,2.70212861180303\n4,\"4\",22.0329113924051,2.73838659707859\n4,\"4\",22.1911392405063,2.77090231250507\n4,\"4\",22.3493670886076,2.79966961579462\n4,\"4\",22.5075949367089,2.82468236465939\n4,\"4\",22.6658227848101,2.8459344168115\n4,\"4\",22.8240506329114,2.86341875219695\n4,\"4\",22.9822784810127,2.87708928430853\n4,\"4\",23.1405063291139,2.88694375511668\n4,\"4\",23.2987341772152,2.89301147589262\n4,\"4\",23.4569620253165,2.89532175790757\n4,\"4\",23.6151898734177,2.89390391243274\n4,\"4\",23.773417721519,2.88878725073936\n4,\"4\",23.9316455696203,2.88000108409865\n4,\"4\",24.0898734177215,2.86757472378182\n4,\"4\",24.2481012658228,2.85153748106011\n4,\"4\",24.406329113924,2.83191967628485\n4,\"4\",24.5645569620253,2.80936464280964\n4,\"4\",24.7227848101266,2.78417731262205\n4,\"4\",24.8810126582278,2.75602592724622\n4,\"4\",25.0392405063291,2.7245787282063\n4,\"4\",25.1974683544304,2.68950395702643\n4,\"4\",25.3556962025316,2.65046985523075\n4,\"4\",25.5139240506329,2.60714466434341\n4,\"4\",25.6721518987342,2.55919662588854\n4,\"4\",25.8303797468354,2.50629398139029\n4,\"4\",25.9886075949367,2.4481049723728\n4,\"4\",26.146835443038,2.38787362292729\n4,\"4\",26.3050632911392,2.33016741550658\n4,\"4\",26.4632911392405,2.27498609600622\n4,\"4\",26.6215189873418,2.22230815352517\n4,\"4\",26.779746835443,2.1721120771624\n4,\"4\",26.9379746835443,2.12437635601688\n4,\"4\",27.0962025316456,2.07907947918759\n4,\"4\",27.2544303797468,2.0361999357735\n4,\"4\",27.4126582278481,1.99571621487358\n4,\"4\",27.5708860759494,1.95760680558679\n4,\"4\",27.7291139240506,1.92185019701212\n4,\"4\",27.8873417721519,1.88842487824853\n4,\"4\",28.0455696202532,1.85730933839499\n4,\"4\",28.2037974683544,1.82848206655048\n4,\"4\",28.3620253164557,1.80192155181397\n4,\"4\",28.520253164557,1.77760628328442\n4,\"4\",28.6784810126582,1.75551475006082\n4,\"4\",28.8367088607595,1.73562544124212\n4,\"4\",28.9949367088608,1.71791684592731\n4,\"4\",29.153164556962,1.70236745321535\n4,\"4\",29.3113924050633,1.68895575220522\n4,\"4\",29.4696202531646,1.67766023199588\n4,\"4\",29.6278481012658,1.66845938168631\n4,\"4\",29.7860759493671,1.66133169037548\n4,\"4\",29.9443037974684,1.65625564716236\n4,\"4\",30.1025316455696,1.65320974114592\n4,\"4\",30.2607594936709,1.65217246142513\n4,\"4\",30.4189873417722,1.65312150840102\n4,\"4\",30.5772151898734,1.6559565416785\n4,\"4\",30.7354430379747,1.66056159974894\n4,\"4\",30.8936708860759,1.66685542410178\n4,\"4\",31.0518987341772,1.67475675622641\n4,\"4\",31.2101265822785,1.68418433761226\n4,\"4\",31.3683544303797,1.69505690974874\n4,\"4\",31.526582278481,1.70729321412527\n4,\"4\",31.6848101265823,1.72081199223125\n4,\"4\",31.8430379746835,1.73553198555611\n4,\"4\",32.0012658227848,1.75137193558925\n4,\"4\",32.1594936708861,1.7682505838201\n4,\"4\",32.3177215189873,1.78608667173806\n4,\"4\",32.4759493670886,1.80484196297518\n4,\"4\",32.6341772151899,1.82474820109083\n4,\"4\",32.7924050632911,1.84586109483075\n4,\"4\",32.9506329113924,1.8681899427826\n4,\"4\",33.1088607594937,1.89174404353405\n4,\"4\",33.2670886075949,1.91653269567279\n4,\"4\",33.4253164556962,1.94256519778648\n4,\"4\",33.5835443037975,1.9698508484628\n4,\"4\",33.7417721518987,1.99839894628942\n4,\"4\",33.9,2.02821878985402\n6,\"6\",17.8,3.37868440242103\n6,\"6\",17.8455696202532,3.41155326237809\n6,\"6\",17.8911392405063,3.4423910859981\n6,\"6\",17.9367088607595,3.47115263017635\n6,\"6\",17.9822784810127,3.49779265180814\n6,\"6\",18.0278481012658,3.52226590778875\n6,\"6\",18.073417721519,3.54452715501348\n6,\"6\",18.1189873417722,3.56461281436731\n6,\"6\",18.1645569620253,3.58315882867816\n6,\"6\",18.2101265822785,3.60022965597488\n6,\"6\",18.2556962025316,3.6157266650702\n6,\"6\",18.3012658227848,3.62955122477682\n6,\"6\",18.346835443038,3.64160470390743\n6,\"6\",18.3924050632911,3.65178847127476\n6,\"6\",18.4379746835443,3.6600038956915\n6,\"6\",18.4835443037975,3.66615234597036\n6,\"6\",18.5291139240506,3.67013519092405\n6,\"6\",18.5746835443038,3.67185379936528\n6,\"6\",18.620253164557,3.67120954010674\n6,\"6\",18.6658227848101,3.66810378196115\n6,\"6\",18.7113924050633,3.66243789374121\n6,\"6\",18.7569620253165,3.65411324425962\n6,\"6\",18.8025316455696,3.64303120232911\n6,\"6\",18.8481012658228,3.62909313676236\n6,\"6\",18.8936708860759,3.61220041637209\n6,\"6\",18.9392405063291,3.592254409971\n6,\"6\",18.9848101265823,3.56915648637179\n6,\"6\",19.0303797468354,3.54280801438719\n6,\"6\",19.0759493670886,3.51311036282988\n6,\"6\",19.1215189873418,3.47996490051258\n6,\"6\",19.1670886075949,3.44327299624799\n6,\"6\",19.2126582278481,3.40273672415755\n6,\"6\",19.2582278481013,3.35509913754619\n6,\"6\",19.3037974683544,3.30046079098142\n6,\"6\",19.3493670886076,3.2404167075492\n6,\"6\",19.3949367088608,3.17656191033544\n6,\"6\",19.4405063291139,3.11049142242609\n6,\"6\",19.4860759493671,3.04380026690709\n6,\"6\",19.5316455696203,2.97808346686439\n6,\"6\",19.5772151898734,2.91493604538391\n6,\"6\",19.6227848101266,2.85595302555159\n6,\"6\",19.6683544303797,2.80272943045338\n6,\"6\",19.7139240506329,2.75660726382439\n6,\"6\",19.7594936708861,2.71486371340505\n6,\"6\",19.8050632911392,2.67630514144905\n6,\"6\",19.8506329113924,2.64091532349397\n6,\"6\",19.8962025316456,2.60867803507741\n6,\"6\",19.9417721518987,2.57957705173695\n6,\"6\",19.9873417721519,2.55359614901016\n6,\"6\",20.0329113924051,2.53071910243463\n6,\"6\",20.0784810126582,2.51092968754795\n6,\"6\",20.1240506329114,2.4942116798877\n6,\"6\",20.1696202531646,2.48054885499146\n6,\"6\",20.2151898734177,2.46992498839682\n6,\"6\",20.2607594936709,2.46232385564135\n6,\"6\",20.3063291139241,2.45772923226265\n6,\"6\",20.3518987341772,2.4561248937983\n6,\"6\",20.3974683544304,2.45749461578587\n6,\"6\",20.4430379746835,2.46182217376296\n6,\"6\",20.4886075949367,2.46909134326715\n6,\"6\",20.5341772151899,2.47928589983602\n6,\"6\",20.579746835443,2.49238961900715\n6,\"6\",20.6253164556962,2.50838627631812\n6,\"6\",20.6708860759494,2.52725964730653\n6,\"6\",20.7164556962025,2.54899350750995\n6,\"6\",20.7620253164557,2.57357163246597\n6,\"6\",20.8075949367089,2.60097779771218\n6,\"6\",20.853164556962,2.63119577878614\n6,\"6\",20.8987341772152,2.66420935122546\n6,\"6\",20.9443037974684,2.70000229056771\n6,\"6\",20.9898734177215,2.73855837235047\n6,\"6\",21.0354430379747,2.77990931013057\n6,\"6\",21.0810126582278,2.82415406329911\n6,\"6\",21.126582278481,2.87129641162912\n6,\"6\",21.1721518987342,2.9213363551206\n6,\"6\",21.2177215189873,2.97427389377355\n6,\"6\",21.2632911392405,3.03010902758796\n6,\"6\",21.3088607594937,3.08884175656384\n6,\"6\",21.3544303797468,3.15047208070119\n6,\"6\",21.4,3.215\n8,\"8\",10.4,5.33613835010461\n8,\"8\",10.5113924050633,5.23238037676823\n8,\"8\",10.6227848101266,5.13454682774556\n8,\"8\",10.7341772151899,5.04245168307275\n8,\"8\",10.8455696202532,4.95590892278598\n8,\"8\",10.9569620253165,4.87473252692142\n8,\"8\",11.0683544303797,4.79873647551523\n8,\"8\",11.179746835443,4.72773474860359\n8,\"8\",11.2911392405063,4.66154132622266\n8,\"8\",11.4025316455696,4.59997018840862\n8,\"8\",11.5139240506329,4.54283531519763\n8,\"8\",11.6253164556962,4.48995068662586\n8,\"8\",11.7367088607595,4.44113028272948\n8,\"8\",11.8481012658228,4.39618808354467\n8,\"8\",11.9594936708861,4.35493806910758\n8,\"8\",12.0708860759494,4.3171942194544\n8,\"8\",12.1822784810127,4.28277051462128\n8,\"8\",12.2936708860759,4.2514809346444\n8,\"8\",12.4050632911392,4.22313945955993\n8,\"8\",12.5164556962025,4.19756006940404\n8,\"8\",12.6278481012658,4.17455674421289\n8,\"8\",12.7392405063291,4.15394346402266\n8,\"8\",12.8506329113924,4.13553420886951\n8,\"8\",12.9620253164557,4.11914295878961\n8,\"8\",13.073417721519,4.10458369381914\n8,\"8\",13.1848101265823,4.09167039399426\n8,\"8\",13.2962025316456,4.08021703935115\n8,\"8\",13.4075949367089,4.07003760992596\n8,\"8\",13.5189873417722,4.06094608575487\n8,\"8\",13.6303797468354,4.05275644687406\n8,\"8\",13.7417721518987,4.04528267331968\n8,\"8\",13.853164556962,4.03833874512791\n8,\"8\",13.9645569620253,4.03173864233492\n8,\"8\",14.0759493670886,4.02529634497687\n8,\"8\",14.1873417721519,4.01882583308995\n8,\"8\",14.2987341772152,4.0121410867103\n8,\"8\",14.4101265822785,4.0008046185097\n8,\"8\",14.5215189873418,3.98152582488303\n8,\"8\",14.6329113924051,3.95615554027259\n8,\"8\",14.7443037974684,3.92654520466568\n8,\"8\",14.8556962025316,3.89454625804961\n8,\"8\",14.9670886075949,3.86201014041169\n8,\"8\",15.0784810126582,3.80999083565608\n8,\"8\",15.1898734177215,3.73442202241034\n8,\"8\",15.3012658227848,3.69067391459749\n8,\"8\",15.4126582278481,3.65073596033262\n8,\"8\",15.5240506329114,3.61527847795413\n8,\"8\",15.6354430379747,3.5853341101024\n8,\"8\",15.746835443038,3.56193549941786\n8,\"8\",15.8582278481013,3.5447156523666\n8,\"8\",15.9696202531646,3.52798716587695\n8,\"8\",16.0810126582278,3.51400101406356\n8,\"8\",16.1924050632911,3.50626910031586\n8,\"8\",16.3037974683544,3.50830332802326\n8,\"8\",16.4151898734177,3.52345258562096\n8,\"8\",16.526582278481,3.54363711883653\n8,\"8\",16.6379746835443,3.56273693864077\n8,\"8\",16.7493670886076,3.58073166410974\n8,\"8\",16.8607594936709,3.59760091431945\n8,\"8\",16.9721518987342,3.61332430834595\n8,\"8\",17.0835443037975,3.62788146526527\n8,\"8\",17.1949367088608,3.64125200415344\n8,\"8\",17.3063291139241,3.65341554408651\n8,\"8\",17.4177215189873,3.66435170414049\n8,\"8\",17.5291139240506,3.67404010339142\n8,\"8\",17.6405063291139,3.68246036091535\n8,\"8\",17.7518987341772,3.6895920957883\n8,\"8\",17.8632911392405,3.69541492708631\n8,\"8\",17.9746835443038,3.69990847388541\n8,\"8\",18.0860759493671,3.70305235526163\n8,\"8\",18.1974683544304,3.70482619029102\n8,\"8\",18.3088607594937,3.7052095980496\n8,\"8\",18.420253164557,3.7041821976134\n8,\"8\",18.5316455696203,3.70172360805847\n8,\"8\",18.6430379746835,3.69781344846083\n8,\"8\",18.7544303797468,3.69265020450159\n8,\"8\",18.8658227848101,3.68760268400755\n8,\"8\",18.9772151898734,3.6829275898633\n8,\"8\",19.0886075949367,3.67864362870207\n8,\"8\",19.2,3.67476950715709"
    },
    {
      "name": ".0/model_prediction1",
      "source": ".0/model_prediction1_flat",
      "transform": [
        {
          "type": "treefacet",
          "keys": [
            "data.cyl"
          ]
        }
      ]
    },
    {
      "name": "scale/stroke",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"4\"\n\"6\"\n\"8\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.46797416699116\n5.52033664453858"
    }
  ],
  "scales": [
    {
      "name": "stroke",
      "type": "ordinal",
      "domain": {
        "data": "scale/stroke",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "group",
      "from": {
        "data": ".0/model_prediction1"
      },
      "marks": [
        {
          "type": "line",
          "properties": {
            "update": {
              "stroke": {
                "scale": "stroke",
                "field": "data.factor(cyl)"
              },
              "strokeWidth": {
                "value": 2
              },
              "x": {
                "scale": "x",
                "field": "data.pred_"
              },
              "y": {
                "scale": "y",
                "field": "data.resp_"
              },
              "fill": {
                "value": "transparent"
              }
            },
            "ggvis": {
              "data": {
                "value": ".0/model_prediction1"
              }
            }
          }
        }
      ]
    }
  ],
  "legends": [
    {
      "orient": "right",
      "stroke": "stroke",
      "title": "factor(cyl)"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "wt"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id720583376").parseSpec(plot_id720583376_spec);
</script><!--/html_preserve-->

```r
# Instruction 2
mtcars %>% group_by(cyl) %>% ggvis(~mpg, fill = ~factor(cyl)) %>% layer_densities()
```

<!--html_preserve--><div id="plot_id185288628-container" class="ggvis-output-container">
<div id="plot_id185288628" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id185288628_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id185288628" data-renderer="svg">SVG</a>
 | 
<a id="plot_id185288628_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id185288628" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id185288628_download" class="ggvis-download" data-plot-id="plot_id185288628">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id185288628_spec = {
  "data": [
    {
      "name": ".0/density1_flat",
      "format": {
        "type": "csv",
        "parse": {
          "cyl": "number",
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"cyl\",\"factor(cyl)\",\"pred_\",\"resp_\"\n4,\"4\",13.8621902427788,0.000360815110734745\n4,\"4\",13.9703299271491,0.000411670429686646\n4,\"4\",14.0784696115195,0.000468962692141032\n4,\"4\",14.1866092958899,0.000533844128448178\n4,\"4\",14.2947489802602,0.000606438443892721\n4,\"4\",14.4028886646306,0.00068749743807814\n4,\"4\",14.5110283490009,0.000777825888274821\n4,\"4\",14.6191680333713,0.000878282909113023\n4,\"4\",14.7273077177417,0.000989783051702955\n4,\"4\",14.835447402112,0.00111480734936423\n4,\"4\",14.9435870864824,0.00125316577488025\n4,\"4\",15.0517267708528,0.00140589958804689\n4,\"4\",15.1598664552231,0.00157416559531529\n4,\"4\",15.2680061395935,0.00175917568446301\n4,\"4\",15.3761458239638,0.00196219525878504\n4,\"4\",15.4842855083342,0.00218622296575981\n4,\"4\",15.5924251927046,0.00243201733225853\n4,\"4\",15.7005648770749,0.00270022876669995\n4,\"4\",15.8087045614453,0.0029923194825536\n4,\"4\",15.9168442458157,0.00330978609488744\n4,\"4\",16.024983930186,0.00365415380379844\n4,\"4\",16.1331236145564,0.00402836773191467\n4,\"4\",16.2412632989267,0.00443506158071812\n4,\"4\",16.3494029832971,0.00487367132702584\n4,\"4\",16.4575426676675,0.00534575950955045\n4,\"4\",16.5656823520378,0.00585287315392367\n4,\"4\",16.6738220364082,0.00639653319615224\n4,\"4\",16.7819617207786,0.00697868854928828\n4,\"4\",16.8901014051489,0.00760478334456657\n4,\"4\",16.9982410895193,0.00827199455084138\n4,\"4\",17.1063807738896,0.00898159499246052\n4,\"4\",17.21452045826,0.00973476500968558\n4,\"4\",17.3226601426304,0.0105325788165285\n4,\"4\",17.4307998270007,0.0113759907078385\n4,\"4\",17.5389395113711,0.0122704254506708\n4,\"4\",17.6470791957415,0.0132131308596342\n4,\"4\",17.7552188801118,0.0142035019894567\n4,\"4\",17.8633585644822,0.0152418215745481\n4,\"4\",17.9714982488525,0.0163281812624628\n4,\"4\",18.0796379332229,0.0174624699096678\n4,\"4\",18.1877776175933,0.0186473287551944\n4,\"4\",18.2959173019636,0.0198818221931527\n4,\"4\",18.404056986334,0.0211623618331809\n4,\"4\",18.5121966707044,0.0224878557803557\n4,\"4\",18.6203363550747,0.0238569649935091\n4,\"4\",18.7284760394451,0.025268099507356\n4,\"4\",18.8366157238154,0.0267204930127137\n4,\"4\",18.9447554081858,0.0282141556314215\n4,\"4\",19.0528950925562,0.0297429930012121\n4,\"4\",19.1610347769265,0.0313043385173854\n4,\"4\",19.2691744612969,0.0328952857685925\n4,\"4\",19.3773141456673,0.0345126969570522\n4,\"4\",19.4854538300376,0.0361532133496628\n4,\"4\",19.593593514408,0.0378150700908117\n4,\"4\",19.7017331987783,0.0394919759795335\n4,\"4\",19.8098728831487,0.0411798254491013\n4,\"4\",19.9180125675191,0.0428744803164135\n4,\"4\",20.0261522518894,0.0445716702788103\n4,\"4\",20.1342919362598,0.0462670148769691\n4,\"4\",20.2424316206302,0.0479551691934195\n4,\"4\",20.3505713050005,0.0496312136374094\n4,\"4\",20.4587109893709,0.0512908627759306\n4,\"4\",20.5668506737412,0.0529295449130068\n4,\"4\",20.6749903581116,0.0545427138853669\n4,\"4\",20.783130042482,0.0561258761151096\n4,\"4\",20.8912697268523,0.057672859818945\n4,\"4\",20.9994094112227,0.0591775486805427\n4,\"4\",21.1075490955931,0.060638473559048\n4,\"4\",21.2156887799634,0.0620516711523794\n4,\"4\",21.3238284643338,0.0634133688450693\n4,\"4\",21.4319681487042,0.0647200073757648\n4,\"4\",21.5401078330745,0.0659676210207167\n4,\"4\",21.6482475174449,0.0671466450508071\n4,\"4\",21.7563872018152,0.0682608760097458\n4,\"4\",21.8645268861856,0.0693078894223267\n4,\"4\",21.972666570556,0.0702855652375736\n4,\"4\",22.0808062549263,0.0711920980181041\n4,\"4\",22.1889459392967,0.0720260047663569\n4,\"4\",22.2970856236671,0.0727789386713277\n4,\"4\",22.4052253080374,0.0734553602185781\n4,\"4\",22.5133649924078,0.0740566684426712\n4,\"4\",22.6215046767781,0.0745827949216492\n4,\"4\",22.7296443611485,0.075033994467442\n4,\"4\",22.8377840455189,0.075410837940507\n4,\"4\",22.9459237298892,0.0757097455438565\n4,\"4\",23.0540634142596,0.075932327527715\n4,\"4\",23.16220309863,0.0760844420617304\n4,\"4\",23.2703427830003,0.0761678862581089\n4,\"4\",23.3784824673707,0.0761847032539909\n4,\"4\",23.486622151741,0.0761371645898023\n4,\"4\",23.5947618361114,0.0760261574622411\n4,\"4\",23.7029015204818,0.0758508019891144\n4,\"4\",23.8110412048521,0.0756197338293005\n4,\"4\",23.9191808892225,0.0753359837270397\n4,\"4\",24.0273205735929,0.075002705373385\n4,\"4\",24.1354602579632,0.074623155179477\n4,\"4\",24.2435999423336,0.074200672327203\n4,\"4\",24.3517396267039,0.0737345835659582\n4,\"4\",24.4598793110743,0.0732328599944545\n4,\"4\",24.5680189954447,0.0726992760195131\n4,\"4\",24.676158679815,0.0721373096892039\n4,\"4\",24.7842983641854,0.0715504255522156\n4,\"4\",24.8924380485558,0.0709420594313906\n4,\"4\",25.0005777329261,0.0703144581594847\n4,\"4\",25.1087174172965,0.0696720656933885\n4,\"4\",25.2168571016668,0.0690188722198491\n4,\"4\",25.3249967860372,0.068358040383861\n4,\"4\",25.4331364704076,0.0676926401712494\n4,\"4\",25.5412761547779,0.067025640159915\n4,\"4\",25.6494158391483,0.0663600826859463\n4,\"4\",25.7575555235187,0.0656992335190522\n4,\"4\",25.865695207889,0.0650455406986934\n4,\"4\",25.9738348922594,0.0644014578757332\n4,\"4\",26.0819745766297,0.0637693042504961\n4,\"4\",26.1901142610001,0.0631512604390263\n4,\"4\",26.2982539453705,0.0625495290323942\n4,\"4\",26.4063936297408,0.0619680740768899\n4,\"4\",26.5145333141112,0.0614067467854801\n4,\"4\",26.6226729984816,0.0608670957206495\n4,\"4\",26.7308126828519,0.060350515241791\n4,\"4\",26.8389523672223,0.0598582434429046\n4,\"4\",26.9470920515926,0.0593913602901326\n4,\"4\",27.055231735963,0.058953359123027\n4,\"4\",27.1633714203334,0.0585432348328863\n4,\"4\",27.2715111047037,0.0581608580367001\n4,\"4\",27.3796507890741,0.0578066136297127\n4,\"4\",27.4877904734445,0.0574807220708233\n4,\"4\",27.5959301578148,0.0571832390832283\n4,\"4\",27.7040698421852,0.0569157456898395\n4,\"4\",27.8122095265555,0.056677897046783\n4,\"4\",27.9203492109259,0.0564675037203882\n4,\"4\",28.0284888952963,0.0562839212756647\n4,\"4\",28.1366285796666,0.0561263466717808\n4,\"4\",28.244768264037,0.0559938212617971\n4,\"4\",28.3529079484074,0.0558858137114054\n4,\"4\",28.4610476327777,0.0558024469248945\n4,\"4\",28.5691873171481,0.0557400272808943\n4,\"4\",28.6773270015184,0.0556969804284152\n4,\"4\",28.7854666858888,0.0556716051392099\n4,\"4\",28.8936063702592,0.0556620811791651\n4,\"4\",29.0017460546295,0.0556664779516329\n4,\"4\",29.1098857389999,0.0556838524822977\n4,\"4\",29.2180254233703,0.0557106248462329\n4,\"4\",29.3261651077406,0.0557444673818806\n4,\"4\",29.434304792111,0.0557830928624027\n4,\"4\",29.5424444764813,0.0558241615894898\n4,\"4\",29.6505841608517,0.0558652938946319\n4,\"4\",29.7587238452221,0.0559037089493407\n4,\"4\",29.8668635295924,0.0559367205982282\n4,\"4\",29.9750032139628,0.0559620283118257\n4,\"4\",30.0831428983332,0.0559772309085632\n4,\"4\",30.1912825827035,0.0559799575426456\n4,\"4\",30.2994222670739,0.0559678806934226\n4,\"4\",30.4075619514442,0.0559379066806953\n4,\"4\",30.5157016358146,0.0558868240566026\n4,\"4\",30.623841320185,0.0558139054116845\n4,\"4\",30.7319810045553,0.0557171493990322\n4,\"4\",30.8401206889257,0.0555946604240552\n4,\"4\",30.9482603732961,0.0554446583398087\n4,\"4\",31.0564000576664,0.0552652517013934\n4,\"4\",31.1645397420368,0.0550515098666599\n4,\"4\",31.2726794264071,0.0548054264714132\n4,\"4\",31.3808191107775,0.0545258082163029\n4,\"4\",31.4889587951479,0.0542116149306202\n4,\"4\",31.5970984795182,0.0538619637262006\n4,\"4\",31.7052381638886,0.053476132228538\n4,\"4\",31.813377848259,0.0530500828855327\n4,\"4\",31.9215175326293,0.0525858509621155\n4,\"4\",32.0296572169997,0.052084248857977\n4,\"4\",32.13779690137,0.0515452580347876\n4,\"4\",32.2459365857404,0.0509690225056496\n4,\"4\",32.3540762701108,0.050355846567385\n4,\"4\",32.4622159544811,0.0497040792039858\n4,\"4\",32.5703556388515,0.0490143610939438\n4,\"4\",32.6784953232219,0.0482897445408535\n4,\"4\",32.7866350075922,0.0475311782188036\n4,\"4\",32.8947746919626,0.0467397471719058\n4,\"4\",33.0029143763329,0.0459166664728388\n4,\"4\",33.1110540607033,0.0450625764813894\n4,\"4\",33.2191937450737,0.0441770636424957\n4,\"4\",33.327333429444,0.0432646157088791\n4,\"4\",33.4354731138144,0.0423269220760744\n4,\"4\",33.5436127981848,0.0413657609445209\n4,\"4\",33.6517524825551,0.0403829905725634\n4,\"4\",33.7598921669255,0.0393805402977896\n4,\"4\",33.8680318512958,0.0383586780463129\n4,\"4\",33.9761715356662,0.0373214389305278\n4,\"4\",34.0843112200366,0.0362711009308899\n4,\"4\",34.1924509044069,0.0352097910765855\n4,\"4\",34.3005905887773,0.0341396570546679\n4,\"4\",34.4087302731477,0.0330628576673113\n4,\"4\",34.516869957518,0.0319813820262173\n4,\"4\",34.6250096418884,0.0308978260193922\n4,\"4\",34.7331493262587,0.0298145065475828\n4,\"4\",34.8412890106291,0.0287335228036808\n4,\"4\",34.9494286949995,0.0276569361376885\n4,\"4\",35.0575683793698,0.0265867616556828\n4,\"4\",35.1657080637402,0.025525386217465\n4,\"4\",35.2738477481106,0.0244753753760763\n4,\"4\",35.3819874324809,0.0234378415462164\n4,\"4\",35.4901271168513,0.0224145141166199\n4,\"4\",35.5982668012216,0.021407038106843\n4,\"4\",35.706406485592,0.0204169686331283\n4,\"4\",35.8145461699624,0.0194458936666479\n4,\"4\",35.9226858543327,0.0184975175806107\n4,\"4\",36.0308255387031,0.0175708750878482\n4,\"4\",36.1389652230735,0.0166670866017668\n4,\"4\",36.2471049074438,0.0157871634333863\n4,\"4\",36.3552445918142,0.0149320062843653\n4,\"4\",36.4633842761845,0.0141024044010889\n4,\"4\",36.5715239605549,0.0133015093332808\n4,\"4\",36.6796636449253,0.0125282612641264\n4,\"4\",36.7878033292956,0.0117823373571747\n4,\"4\",36.895943013666,0.0110640546366399\n4,\"4\",37.0040826980364,0.010373624990636\n4,\"4\",37.1122223824067,0.00971115819639136\n4,\"4\",37.2203620667771,0.00907827146335252\n4,\"4\",37.3285017511474,0.00847500577444728\n4,\"4\",37.4366414355178,0.00789939816841401\n4,\"4\",37.5447811198882,0.00735116626376485\n4,\"4\",37.6529208042585,0.00682994920613763\n4,\"4\",37.7610604886289,0.00633531310871274\n4,\"4\",37.8692001729993,0.00586734045294749\n4,\"4\",37.9773398573696,0.00542729398911311\n4,\"4\",38.08547954174,0.00501200105784373\n4,\"4\",38.1936192261103,0.00462078055011638\n4,\"4\",38.3017589104807,0.0042529096002219\n4,\"4\",38.4098985948511,0.00390762944837931\n4,\"4\",38.5180382792214,0.0035841512010644\n4,\"4\",38.6261779635918,0.00328385582890971\n4,\"4\",38.7343176479622,0.00300377978609947\n4,\"4\",38.8424573323325,0.00274282869443807\n4,\"4\",38.9505970167029,0.00250014648660809\n4,\"4\",39.0587367010732,0.00227487457219772\n4,\"4\",39.1668763854436,0.00206615617709381\n4,\"4\",39.275016069814,0.00187424117395087\n4,\"4\",39.3831557541843,0.00169773169152805\n4,\"4\",39.4912954385547,0.00153508091699252\n4,\"4\",39.5994351229251,0.00138548211685971\n4,\"4\",39.7075748072954,0.00124814820338851\n4,\"4\",39.8157144916658,0.00112231402766606\n4,\"4\",39.9238541760361,0.0010076337513544\n4,\"4\",40.0319938604065,0.000903708338191346\n4,\"4\",40.1401335447769,0.000808995529933262\n4,\"4\",40.2482732291472,0.000722843122352592\n4,\"4\",40.3564129135176,0.000644627977725879\n4,\"4\",40.464552597888,0.00057375649659028\n4,\"4\",40.5726922822583,0.000509695210421448\n4,\"4\",40.6808319666287,0.00045254029170103\n4,\"4\",40.788971650999,0.000401024663336515\n4,\"4\",40.8971113353694,0.000354681707833788\n4,\"4\",41.0052510197398,0.000313073420679891\n4,\"4\",41.1133907041101,0.000275789736984116\n4,\"4\",41.2215303884805,0.000242447746762271\n4,\"4\",41.3296700728509,0.000212985776496513\n4,\"4\",41.4378097572212,0.000186816302576957\n6,\"6\",15.1406271959692,0.000970798174004366\n6,\"6\",15.175602668942,0.0010958797343126\n6,\"6\",15.2105781419148,0.00123501229479761\n6,\"6\",15.2455536148876,0.00138950779392581\n6,\"6\",15.2805290878603,0.00156076852159204\n6,\"6\",15.3155045608331,0.00175028966869771\n6,\"6\",15.3504800338059,0.00195966150745636\n6,\"6\",15.3854555067787,0.00219057114212549\n6,\"6\",15.4204309797515,0.00244688680048367\n6,\"6\",15.4554064527243,0.00272902747201855\n6,\"6\",15.4903819256971,0.00303872249482189\n6,\"6\",15.5253573986699,0.00337807599123226\n6,\"6\",15.5603328716427,0.0037492882961042\n6,\"6\",15.5953083446155,0.00415465345981805\n6,\"6\",15.6302838175883,0.00459655583992769\n6,\"6\",15.665259290561,0.00507746572070417\n6,\"6\",15.7002347635338,0.00560109247690729\n6,\"6\",15.7352102365066,0.00617222490895055\n6,\"6\",15.7701857094794,0.00679070676541796\n6,\"6\",15.8051611824522,0.00745929810411105\n6,\"6\",15.840136655425,0.00818080332347093\n6,\"6\",15.8751121283978,0.00895805954761002\n6,\"6\",15.9100876013706,0.00979392378499528\n6,\"6\",15.9450630743434,0.0106912588674508\n6,\"6\",15.9800385473162,0.0116529181892692\n6,\"6\",16.0150140202889,0.0126862125518967\n6,\"6\",16.0499894932617,0.0137919593781326\n6,\"6\",16.0849649662345,0.0149708158865339\n6,\"6\",16.1199404392073,0.0162253975416896\n6,\"6\",16.1549159121801,0.0175582115204347\n6,\"6\",16.1898913851529,0.0189716352888728\n6,\"6\",16.2248668581257,0.0204678946028937\n6,\"6\",16.2598423310985,0.0220490410850631\n6,\"6\",16.2948178040713,0.0237176012480818\n6,\"6\",16.3297932770441,0.025482345890429\n6,\"6\",16.3647687500169,0.0273370540281205\n6,\"6\",16.3997442229896,0.029282785985251\n6,\"6\",16.4347196959624,0.0313203097024568\n6,\"6\",16.4696951689352,0.0334500801259806\n6,\"6\",16.504670641908,0.0356722197038637\n6,\"6\",16.5396461148808,0.0379865002286903\n6,\"6\",16.5746215878536,0.0403923262666607\n6,\"6\",16.6095970608264,0.042892775900821\n6,\"6\",16.6445725337992,0.0454865469803206\n6,\"6\",16.679548006772,0.0481673461775869\n6,\"6\",16.7145234797448,0.0509328836038553\n6,\"6\",16.7494989527176,0.053780450499733\n6,\"6\",16.7844744256903,0.0567069179008882\n6,\"6\",16.8194498986631,0.0597087383760212\n6,\"6\",16.8544253716359,0.0627819509583295\n6,\"6\",16.8894008446087,0.0659221893633781\n6,\"6\",16.9243763175815,0.0691294541704123\n6,\"6\",16.9593517905543,0.0723935768256571\n6,\"6\",16.9943272635271,0.0757083006868032\n6,\"6\",17.0293027364999,0.0790677140449775\n6,\"6\",17.0642782094727,0.0824655996171228\n6,\"6\",17.0992536824455,0.0858954635862838\n6,\"6\",17.1342291554183,0.0893505675423884\n6,\"6\",17.169204628391,0.0928239631144449\n6,\"6\",17.2041801013638,0.0963086225510727\n6,\"6\",17.2391555743366,0.0997966160701704\n6,\"6\",17.2741310473094,0.103279901138317\n6,\"6\",17.3091065202822,0.10675107964153\n6,\"6\",17.344081993255,0.110202760413773\n6,\"6\",17.3790574662278,0.113627603874902\n6,\"6\",17.4140329392006,0.117018366859602\n6,\"6\",17.4490084121734,0.12036794721412\n6,\"6\",17.4839838851462,0.123669427731679\n6,\"6\",17.518959358119,0.126912136914874\n6,\"6\",17.5539348310917,0.13009093879051\n6,\"6\",17.5889103040645,0.133201440666674\n6,\"6\",17.6238857770373,0.136237968157057\n6,\"6\",17.6588612500101,0.139195235939608\n6,\"6\",17.6938367229829,0.142068377903296\n6,\"6\",17.7288121959557,0.144852973814735\n6,\"6\",17.7637876689285,0.147545072240429\n6,\"6\",17.7987631419013,0.150140373816902\n6,\"6\",17.8337386148741,0.152628007155737\n6,\"6\",17.8687140878469,0.155013940700214\n6,\"6\",17.9036895608197,0.157296369882523\n6,\"6\",17.9386650337924,0.159474010527056\n6,\"6\",17.9736405067652,0.16154609488718\n6,\"6\",18.008615979738,0.163512363479097\n6,\"6\",18.0435914527108,0.16537305286971\n6,\"6\",18.0785669256836,0.167128879625133\n6,\"6\",18.1135423986564,0.168776294216617\n6,\"6\",18.1485178716292,0.170317002412539\n6,\"6\",18.183493344602,0.171758092919656\n6,\"6\",18.2184688175748,0.173102057835603\n6,\"6\",18.2534442905476,0.174351732133686\n6,\"6\",18.2884197635203,0.175510260813017\n6,\"6\",18.3233952364931,0.176581064899223\n6,\"6\",18.3583707094659,0.177567806745756\n6,\"6\",18.3933461824387,0.178474355085846\n6,\"6\",18.4283216554115,0.179298689718742\n6,\"6\",18.4632971283843,0.180051021029569\n6,\"6\",18.4982726013571,0.180736414512244\n6,\"6\",18.5332480743299,0.18135923381504\n6,\"6\",18.5682235473027,0.181923877269577\n6,\"6\",18.6031990202755,0.182434750853517\n6,\"6\",18.6381744932483,0.182896243577734\n6,\"6\",18.673149966221,0.18331270549675\n6,\"6\",18.7081254391938,0.183687420186694\n6,\"6\",18.7431009121666,0.184023660112299\n6,\"6\",18.7780763851394,0.184328200968722\n6,\"6\",18.8130518581122,0.184605048105183\n6,\"6\",18.848027331085,0.184858099085445\n6,\"6\",18.8830028040578,0.185091139459602\n6,\"6\",18.9179782770306,0.18530784095248\n6,\"6\",18.9529537500034,0.185511761824714\n6,\"6\",18.9879292229762,0.185706349121331\n6,\"6\",19.022904695949,0.185894766887789\n6,\"6\",19.0578801689217,0.186080810514597\n6,\"6\",19.0928556418945,0.186267760187032\n6,\"6\",19.1278311148673,0.186458646796163\n6,\"6\",19.1628065878401,0.186656419187791\n6,\"6\",19.1977820608129,0.186863949917254\n6,\"6\",19.2327575337857,0.187084040112521\n6,\"6\",19.2677330067585,0.187319423073816\n6,\"6\",19.3027084797313,0.187572958692356\n6,\"6\",19.3376839527041,0.1878490623943\n6,\"6\",19.3726594256769,0.188148685735133\n6,\"6\",19.4076348986497,0.188474270980346\n6,\"6\",19.4426103716224,0.188828177774238\n6,\"6\",19.4775858445952,0.189212672232911\n6,\"6\",19.512561317568,0.189629913214654\n6,\"6\",19.5475367905408,0.190081935783262\n6,\"6\",19.5825122635136,0.190570631942423\n6,\"6\",19.6174877364864,0.19109961607624\n6,\"6\",19.6524632094592,0.191670596029529\n6,\"6\",19.687438682432,0.19228301500364\n6,\"6\",19.7224141554048,0.192937885836388\n6,\"6\",19.7573896283776,0.193635939063882\n6,\"6\",19.7923651013503,0.194377592137795\n6,\"6\",19.8273405743231,0.19516291828825\n6,\"6\",19.8623160472959,0.195991615542787\n6,\"6\",19.8972915202687,0.196862976436685\n6,\"6\",19.9322669932415,0.197779254301066\n6,\"6\",19.9672424662143,0.198735476436243\n6,\"6\",20.0022179391871,0.199729047650786\n6,\"6\",20.0371934121599,0.20075724240195\n6,\"6\",20.0721688851327,0.201816803876751\n6,\"6\",20.1071443581055,0.202903930944737\n6,\"6\",20.1421198310783,0.204014269687265\n6,\"6\",20.177095304051,0.205142909904966\n6,\"6\",20.2120707770238,0.206284571973155\n6,\"6\",20.2470462499966,0.207432744749353\n6,\"6\",20.2820217229694,0.20857996967049\n6,\"6\",20.3169971959422,0.209719070810855\n6,\"6\",20.351972668915,0.210842392360554\n6,\"6\",20.3869481418878,0.211941831997713\n6,\"6\",20.4219236148606,0.213008880148019\n6,\"6\",20.4568990878334,0.214034664930652\n6,\"6\",20.4918745608062,0.215010002511013\n6,\"6\",20.526850033779,0.215920809163468\n6,\"6\",20.5618255067517,0.216758714645178\n6,\"6\",20.5968009797245,0.217515627656864\n6,\"6\",20.6317764526973,0.218181718492128\n6,\"6\",20.6667519256701,0.218747185001305\n6,\"6\",20.7017273986429,0.219202326073505\n6,\"6\",20.7367028716157,0.219537616420689\n6,\"6\",20.7716783445885,0.219743781919586\n6,\"6\",20.8066538175613,0.219810386282807\n6,\"6\",20.8416292905341,0.219717195569433\n6,\"6\",20.8766047635069,0.219468015448305\n6,\"6\",20.9115802364797,0.219055459783347\n6,\"6\",20.9465557094524,0.218472770351532\n6,\"6\",20.9815311824252,0.217713877993139\n6,\"6\",21.016506655398,0.216773458910468\n6,\"6\",21.0514821283708,0.215646985518008\n6,\"6\",21.0864576013436,0.214330771305368\n6,\"6\",21.1214330743164,0.212812669023918\n6,\"6\",21.1564085472892,0.211090988880107\n6,\"6\",21.191384020262,0.209173934605592\n6,\"6\",21.2263594932348,0.207061727029444\n6,\"6\",21.2613349662076,0.204755548809907\n6,\"6\",21.2963104391804,0.202257543390324\n6,\"6\",21.3312859121531,0.199570806287391\n6,\"6\",21.3662613851259,0.196699368825276\n6,\"6\",21.4012368580987,0.193648174508322\n6,\"6\",21.4362123310715,0.190408680385781\n6,\"6\",21.4711878040443,0.187001745351391\n6,\"6\",21.5061632770171,0.183436478768688\n6,\"6\",21.5411387499899,0.179721263032293\n6,\"6\",21.5761142229627,0.175865158158162\n6,\"6\",21.6110896959355,0.171877840547093\n6,\"6\",21.6460651689083,0.167769537822919\n6,\"6\",21.681040641881,0.163550960397487\n6,\"6\",21.7160161148538,0.15923066527071\n6,\"6\",21.7509915878266,0.154818362345747\n6,\"6\",21.7859670607994,0.15033215195994\n6,\"6\",21.8209425337722,0.145783975745737\n6,\"6\",21.855918006745,0.141185868939782\n6,\"6\",21.8908934797178,0.136549887065169\n6,\"6\",21.9258689526906,0.131888034254693\n6,\"6\",21.9608444256634,0.127212193795268\n6,\"6\",21.9958198986362,0.122534061433593\n6,\"6\",22.030795371609,0.117866467535906\n6,\"6\",22.0657708445817,0.113221305185763\n6,\"6\",22.1007463175545,0.108608962606328\n6,\"6\",22.1357217905273,0.104039677597549\n6,\"6\",22.1706972635001,0.0995232118836666\n6,\"6\",22.2056727364729,0.0950688113385655\n6,\"6\",22.2406482094457,0.0906851713688757\n6,\"6\",22.2756236824185,0.0863804075433287\n6,\"6\",22.3105991553913,0.0821630581728067\n6,\"6\",22.3455746283641,0.0780474061459526\n6,\"6\",22.3805501013369,0.0740322453078511\n6,\"6\",22.4155255743097,0.0701230286982978\n6,\"6\",22.4505010472824,0.0663245610774089\n6,\"6\",22.4854765202552,0.0626410015181277\n6,\"6\",22.520451993228,0.0590758703728503\n6,\"6\",22.5554274662008,0.0556320603357319\n6,\"6\",22.5904029391736,0.0523118512975929\n6,\"6\",22.6253784121464,0.0491231061281236\n6,\"6\",22.6603538851192,0.046066583837038\n6,\"6\",22.695329358092,0.0431370133725037\n6,\"6\",22.7303048310648,0.0403343195553728\n6,\"6\",22.7652803040376,0.0376579428081524\n6,\"6\",22.8002557770104,0.0351068700528192\n6,\"6\",22.8352312499831,0.0326796668362192\n6,\"6\",22.8702067229559,0.0303745103455902\n6,\"6\",22.9051821959287,0.0281892229899027\n6,\"6\",22.9401576689015,0.0261312466200407\n6,\"6\",22.9751331418743,0.0241882213982065\n6,\"6\",23.0101086148471,0.0223561663451647\n6,\"6\",23.0450840878199,0.02063177824106\n6,\"6\",23.0800595607927,0.0190115744753696\n6,\"6\",23.1150350337655,0.0174919238237525\n6,\"6\",23.1500105067383,0.0160690760016034\n6,\"6\",23.1849859797111,0.0147391898483869\n6,\"6\",23.2199614526838,0.0135009336506324\n6,\"6\",23.2549369256566,0.0123527734575303\n6,\"6\",23.2899123986294,0.0112850834146662\n6,\"6\",23.3248878716022,0.0102939160690433\n6,\"6\",23.359863344575,0.00937535530547674\n6,\"6\",23.3948388175478,0.00852553391807963\n6,\"6\",23.4298142905206,0.00774064941571221\n6,\"6\",23.4647897634934,0.00701697808512674\n6,\"6\",23.4997652364662,0.00635088734943354\n6,\"6\",23.534740709439,0.00574229543600593\n6,\"6\",23.5697161824117,0.00518516410488597\n6,\"6\",23.6046916553845,0.00467481975051266\n6,\"6\",23.6396671283573,0.00420811681193511\n6,\"6\",23.6746426013301,0.00378204016152388\n6,\"6\",23.7096180743029,0.00339370820216057\n6,\"6\",23.7445935472757,0.00304037481688757\n6,\"6\",23.7795690202485,0.00271943026504443\n6,\"6\",23.8145444932213,0.00242872405934162\n6,\"6\",23.8495199661941,0.00216764495125434\n6,\"6\",23.8844954391669,0.00193158244816381\n6,\"6\",23.9194709121397,0.00171849403100362\n6,\"6\",23.9544463851124,0.00152646447442816\n6,\"6\",23.9894218580852,0.00135370220949101\n6,\"6\",24.024397331058,0.00119853528338323\n6,\"6\",24.0593728040308,0.00105940698946432\n8,\"8\",8.20110198584316,0.000875795947594618\n8,\"8\",8.25285804869929,0.00107665747937826\n8,\"8\",8.30461411155543,0.00132276005184198\n8,\"8\",8.35637017441156,0.00161278459962719\n8,\"8\",8.40812623726769,0.00195684143806233\n8,\"8\",8.45988230012382,0.00236576810910995\n8,\"8\",8.51163836297995,0.00283949707560442\n8,\"8\",8.56339442583609,0.00339921392479805\n8,\"8\",8.61515048869222,0.00404463880828268\n8,\"8\",8.66690655154835,0.00478528339805617\n8,\"8\",8.71866261440448,0.00564341331041539\n8,\"8\",8.77041867726061,0.00661139137817213\n8,\"8\",8.82217474011675,0.007714956138436\n8,\"8\",8.87393080297288,0.00895666306099129\n8,\"8\",8.92568686582901,0.0103360714431771\n8,\"8\",8.97744292868514,0.0118887559834863\n8,\"8\",9.02919899154127,0.0135916047948654\n8,\"8\",9.08095505439741,0.0154652771836221\n8,\"8\",9.13271111725354,0.0175148118148225\n8,\"8\",9.18446718010967,0.0197231387702614\n8,\"8\",9.2362232429658,0.0221194286625588\n8,\"8\",9.28797930582193,0.0246722926046858\n8,\"8\",9.33973536867807,0.0273814085452178\n8,\"8\",9.3914914315342,0.0302469384921301\n8,\"8\",9.44324749439033,0.0332353177009453\n8,\"8\",9.49500355724646,0.0363467676120944\n8,\"8\",9.54675962010259,0.0395492979503809\n8,\"8\",9.59851568295873,0.0428178857723043\n8,\"8\",9.65027174581486,0.0461309320441686\n8,\"8\",9.70202780867099,0.0494524603728428\n8,\"8\",9.75378387152712,0.0527493767224309\n8,\"8\",9.80553993438325,0.0559865292368624\n8,\"8\",9.85729599723939,0.059136533502527\n8,\"8\",9.90905206009552,0.0621371531778913\n8,\"8\",9.96080812295165,0.0649789891938606\n8,\"8\",10.0125641858078,0.0676129843124954\n8,\"8\",10.0643202486639,0.0699950253110568\n8,\"8\",10.11607631152,0.0721241332984004\n8,\"8\",10.1678323743762,0.0739219502939544\n8,\"8\",10.2195884372323,0.0754036960262591\n8,\"8\",10.2713445000884,0.0765442780894572\n8,\"8\",10.3231005629446,0.0772903247167781\n8,\"8\",10.3748566258007,0.0776870653942543\n8,\"8\",10.4266126886568,0.0776781218887455\n8,\"8\",10.478368751513,0.0772896961926536\n8,\"8\",10.5301248143691,0.0765462510871659\n8,\"8\",10.5818808772252,0.0753983024895781\n8,\"8\",10.6336369400814,0.0739292926012624\n8,\"8\",10.6853930029375,0.0721260878471714\n8,\"8\",10.7371490657936,0.0700168080242811\n8,\"8\",10.7889051286498,0.0676585494602035\n8,\"8\",10.8406611915059,0.0650396341097824\n8,\"8\",10.892417254362,0.0622352484889264\n8,\"8\",10.9441733172182,0.0592711336858586\n8,\"8\",10.9959293800743,0.0561787403932945\n8,\"8\",11.0476854429304,0.0530103199542077\n8,\"8\",11.0994415057866,0.0497955353160791\n8,\"8\",11.1511975686427,0.0465762586508788\n8,\"8\",11.2029536314988,0.0433862078821567\n8,\"8\",11.254709694355,0.0402670967767467\n8,\"8\",11.3064657572111,0.0372379402460051\n8,\"8\",11.3582218200672,0.0343401965577185\n8,\"8\",11.4099778829234,0.0315947823743054\n8,\"8\",11.4617339457795,0.0290104238038454\n8,\"8\",11.5134900086356,0.0266431404212398\n8,\"8\",11.5652460714917,0.0244702392839681\n8,\"8\",11.6170021343479,0.0225230775233784\n8,\"8\",11.668758197204,0.0208176910443818\n8,\"8\",11.7205142600601,0.0193345586724336\n8,\"8\",11.7722703229163,0.0181207377372736\n8,\"8\",11.8240263857724,0.0171431416968973\n8,\"8\",11.8757824486285,0.0164089801597668\n8,\"8\",11.9275385114847,0.015938854251724\n8,\"8\",11.9792945743408,0.0156939141857568\n8,\"8\",12.0310506371969,0.0157034203700172\n8,\"8\",12.0828067000531,0.0159424141591432\n8,\"8\",12.1345627629092,0.0163956659096461\n8,\"8\",12.1863188257653,0.0170890207309043\n8,\"8\",12.2380748886215,0.0179752080936369\n8,\"8\",12.2898309514776,0.0190669862070204\n8,\"8\",12.3415870143337,0.0203509843859911\n8,\"8\",12.3933430771899,0.021799932348825\n8,\"8\",12.445099140046,0.0234354684322854\n8,\"8\",12.4968552029021,0.0252161188670348\n8,\"8\",12.5486112657583,0.0271413766235231\n8,\"8\",12.6003673286144,0.0292068736186901\n8,\"8\",12.6521233914705,0.0313859219464403\n8,\"8\",12.7038794543266,0.0336870868506682\n8,\"8\",12.7556355171828,0.0360879135214556\n8,\"8\",12.8073915800389,0.0385808108961655\n8,\"8\",12.859147642895,0.0411691879803616\n8,\"8\",12.9109037057512,0.0438339074709821\n8,\"8\",12.9626597686073,0.0465816852662788\n8,\"8\",13.0144158314634,0.0494065026505002\n8,\"8\",13.0661718943196,0.0523035582284132\n8,\"8\",13.1179279571757,0.0552895921202551\n8,\"8\",13.1696840200318,0.0583535931399049\n8,\"8\",13.221440082888,0.061510171571348\n8,\"8\",13.2731961457441,0.0647693592226679\n8,\"8\",13.3249522086002,0.0681298695751866\n8,\"8\",13.3767082714564,0.0716249160622873\n8,\"8\",13.4284643343125,0.0752480966340563\n8,\"8\",13.4802203971686,0.0790180722066592\n8,\"8\",13.5319764600248,0.0829616349396302\n8,\"8\",13.5837325228809,0.0870689660176523\n8,\"8\",13.635488585737,0.0913802347678916\n8,\"8\",13.6872446485932,0.0958896466392553\n8,\"8\",13.7390007114493,0.100601100852297\n8,\"8\",13.7907567743054,0.105552814023963\n8,\"8\",13.8425128371616,0.110710901844886\n8,\"8\",13.8942689000177,0.116101009636142\n8,\"8\",13.9460249628738,0.121713270373844\n8,\"8\",13.99778102573,0.127521128450853\n8,\"8\",14.0495370885861,0.133551132710648\n8,\"8\",14.1012931514422,0.139747024887233\n8,\"8\",14.1530492142983,0.146099954720262\n8,\"8\",14.2048052771545,0.152585901275272\n8,\"8\",14.2565613400106,0.159159106964481\n8,\"8\",14.3083174028667,0.165792764381877\n8,\"8\",14.3600734657229,0.172438143804879\n8,\"8\",14.411829528579,0.179051894097002\n8,\"8\",14.4635855914351,0.185576730564703\n8,\"8\",14.5153416542913,0.191977021117163\n8,\"8\",14.5670977171474,0.198178423007419\n8,\"8\",14.6188537800035,0.204138964466338\n8,\"8\",14.6706098428597,0.209822213386866\n8,\"8\",14.7223659057158,0.215117921134813\n8,\"8\",14.7741219685719,0.220042367096335\n8,\"8\",14.8258780314281,0.224507184480658\n8,\"8\",14.8776340942842,0.228466715893875\n8,\"8\",14.9293901571403,0.231934787067013\n8,\"8\",14.9811462199965,0.234773679084797\n8,\"8\",15.0329022828526,0.237051803422617\n8,\"8\",15.0846583457087,0.238717367545362\n8,\"8\",15.1364144085649,0.239714101519516\n8,\"8\",15.188170471421,0.240118940358583\n8,\"8\",15.2399265342771,0.239833571150683\n8,\"8\",15.2916825971333,0.238931109962499\n8,\"8\",15.3434386599894,0.237432671695992\n8,\"8\",15.3951947228455,0.235280071773771\n8,\"8\",15.4469507857017,0.23259808643184\n8,\"8\",15.4987068485578,0.229351757504867\n8,\"8\",15.5504629114139,0.225600271347571\n8,\"8\",15.60221897427,0.221420582740844\n8,\"8\",15.6539750371262,0.216775671579091\n8,\"8\",15.7057310999823,0.21179440091526\n8,\"8\",15.7574871628384,0.206494256757185\n8,\"8\",15.8092432256946,0.200920846289624\n8,\"8\",15.8609992885507,0.19515136851287\n8,\"8\",15.9127553514068,0.189206673025888\n8,\"8\",15.964511414263,0.183158184917872\n8,\"8\",16.0162674771191,0.177048425851416\n8,\"8\",16.0680235399752,0.170920655866172\n8,\"8\",16.1197796028314,0.164816507527816\n8,\"8\",16.1715356656875,0.158780334443503\n8,\"8\",16.2232917285436,0.15284156972547\n8,\"8\",16.2750477913998,0.14702406942277\n8,\"8\",16.3268038542559,0.141377331448457\n8,\"8\",16.378559917112,0.135894233996232\n8,\"8\",16.4303159799682,0.130611136433663\n8,\"8\",16.4820720428243,0.125539351892367\n8,\"8\",16.5338281056804,0.120667817924371\n8,\"8\",16.5855841685366,0.116044728305537\n8,\"8\",16.6373402313927,0.111632286917319\n8,\"8\",16.6890962942488,0.107444687424693\n8,\"8\",16.740852357105,0.103491164961039\n8,\"8\",16.7926084199611,0.0997392978883096\n8,\"8\",16.8443644828172,0.0962172199122361\n8,\"8\",16.8961205456733,0.0928935384169033\n8,\"8\",16.9478766085295,0.0897610995417145\n8,\"8\",16.9996326713856,0.0868350791008805\n8,\"8\",17.0513887342417,0.0840782772529244\n8,\"8\",17.1031447970979,0.0815070612500972\n8,\"8\",17.154900859954,0.0791068471133173\n8,\"8\",17.2066569228101,0.0768622954939645\n8,\"8\",17.2584129856663,0.0748004821317096\n8,\"8\",17.3101690485224,0.0728882440061469\n8,\"8\",17.3619251113785,0.0711404657894893\n8,\"8\",17.4136811742347,0.069560445733184\n8,\"8\",17.4654372370908,0.0681324288375132\n8,\"8\",17.5171932999469,0.0668890137041817\n8,\"8\",17.5689493628031,0.0658076252803264\n8,\"8\",17.6207054256592,0.0648981397600869\n8,\"8\",17.6724614885153,0.0641781229509304\n8,\"8\",17.7242175513715,0.0636251414190812\n8,\"8\",17.7759736142276,0.0632673097644131\n8,\"8\",17.8277296770837,0.0630885099013632\n8,\"8\",17.8794857399399,0.0630821579344819\n8,\"8\",17.931241802796,0.063270025521665\n8,\"8\",17.9829978656521,0.0636153490475837\n8,\"8\",18.0347539285083,0.0641277896551222\n8,\"8\",18.0865099913644,0.0647909572211869\n8,\"8\",18.1382660542205,0.0655781809501383\n8,\"8\",18.1900221170767,0.0664948243387265\n8,\"8\",18.2417781799328,0.0674984254471456\n8,\"8\",18.2935342427889,0.0685732447965141\n8,\"8\",18.345290305645,0.069694987178799\n8,\"8\",18.3970463685012,0.0708329867774889\n8,\"8\",18.4488024313573,0.0719580011105899\n8,\"8\",18.5005584942134,0.0730424135141851\n8,\"8\",18.5523145570696,0.0740575694609485\n8,\"8\",18.6040706199257,0.0749635713838418\n8,\"8\",18.6558266827818,0.0757493363531253\n8,\"8\",18.707582745638,0.0763694252419765\n8,\"8\",18.7593388084941,0.076809013794314\n8,\"8\",18.8110948713502,0.0770580638017981\n8,\"8\",18.8628509342064,0.0770605722318399\n8,\"8\",18.9146069970625,0.0768436356270519\n8,\"8\",18.9663630599186,0.0763727264358851\n8,\"8\",19.0181191227748,0.0756401663144632\n8,\"8\",19.0698751856309,0.0746694350651955\n8,\"8\",19.121631248487,0.0734149760353146\n8,\"8\",19.1733873113432,0.0719250877130219\n8,\"8\",19.2251433741993,0.0701968048336187\n8,\"8\",19.2768994370554,0.0682283374464882\n8,\"8\",19.3286554999116,0.0660656723767999\n8,\"8\",19.3804115627677,0.0636984963520214\n8,\"8\",19.4321676256238,0.0611680908188551\n8,\"8\",19.48392368848,0.0584994735983569\n8,\"8\",19.5356797513361,0.0557019941723028\n8,\"8\",19.5874358141922,0.0528202866416186\n8,\"8\",19.6391918770483,0.0498710910846961\n8,\"8\",19.6909479399045,0.0468837287552429\n8,\"8\",19.7427040027606,0.0438843784771724\n8,\"8\",19.7944600656167,0.040899350460613\n8,\"8\",19.8462161284729,0.0379484354534926\n8,\"8\",19.897972191329,0.0350556391248916\n8,\"8\",19.9497282541851,0.0322428953337223\n8,\"8\",20.0014843170413,0.0295169546966658\n8,\"8\",20.0532403798974,0.0269102041045778\n8,\"8\",20.1049964427535,0.0244192389886021\n8,\"8\",20.1567525056097,0.0220559640538966\n8,\"8\",20.2085085684658,0.0198404471715748\n8,\"8\",20.2602646313219,0.0177568518761349\n8,\"8\",20.3120206941781,0.0158276174705357\n8,\"8\",20.3637767570342,0.0140423722219977\n8,\"8\",20.4155328198903,0.0123938051281997\n8,\"8\",20.4672888827465,0.0109015711672627\n8,\"8\",20.5190449456026,0.00953600409485132\n8,\"8\",20.5708010084587,0.008305977845162\n8,\"8\",20.6225570713149,0.00720353022182536\n8,\"8\",20.674313134171,0.00621021854940622\n8,\"8\",20.7260691970271,0.00533964082042206\n8,\"8\",20.7778252598833,0.00456433556458229\n8,\"8\",20.8295813227394,0.00388273352325875\n8,\"8\",20.8813373855955,0.00329136660382893\n8,\"8\",20.9330934484517,0.00277184372582698\n8,\"8\",20.9848495113078,0.00232793279002607\n8,\"8\",21.0366055741639,0.00194438501128836\n8,\"8\",21.08836163702,0.00161445239542236\n8,\"8\",21.1401176998762,0.0013376177632778\n8,\"8\",21.1918737627323,0.00110031348394065\n8,\"8\",21.2436298255884,0.000902151178192602\n8,\"8\",21.2953858884446,0.000736250987829903\n8,\"8\",21.3471419513007,0.000596329201923408\n8,\"8\",21.3988980141568,0.000482916969371024"
    },
    {
      "name": ".0/density1",
      "source": ".0/density1_flat",
      "transform": [
        {
          "type": "treefacet",
          "keys": [
            "data.cyl"
          ]
        }
      ]
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"4\"\n\"6\"\n\"8\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n6.53926659727426\n43.0996451457901"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-0.0120059470179291\n0.252124887376512"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "group",
      "from": {
        "data": ".0/density1"
      },
      "marks": [
        {
          "type": "area",
          "properties": {
            "update": {
              "fill": {
                "scale": "fill",
                "field": "data.factor(cyl)"
              },
              "y2": {
                "scale": "y",
                "value": 0
              },
              "fillOpacity": {
                "value": 0.2
              },
              "x": {
                "scale": "x",
                "field": "data.pred_"
              },
              "y": {
                "scale": "y",
                "field": "data.resp_"
              },
              "stroke": {
                "value": "transparent"
              }
            },
            "ggvis": {
              "data": {
                "value": ".0/density1"
              }
            }
          }
        }
      ]
    },
    {
      "type": "group",
      "from": {
        "data": ".0/density1"
      },
      "marks": [
        {
          "type": "line",
          "properties": {
            "update": {
              "stroke": {
                "value": "#000000"
              },
              "x": {
                "scale": "x",
                "field": "data.pred_"
              },
              "y": {
                "scale": "y",
                "field": "data.resp_"
              },
              "fill": {
                "value": "transparent"
              }
            },
            "ggvis": {
              "data": {
                "value": ".0/density1"
              }
            }
          }
        }
      ]
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "factor(cyl)"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "density"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id185288628").parseSpec(plot_id185288628_spec);
</script><!--/html_preserve-->

```r
###group_by() Versus interaction()
# Alter the graph
mtcars %>% group_by(cyl, am) %>% ggvis(~mpg, fill = ~interaction(cyl, am)) %>% layer_densities()
```

<!--html_preserve--><div id="plot_id828759161-container" class="ggvis-output-container">
<div id="plot_id828759161" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id828759161_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id828759161" data-renderer="svg">SVG</a>
 | 
<a id="plot_id828759161_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id828759161" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id828759161_download" class="ggvis-download" data-plot-id="plot_id828759161">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id828759161_spec = {
  "data": [
    {
      "name": ".0/density1_flat",
      "format": {
        "type": "csv",
        "parse": {
          "cyl": "number",
          "am": "number",
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"cyl\",\"am\",\"interaction(cyl, am)\",\"pred_\",\"resp_\"\n4,0,\"4.0\",19.1546767057528,0.00191205083447453\n4,0,\"4.0\",19.1844439472763,0.00214161558799439\n4,0,\"4.0\",19.2142111887998,0.00239507946990311\n4,0,\"4.0\",19.2439784303233,0.00267447603299319\n4,0,\"4.0\",19.2737456718468,0.00298195934665472\n4,0,\"4.0\",19.3035129133703,0.00331980535277482\n4,0,\"4.0\",19.3332801548938,0.00369071745298066\n4,0,\"4.0\",19.3630473964173,0.00409975153967905\n4,0,\"4.0\",19.3928146379408,0.00454713132569399\n4,0,\"4.0\",19.4225818794643,0.00503564339362305\n4,0,\"4.0\",19.4523491209878,0.00556818985305093\n4,0,\"4.0\",19.4821163625113,0.00614778395429328\n4,0,\"4.0\",19.5118836040348,0.00677754450944856\n4,0,\"4.0\",19.5416508455584,0.0074606890531542\n4,0,\"4.0\",19.5714180870819,0.0082005256815652\n4,0,\"4.0\",19.6011853286054,0.00900044351549838\n4,0,\"4.0\",19.6309525701289,0.00986390174245663\n4,0,\"4.0\",19.6607198116524,0.0108000670497278\n4,0,\"4.0\",19.6904870531759,0.0118075594930736\n4,0,\"4.0\",19.7202542946994,0.0128898076867018\n4,0,\"4.0\",19.7500215362229,0.0140504097239112\n4,0,\"4.0\",19.7797887777464,0.0152929515670245\n4,0,\"4.0\",19.8095560192699,0.0166209868461698\n4,0,\"4.0\",19.8393232607934,0.0180380153023815\n4,0,\"4.0\",19.8690905023169,0.0195474599534574\n4,0,\"4.0\",19.8988577438405,0.0211526430803498\n4,0,\"4.0\",19.928624985364,0.0228567611516705\n4,0,\"4.0\",19.9583922268875,0.024670093347132\n4,0,\"4.0\",19.988159468411,0.0265900522128386\n4,0,\"4.0\",20.0179267099345,0.0286178746562128\n4,0,\"4.0\",20.047693951458,0.0307559303913474\n4,0,\"4.0\",20.0774611929815,0.0330063201566384\n4,0,\"4.0\",20.107228434505,0.0353708479428229\n4,0,\"4.0\",20.1369956760285,0.0378509936139053\n4,0,\"4.0\",20.166762917552,0.0404478861866841\n4,0,\"4.0\",20.1965301590755,0.043162278045285\n4,0,\"4.0\",20.226297400599,0.0459945203752357\n4,0,\"4.0\",20.2560646421225,0.0489513356670031\n4,0,\"4.0\",20.2858318836461,0.0520281482933715\n4,0,\"4.0\",20.3155991251696,0.0552209931203249\n4,0,\"4.0\",20.3453663666931,0.0585282997297543\n4,0,\"4.0\",20.3751336082166,0.0619479992501559\n4,0,\"4.0\",20.4049008497401,0.0654775141405398\n4,0,\"4.0\",20.4346680912636,0.0691137512255972\n4,0,\"4.0\",20.4644353327871,0.0728530982021978\n4,0,\"4.0\",20.4942025743106,0.0766914238117473\n4,0,\"4.0\",20.5239698158341,0.0806240818436268\n4,0,\"4.0\",20.5537370573576,0.0846498313823617\n4,0,\"4.0\",20.5835042988811,0.0887613345928227\n4,0,\"4.0\",20.6132715404046,0.0929492234199552\n4,0,\"4.0\",20.6430387819281,0.0972068209260941\n4,0,\"4.0\",20.6728060234517,0.101527023625352\n4,0,\"4.0\",20.7025732649752,0.105902331099094\n4,0,\"4.0\",20.7323405064987,0.110324879458623\n4,0,\"4.0\",20.7621077480222,0.114786478467758\n4,0,\"4.0\",20.7918749895457,0.119278652090761\n4,0,\"4.0\",20.8216422310692,0.123792682184767\n4,0,\"4.0\",20.8514094725927,0.12831978047215\n4,0,\"4.0\",20.8811767141162,0.132849922101051\n4,0,\"4.0\",20.9109439556397,0.137373388192328\n4,0,\"4.0\",20.9407111971632,0.1418809832231\n4,0,\"4.0\",20.9704784386867,0.146363536765942\n4,0,\"4.0\",21.0002456802102,0.150811957872354\n4,0,\"4.0\",21.0300129217337,0.155217289372187\n4,0,\"4.0\",21.0597801632573,0.159570761548937\n4,0,\"4.0\",21.0895474047808,0.163863844644907\n4,0,\"4.0\",21.1193146463043,0.16808829965127\n4,0,\"4.0\",21.1490818878278,0.172234123972302\n4,0,\"4.0\",21.1788491293513,0.176290349057321\n4,0,\"4.0\",21.2086163708748,0.180254444793994\n4,0,\"4.0\",21.2383836123983,0.184119897199588\n4,0,\"4.0\",21.2681508539218,0.187880701023936\n4,0,\"4.0\",21.2979180954453,0.191531388231653\n4,0,\"4.0\",21.3276853369688,0.195067051477831\n4,0,\"4.0\",21.3574525784923,0.198483362314266\n4,0,\"4.0\",21.3872198200158,0.201776583924875\n4,0,\"4.0\",21.4169870615393,0.204943578254536\n4,0,\"4.0\",21.4467543030629,0.207979990907026\n4,0,\"4.0\",21.4765215445864,0.210876613651225\n4,0,\"4.0\",21.5062887861099,0.213641060054953\n4,0,\"4.0\",21.5360560276334,0.216272662061449\n4,0,\"4.0\",21.5658232691569,0.218771295305456\n4,0,\"4.0\",21.5955905106804,0.221137352269384\n4,0,\"4.0\",21.6253577522039,0.223371711000025\n4,0,\"4.0\",21.6551249937274,0.225475699824514\n4,0,\"4.0\",21.6848922352509,0.227451058559056\n4,0,\"4.0\",21.7146594767744,0.229299896752311\n4,0,\"4.0\",21.7444267182979,0.231024302180874\n4,0,\"4.0\",21.7741939598214,0.232617931757626\n4,0,\"4.0\",21.803961201345,0.234093615682786\n4,0,\"4.0\",21.8337284428685,0.235454515795579\n4,0,\"4.0\",21.863495684392,0.236703919532922\n4,0,\"4.0\",21.8932629259155,0.237845193959337\n4,0,\"4.0\",21.923030167439,0.238881741523054\n4,0,\"4.0\",21.9527974089625,0.239816958152017\n4,0,\"4.0\",21.982564650486,0.240654194267895\n4,0,\"4.0\",22.0123318920095,0.24139671925186\n4,0,\"4.0\",22.042099133533,0.242047689843174\n4,0,\"4.0\",22.0718663750565,0.242603761366471\n4,0,\"4.0\",22.10163361658,0.243073838408753\n4,0,\"4.0\",22.1314008581035,0.243461274339642\n4,0,\"4.0\",22.161168099627,0.243768508604983\n4,0,\"4.0\",22.1909353411505,0.243997781036421\n4,0,\"4.0\",22.2207025826741,0.244151131802109\n4,0,\"4.0\",22.2504698241976,0.244230406615837\n4,0,\"4.0\",22.2802370657211,0.244237267041649\n4,0,\"4.0\",22.3100043072446,0.244173205648786\n4,0,\"4.0\",22.3397715487681,0.244039565692799\n4,0,\"4.0\",22.3695387902916,0.24383331352328\n4,0,\"4.0\",22.3993060318151,0.243558673055015\n4,0,\"4.0\",22.4290732733386,0.243217997225786\n4,0,\"4.0\",22.4588405148621,0.242812305578958\n4,0,\"4.0\",22.4886077563856,0.242342628060577\n4,0,\"4.0\",22.5183749979091,0.241810041475636\n4,0,\"4.0\",22.5481422394326,0.24121570624916\n4,0,\"4.0\",22.5779094809562,0.240560902780202\n4,0,\"4.0\",22.6076767224797,0.239847066675975\n4,0,\"4.0\",22.6374439640032,0.239075822163373\n4,0,\"4.0\",22.6672112055267,0.238246223355812\n4,0,\"4.0\",22.6969784470502,0.237361833120507\n4,0,\"4.0\",22.7267456885737,0.236426746672811\n4,0,\"4.0\",22.7565129300972,0.235443682638404\n4,0,\"4.0\",22.7862801716207,0.23441566781256\n4,0,\"4.0\",22.8160474131442,0.233346045017225\n4,0,\"4.0\",22.8458146546677,0.232238475263986\n4,0,\"4.0\",22.8755818961912,0.231096933984409\n4,0,\"4.0\",22.9053491377147,0.229925701177109\n4,0,\"4.0\",22.9351163792382,0.228729345411838\n4,0,\"4.0\",22.9648836207618,0.22751208276865\n4,0,\"4.0\",22.9946508622853,0.226279590263423\n4,0,\"4.0\",23.0244181038088,0.225037994973871\n4,0,\"4.0\",23.0541853453323,0.223792764528488\n4,0,\"4.0\",23.0839525868558,0.22254947434385\n4,0,\"4.0\",23.1137198283793,0.221313757423939\n4,0,\"4.0\",23.1434870699028,0.220091250342922\n4,0,\"4.0\",23.1732543114263,0.218887536054514\n4,0,\"4.0\",23.2030215529498,0.217708084227573\n4,0,\"4.0\",23.2327887944733,0.216558189854685\n4,0,\"4.0\",23.2625560359968,0.215444106455341\n4,0,\"4.0\",23.2923232775203,0.214371920977914\n4,0,\"4.0\",23.3220905190438,0.2133441028058\n4,0,\"4.0\",23.3518577605674,0.212364524832746\n4,0,\"4.0\",23.3816250020909,0.211436566134048\n4,0,\"4.0\",23.4113922436144,0.210563058448518\n4,0,\"4.0\",23.4411594851379,0.209746236848247\n4,0,\"4.0\",23.4709267266614,0.208987695313857\n4,0,\"4.0\",23.5006939681849,0.208288347879242\n4,0,\"4.0\",23.5304612097084,0.207648395947133\n4,0,\"4.0\",23.5602284512319,0.207068404265806\n4,0,\"4.0\",23.5899956927554,0.206549414105569\n4,0,\"4.0\",23.6197629342789,0.206085481580871\n4,0,\"4.0\",23.6495301758024,0.205673608113234\n4,0,\"4.0\",23.6792974173259,0.205310030743414\n4,0,\"4.0\",23.7090646588494,0.204990237182165\n4,0,\"4.0\",23.738831900373,0.204708988889481\n4,0,\"4.0\",23.7685991418965,0.204460352039669\n4,0,\"4.0\",23.79836638342,0.204237736134433\n4,0,\"4.0\",23.8281336249435,0.204033939933897\n4,0,\"4.0\",23.857900866467,0.203841222479514\n4,0,\"4.0\",23.8876681079905,0.203650743985266\n4,0,\"4.0\",23.917435349514,0.203452995745805\n4,0,\"4.0\",23.9472025910375,0.203238862000561\n4,0,\"4.0\",23.976969832561,0.202998959017129\n4,0,\"4.0\",24.0067370740845,0.202723714388501\n4,0,\"4.0\",24.036504315608,0.202403448941782\n4,0,\"4.0\",24.0662715571315,0.202028460413877\n4,0,\"4.0\",24.096038798655,0.201589108031331\n4,0,\"4.0\",24.1258060401786,0.201075897123661\n4,0,\"4.0\",24.1555732817021,0.200479562902163\n4,0,\"4.0\",24.1853405232256,0.199783145215382\n4,0,\"4.0\",24.2151077647491,0.198984590677614\n4,0,\"4.0\",24.2448750062726,0.198076186250194\n4,0,\"4.0\",24.2746422477961,0.197050510689151\n4,0,\"4.0\",24.3044094893196,0.195900766219422\n4,0,\"4.0\",24.3341767308431,0.194620838593245\n4,0,\"4.0\",24.3639439723666,0.193205350951486\n4,0,\"4.0\",24.3937112138901,0.191649711003923\n4,0,\"4.0\",24.4234784554136,0.189950151122097\n4,0,\"4.0\",24.4532456969371,0.188103761019518\n4,0,\"4.0\",24.4830129384607,0.186098233319884\n4,0,\"4.0\",24.5127801799842,0.183940607249935\n4,0,\"4.0\",24.5425474215077,0.181632925910409\n4,0,\"4.0\",24.5723146630312,0.179176071884554\n4,0,\"4.0\",24.6020819045547,0.176571827866713\n4,0,\"4.0\",24.6318491460782,0.173822860492099\n4,0,\"4.0\",24.6616163876017,0.170932696939711\n4,0,\"4.0\",24.6913836291252,0.167905694658875\n4,0,\"4.0\",24.7211508706487,0.164747004634025\n4,0,\"4.0\",24.7509181121722,0.161462528660247\n4,0,\"4.0\",24.7806853536957,0.158052443747826\n4,0,\"4.0\",24.8104525952192,0.154528663902894\n4,0,\"4.0\",24.8402198367427,0.150902100429104\n4,0,\"4.0\",24.8699870782663,0.14718122733604\n4,0,\"4.0\",24.8997543197898,0.143374968060216\n4,0,\"4.0\",24.9295215613133,0.139492628567215\n4,0,\"4.0\",24.9592888028368,0.135543829013724\n4,0,\"4.0\",24.9890560443603,0.131538434632673\n4,0,\"4.0\",25.0188232858838,0.12748648649144\n4,0,\"4.0\",25.0485905274073,0.12339813275316\n4,0,\"4.0\",25.0783577689308,0.119282830194355\n4,0,\"4.0\",25.1081250104543,0.115152105126485\n4,0,\"4.0\",25.1378922519778,0.111016899518312\n4,0,\"4.0\",25.1676594935013,0.106887086919015\n4,0,\"4.0\",25.1974267350248,0.102772317458383\n4,0,\"4.0\",25.2271939765483,0.0986819647287549\n4,0,\"4.0\",25.2569612180719,0.0946250766657069\n4,0,\"4.0\",25.2867284595954,0.0906103307005032\n4,0,\"4.0\",25.3164957011189,0.0866459934032806\n4,0,\"4.0\",25.3462629426424,0.0827398847818595\n4,0,\"4.0\",25.3760301841659,0.0789019264538633\n4,0,\"4.0\",25.4057974256894,0.0751404764087909\n4,0,\"4.0\",25.4355646672129,0.071458615560976\n4,0,\"4.0\",25.4653319087364,0.0678619989242489\n4,0,\"4.0\",25.4950991502599,0.0643557265874555\n4,0,\"4.0\",25.5248663917834,0.0609443379025296\n4,0,\"4.0\",25.5546336333069,0.05763181002272\n4,0,\"4.0\",25.5844008748304,0.0544215605796338\n4,0,\"4.0\",25.6141681163539,0.0513164542588414\n4,0,\"4.0\",25.6439353578775,0.0483188130090852\n4,0,\"4.0\",25.673702599401,0.0454331344429389\n4,0,\"4.0\",25.7034698409245,0.0426644797381089\n4,0,\"4.0\",25.733237082448,0.0400071896893619\n4,0,\"4.0\",25.7630043239715,0.0374614851141475\n4,0,\"4.0\",25.792771565495,0.0350271459648076\n4,0,\"4.0\",25.8225388070185,0.0327035373667977\n4,0,\"4.0\",25.852306048542,0.0304896369852831\n4,0,\"4.0\",25.8820732900655,0.0283840634083146\n4,0,\"4.0\",25.911840531589,0.0263851052454651\n4,0,\"4.0\",25.9416077731125,0.0244907506540047\n4,0,\"4.0\",25.971375014636,0.0227000557839037\n4,0,\"4.0\",26.0011422561595,0.0210157873277921\n4,0,\"4.0\",26.0309094976831,0.0194281339915699\n4,0,\"4.0\",26.0606767392066,0.017934144038764\n4,0,\"4.0\",26.0904439807301,0.016530717552256\n4,0,\"4.0\",26.1202112222536,0.0152146331170835\n4,0,\"4.0\",26.1499784637771,0.013982573380923\n4,0,\"4.0\",26.1797457053006,0.0128311493693489\n4,0,\"4.0\",26.2095129468241,0.0117569234541324\n4,0,\"4.0\",26.2392801883476,0.0107564308934242\n4,0,\"4.0\",26.2690474298711,0.00982636080150423\n4,0,\"4.0\",26.2988146713946,0.00896814654619918\n4,0,\"4.0\",26.3285819129181,0.0081727856968209\n4,0,\"4.0\",26.3583491544416,0.00743690239563204\n4,0,\"4.0\",26.3881163959651,0.00675718168844652\n4,0,\"4.0\",26.4178836374887,0.00613038136085488\n4,0,\"4.0\",26.4476508790122,0.00555334228639323\n4,0,\"4.0\",26.4774181205357,0.00502299733474826\n4,0,\"4.0\",26.5071853620592,0.00453637889707732\n4,0,\"4.0\",26.5369526035827,0.00409062509310221\n4,0,\"4.0\",26.5667198451062,0.00368298473085009\n4,0,\"4.0\",26.5964870866297,0.00331325234717363\n4,0,\"4.0\",26.6262543281532,0.00297641404574832\n4,0,\"4.0\",26.6560215696767,0.00266979130756076\n4,0,\"4.0\",26.6857888112002,0.00239112843241336\n4,0,\"4.0\",26.7155560527237,0.00213828899838301\n4,0,\"4.0\",26.7453232942472,0.00190925481000392\n4,1,\"4.1\",13.8226765870169,0.000258013871900658\n4,1,\"4.1\",13.9311261824128,0.000293990336415109\n4,1,\"4.1\",14.0395757778087,0.000334790756452612\n4,1,\"4.1\",14.1480253732047,0.000380458978307149\n4,1,\"4.1\",14.2564749686006,0.000431471410700643\n4,1,\"4.1\",14.3649245639966,0.000488338174456172\n4,1,\"4.1\",14.4733741593925,0.000551603966875952\n4,1,\"4.1\",14.5818237547885,0.000621848757053078\n4,1,\"4.1\",14.6902733501844,0.000700515270970867\n4,1,\"4.1\",14.7987229455804,0.000787727617422778\n4,1,\"4.1\",14.9071725409763,0.000884031710292854\n4,1,\"4.1\",15.0156221363723,0.00099016145484469\n4,1,\"4.1\",15.1240717317682,0.00110688569830967\n4,1,\"4.1\",15.2325213271642,0.00123500719271745\n4,1,\"4.1\",15.3409709225601,0.00137615164949878\n4,1,\"4.1\",15.449420517956,0.00153132552774116\n4,1,\"4.1\",15.557870113352,0.00170069040017487\n4,1,\"4.1\",15.6663197087479,0.00188517294108371\n4,1,\"4.1\",15.7747693041439,0.00208572120816267\n4,1,\"4.1\",15.8832188995398,0.00230330084488377\n4,1,\"4.1\",15.9916684949358,0.00253927494246537\n4,1,\"4.1\",16.1001180903317,0.0027962769495042\n4,1,\"4.1\",16.2085676857277,0.00307347919159905\n4,1,\"4.1\",16.3170172811236,0.00337186730782872\n4,1,\"4.1\",16.4254668765196,0.00369241586518108\n4,1,\"4.1\",16.5339164719155,0.00403608151359722\n4,1,\"4.1\",16.6423660673115,0.00440379573007077\n4,1,\"4.1\",16.7508156627074,0.00479904229319418\n4,1,\"4.1\",16.8592652581033,0.00522076613353413\n4,1,\"4.1\",16.9677148534993,0.00566926139278901\n4,1,\"4.1\",17.0761644488952,0.00614525986527026\n4,1,\"4.1\",17.1846140442912,0.00664942417873078\n4,1,\"4.1\",17.2930636396871,0.00718233908934511\n4,1,\"4.1\",17.4015132350831,0.00774628649277352\n4,1,\"4.1\",17.509962830479,0.00834171020969955\n4,1,\"4.1\",17.618412425875,0.00896712157740846\n4,1,\"4.1\",17.7268620212709,0.00962267395728918\n4,1,\"4.1\",17.8353116166669,0.0103083990904508\n4,1,\"4.1\",17.9437612120628,0.0110242002180337\n4,1,\"4.1\",18.0522108074588,0.0117704376867504\n4,1,\"4.1\",18.1606604028547,0.0125490225380557\n4,1,\"4.1\",18.2691099982506,0.0133564193212584\n4,1,\"4.1\",18.3775595936466,0.0141919191424353\n4,1,\"4.1\",18.4860091890425,0.0150546614562395\n4,1,\"4.1\",18.5944587844385,0.0159436330341603\n4,1,\"4.1\",18.7029083798344,0.0168576681560019\n4,1,\"4.1\",18.8113579752304,0.017797677788016\n4,1,\"4.1\",18.9198075706263,0.0187600955745745\n4,1,\"4.1\",19.0282571660223,0.0197428029949798\n4,1,\"4.1\",19.1367067614182,0.0207440147568669\n4,1,\"4.1\",19.2451563568142,0.0217618170420844\n4,1,\"4.1\",19.3536059522101,0.0227941763928736\n4,1,\"4.1\",19.4620555476061,0.0238395540041995\n4,1,\"4.1\",19.570505143002,0.0248953326445447\n4,1,\"4.1\",19.6789547383979,0.0259584423585486\n4,1,\"4.1\",19.7874043337939,0.0270264699679748\n4,1,\"4.1\",19.8958539291898,0.0280969514758967\n4,1,\"4.1\",20.0043035245858,0.0291673881851628\n4,1,\"4.1\",20.1127531199817,0.0302351570362478\n4,1,\"4.1\",20.2212027153777,0.0312970051893947\n4,1,\"4.1\",20.3296523107736,0.0323507475919813\n4,1,\"4.1\",20.4381019061696,0.0333939355241329\n4,1,\"4.1\",20.5465515015655,0.0344241799576273\n4,1,\"4.1\",20.6550010969615,0.03543916932034\n4,1,\"4.1\",20.7634506923574,0.0364366868358561\n4,1,\"4.1\",20.8719002877534,0.0374124666615504\n4,1,\"4.1\",20.9803498831493,0.0383659011904315\n4,1,\"4.1\",21.0887994785452,0.0392955954232311\n4,1,\"4.1\",21.1972490739412,0.0401999196634661\n4,1,\"4.1\",21.3056986693371,0.0410774166258577\n4,1,\"4.1\",21.4141482647331,0.0419268117593187\n4,1,\"4.1\",21.522597860129,0.0427452129564872\n4,1,\"4.1\",21.631047455525,0.0435316314413247\n4,1,\"4.1\",21.7394970509209,0.0442872046574363\n4,1,\"4.1\",21.8479466463169,0.0450115179018442\n4,1,\"4.1\",21.9563962417128,0.0457043638007575\n4,1,\"4.1\",22.0648458371088,0.0463657407226915\n4,1,\"4.1\",22.1732954325047,0.046995230752166\n4,1,\"4.1\",22.2817450279007,0.0475908436445555\n4,1,\"4.1\",22.3901946232966,0.0481563390838867\n4,1,\"4.1\",22.4986442186926,0.0486925336686716\n4,1,\"4.1\",22.6070938140885,0.0492004096180966\n4,1,\"4.1\",22.7155434094844,0.0496811021430477\n4,1,\"4.1\",22.8239930048804,0.05013588557357\n4,1,\"4.1\",22.9324426002763,0.0505638595729636\n4,1,\"4.1\",23.0408921956723,0.0509686859743925\n4,1,\"4.1\",23.1493417910682,0.0513524709135384\n4,1,\"4.1\",23.2577913864642,0.0517169040967497\n4,1,\"4.1\",23.3662409818601,0.0520637270103969\n4,1,\"4.1\",23.4746905772561,0.0523947158312731\n4,1,\"4.1\",23.583140172652,0.0527109351842933\n4,1,\"4.1\",23.691589768048,0.0530144680616382\n4,1,\"4.1\",23.8000393634439,0.053307912565182\n4,1,\"4.1\",23.9084889588399,0.0535930086134101\n4,1,\"4.1\",24.0169385542358,0.0538714490999785\n4,1,\"4.1\",24.1253881496317,0.0541448678157147\n4,1,\"4.1\",24.2338377450277,0.0544147917903208\n4,1,\"4.1\",24.3422873404236,0.0546827324198244\n4,1,\"4.1\",24.4507369358196,0.0549503759251602\n4,1,\"4.1\",24.5591865312155,0.0552189979931375\n4,1,\"4.1\",24.6676361266115,0.0554897748939747\n4,1,\"4.1\",24.7760857220074,0.0557637807434244\n4,1,\"4.1\",24.8845353174034,0.0560419862004632\n4,1,\"4.1\",24.9929849127993,0.0563258432451772\n4,1,\"4.1\",25.1014345081953,0.0566157795159041\n4,1,\"4.1\",25.2098841035912,0.0569123293502123\n4,1,\"4.1\",25.3183336989872,0.0572160357868345\n4,1,\"4.1\",25.4267832943831,0.0575273519114078\n4,1,\"4.1\",25.535232889779,0.0578466461315986\n4,1,\"4.1\",25.643682485175,0.0581747178149129\n4,1,\"4.1\",25.7521320805709,0.0585118067131426\n4,1,\"4.1\",25.8605816759669,0.0588575463713033\n4,1,\"4.1\",25.9690312713628,0.0592120102541041\n4,1,\"4.1\",26.0774808667588,0.0595752190268308\n4,1,\"4.1\",26.1859304621547,0.0599471458870294\n4,1,\"4.1\",26.2943800575507,0.0603278920726656\n4,1,\"4.1\",26.4028296529466,0.0607180133966031\n4,1,\"4.1\",26.5112792483426,0.0611164937611511\n4,1,\"4.1\",26.6197288437385,0.0615231480537915\n4,1,\"4.1\",26.7281784391345,0.0619377602284141\n4,1,\"4.1\",26.8366280345304,0.0623600835866928\n4,1,\"4.1\",26.9450776299263,0.0627898401240547\n4,1,\"4.1\",27.0535272253223,0.0632273959970949\n4,1,\"4.1\",27.1619768207182,0.0636717876461071\n4,1,\"4.1\",27.2704264161142,0.0641224764724508\n4,1,\"4.1\",27.3788760115101,0.0645790213976254\n4,1,\"4.1\",27.4873256069061,0.06504093251328\n4,1,\"4.1\",27.595775202302,0.065507665896243\n4,1,\"4.1\",27.704224797698,0.0659788289640369\n4,1,\"4.1\",27.8126743930939,0.0664536337963087\n4,1,\"4.1\",27.9211239884899,0.0669310719518761\n4,1,\"4.1\",28.0295735838858,0.0674103040780635\n4,1,\"4.1\",28.1380231792818,0.0678904077470176\n4,1,\"4.1\",28.2464727746777,0.0683703729783069\n4,1,\"4.1\",28.3549223700736,0.0688490475621336\n4,1,\"4.1\",28.4633719654696,0.0693248696944124\n4,1,\"4.1\",28.5718215608655,0.0697966649009602\n4,1,\"4.1\",28.6802711562615,0.0702630148641428\n4,1,\"4.1\",28.7887207516574,0.0707224039763784\n4,1,\"4.1\",28.8971703470534,0.071173220952311\n4,1,\"4.1\",29.0056199424493,0.0716137616607476\n4,1,\"4.1\",29.1140695378453,0.0720408354917717\n4,1,\"4.1\",29.2225191332412,0.0724533000895403\n4,1,\"4.1\",29.3309687286372,0.0728494280647257\n4,1,\"4.1\",29.4394183240331,0.073227179816432\n4,1,\"4.1\",29.5478679194291,0.0735844588858021\n4,1,\"4.1\",29.656317514825,0.0739191222246396\n4,1,\"4.1\",29.764767110221,0.0742273651458678\n4,1,\"4.1\",29.8732167056169,0.0745066289323146\n4,1,\"4.1\",29.9816663010128,0.0747562105564772\n4,1,\"4.1\",30.0901158964088,0.0749739049976037\n4,1,\"4.1\",30.1985654918047,0.0751575283059082\n4,1,\"4.1\",30.3070150872007,0.0753049316020668\n4,1,\"4.1\",30.4154646825966,0.075413205639081\n4,1,\"4.1\",30.5239142779926,0.075476824411928\n4,1,\"4.1\",30.6323638733885,0.0754977280446104\n4,1,\"4.1\",30.7408134687845,0.0754740777688358\n4,1,\"4.1\",30.8492630641804,0.0754041428398757\n4,1,\"4.1\",30.9577126595764,0.0752863127797948\n4,1,\"4.1\",31.0661622549723,0.0751191089115973\n4,1,\"4.1\",31.1746118503683,0.0748960056204764\n4,1,\"4.1\",31.2830614457642,0.0746197681118252\n4,1,\"4.1\",31.3915110411601,0.0742904423373223\n4,1,\"4.1\",31.4999606365561,0.0739072265204797\n4,1,\"4.1\",31.608410231952,0.0734694969387151\n4,1,\"4.1\",31.716859827348,0.0729768132531289\n4,1,\"4.1\",31.8253094227439,0.0724256089989534\n4,1,\"4.1\",31.9337590181399,0.0718158396895502\n4,1,\"4.1\",32.0422086135358,0.0711510090686852\n4,1,\"4.1\",32.1506582089318,0.070431497585324\n4,1,\"4.1\",32.2591078043277,0.0696578786441938\n4,1,\"4.1\",32.3675573997237,0.0688309169477837\n4,1,\"4.1\",32.4760069951196,0.0679505455887017\n4,1,\"4.1\",32.5844565905156,0.0670139724282882\n4,1,\"4.1\",32.6929061859115,0.066027789197572\n4,1,\"4.1\",32.8013557813074,0.0649935385092745\n4,1,\"4.1\",32.9098053767034,0.0639129291403874\n4,1,\"4.1\",33.0182549720993,0.0627878286479506\n4,1,\"4.1\",33.1267045674953,0.0616202552673491\n4,1,\"4.1\",33.2351541628912,0.0604085735748187\n4,1,\"4.1\",33.3436037582872,0.0591585846471163\n4,1,\"4.1\",33.4520533536831,0.0578735395767132\n4,1,\"4.1\",33.5605029490791,0.0565559945649357\n4,1,\"4.1\",33.668952544475,0.0552086030200885\n4,1,\"4.1\",33.777402139871,0.0538341041043015\n4,1,\"4.1\",33.8858517352669,0.0524340365293446\n4,1,\"4.1\",33.9943013306629,0.0510117427402241\n4,1,\"4.1\",34.1027509260588,0.0495715906365927\n4,1,\"4.1\",34.2112005214547,0.0481165490153197\n4,1,\"4.1\",34.3196501168507,0.0466496069938999\n4,1,\"4.1\",34.4280997122466,0.0451737614739104\n4,1,\"4.1\",34.5365493076426,0.0436919514425385\n4,1,\"4.1\",34.6449989030385,0.0422073056906181\n4,1,\"4.1\",34.7534484984345,0.0407232915002544\n4,1,\"4.1\",34.8618980938304,0.0392427980148527\n4,1,\"4.1\",34.9703476892264,0.0377686575034353\n4,1,\"4.1\",35.0787972846223,0.0363036342389347\n4,1,\"4.1\",35.1872468800183,0.0348504138295506\n4,1,\"4.1\",35.2956964754142,0.0334132859158088\n4,1,\"4.1\",35.4041460708102,0.031993865412378\n4,1,\"4.1\",35.5125956662061,0.0305942141925076\n4,1,\"4.1\",35.621045261602,0.0292165714551836\n4,1,\"4.1\",35.729494856998,0.0278630508234242\n4,1,\"4.1\",35.8379444523939,0.0265356338774874\n4,1,\"4.1\",35.9463940477899,0.0252379461673425\n4,1,\"4.1\",36.0548436431858,0.0239719430716928\n4,1,\"4.1\",36.1632932385818,0.0227374394139921\n4,1,\"4.1\",36.2717428339777,0.0215357966062956\n4,1,\"4.1\",36.3801924293737,0.0203682240151032\n4,1,\"4.1\",36.4886420247696,0.0192357780646195\n4,1,\"4.1\",36.5970916201656,0.0181400955543156\n4,1,\"4.1\",36.7055412155615,0.017084956260259\n4,1,\"4.1\",36.8139908109575,0.0160672946364495\n4,1,\"4.1\",36.9224404063534,0.0150875218146575\n4,1,\"4.1\",37.0308900017493,0.0141459057527824\n4,1,\"4.1\",37.1393395971453,0.0132425755357879\n4,1,\"4.1\",37.2477891925412,0.0123775263383816\n4,1,\"4.1\",37.3562387879372,0.011554409755026\n4,1,\"4.1\",37.4646883833331,0.0107698741451429\n4,1,\"4.1\",37.5731379787291,0.0100227503377849\n4,1,\"4.1\",37.681587574125,0.00931252970733881\n4,1,\"4.1\",37.790037169521,0.00863860511153864\n4,1,\"4.1\",37.8984867649169,0.00800027863443723\n4,1,\"4.1\",38.0069363603129,0.00739880060829531\n4,1,\"4.1\",38.1153859557088,0.00683317446478939\n4,1,\"4.1\",38.2238355511048,0.00630037548831078\n4,1,\"4.1\",38.3322851465007,0.00579940840382392\n4,1,\"4.1\",38.4407347418966,0.00532923014970957\n4,1,\"4.1\",38.5491843372926,0.00488875770363518\n4,1,\"4.1\",38.6576339326885,0.004477419381795\n4,1,\"4.1\",38.7660835280845,0.0040961244162139\n4,1,\"4.1\",38.8745331234804,0.0037408706993417\n4,1,\"4.1\",38.9829827188764,0.00341048763157359\n4,1,\"4.1\",39.0914323142723,0.00310380202453232\n4,1,\"4.1\",39.1998819096683,0.00281964395175904\n4,1,\"4.1\",39.3083315050642,0.00255685218432103\n4,1,\"4.1\",39.4167811004602,0.00231618368117531\n4,1,\"4.1\",39.5252306958561,0.00209477129624294\n4,1,\"4.1\",39.6336802912521,0.00189111163541958\n4,1,\"4.1\",39.742129886648,0.00170413259126899\n4,1,\"4.1\",39.850579482044,0.0015327923402407\n4,1,\"4.1\",39.9590290774399,0.00137608197760305\n4,1,\"4.1\",40.0674786728358,0.00123378618066171\n4,1,\"4.1\",40.1759282682318,0.0011048275772243\n4,1,\"4.1\",40.2843778636277,0.000987507306658207\n4,1,\"4.1\",40.3928274590237,0.000880978110016076\n4,1,\"4.1\",40.5012770544196,0.000784433064212198\n4,1,\"4.1\",40.6097266498156,0.000697105877530977\n4,1,\"4.1\",40.7181762452115,0.00061842472519199\n4,1,\"4.1\",40.8266258406075,0.000548246083969722\n4,1,\"4.1\",40.9350754360034,0.000485099694328348\n4,1,\"4.1\",41.0435250313994,0.000428390592673711\n4,1,\"4.1\",41.1519746267953,0.000377561817227005\n4,1,\"4.1\",41.2604242221913,0.000332093325056511\n4,1,\"4.1\",41.3688738175872,0.000291500783324421\n4,1,\"4.1\",41.4773234129831,0.000255733818541058\n6,0,\"6.0\",15.1658768998052,0.00171042771052854\n6,0,\"6.0\",15.2006543358851,0.00193083192060623\n6,0,\"6.0\",15.2354317719651,0.0021775949480641\n6,0,\"6.0\",15.270209208045,0.00245173418802594\n6,0,\"6.0\",15.304986644125,0.00275575526838833\n6,0,\"6.0\",15.339764080205,0.00309232963469904\n6,0,\"6.0\",15.3745415162849,0.0034642983086597\n6,0,\"6.0\",15.4093189523649,0.00387467485128279\n6,0,\"6.0\",15.4440963884448,0.0043266474157324\n6,0,\"6.0\",15.4788738245248,0.00482357977132036\n6,0,\"6.0\",15.5136512606048,0.00537366137698158\n6,0,\"6.0\",15.5484286966847,0.00597695405859618\n6,0,\"6.0\",15.5832061327647,0.00663706122256935\n6,0,\"6.0\",15.6179835688446,0.00735807296897817\n6,0,\"6.0\",15.6527610049246,0.00814423807300933\n6,0,\"6.0\",15.6875384410046,0.00899995564223668\n6,0,\"6.0\",15.7223158770845,0.00992976487724949\n6,0,\"6.0\",15.7570933131645,0.0109383328398451\n6,0,\"6.0\",15.7918707492444,0.01203443842101\n6,0,\"6.0\",15.8266481853244,0.0132240746594563\n6,0,\"6.0\",15.8614256214044,0.0145079608888693\n6,0,\"6.0\",15.8962030574843,0.0158911184171258\n6,0,\"6.0\",15.9309804935643,0.0173785952828946\n6,0,\"6.0\",15.9657579296442,0.018975440038967\n6,0,\"6.0\",16.0005353657242,0.0206866733124936\n6,0,\"6.0\",16.0353128018041,0.0225172572015092\n6,0,\"6.0\",16.0700902378841,0.0244722160888815\n6,0,\"6.0\",16.1048676739641,0.0265687608812194\n6,0,\"6.0\",16.139645110044,0.0287996195997238\n6,0,\"6.0\",16.174422546124,0.0311691167219895\n6,0,\"6.0\",16.2091999822039,0.0336813246296122\n6,0,\"6.0\",16.2439774182839,0.0363400225178823\n6,0,\"6.0\",16.2787548543639,0.0391486544717997\n6,0,\"6.0\",16.3135322904438,0.0421102870117628\n6,0,\"6.0\",16.3483097265238,0.0452275664389513\n6,0,\"6.0\",16.3830871626037,0.048511113777624\n6,0,\"6.0\",16.4178645986837,0.0519611403568068\n6,0,\"6.0\",16.4526420347637,0.0555718835590395\n6,0,\"6.0\",16.4874194708436,0.0593437398391586\n6,0,\"6.0\",16.5221969069236,0.063276471721804\n6,0,\"6.0\",16.5569743430035,0.0673691729819784\n6,0,\"6.0\",16.5917517790835,0.0716202366270787\n6,0,\"6.0\",16.6265292151635,0.0760273261120149\n6,0,\"6.0\",16.6613066512434,0.0805886824427535\n6,0,\"6.0\",16.6960840873234,0.085311545905829\n6,0,\"6.0\",16.7308615234033,0.0901778591332938\n6,0,\"6.0\",16.7656389594833,0.0951819633617552\n6,0,\"6.0\",16.8004163955633,0.10031738867102\n6,0,\"6.0\",16.8351938316432,0.105576854733657\n6,0,\"6.0\",16.8699712677232,0.110952277333409\n6,0,\"6.0\",16.9047487038031,0.116434780835099\n6,0,\"6.0\",16.9395261398831,0.122014716735091\n6,0,\"6.0\",16.9743035759631,0.127686270970287\n6,0,\"6.0\",17.009081012043,0.133434704040206\n6,0,\"6.0\",17.043858448123,0.139245068152446\n6,0,\"6.0\",17.0786358842029,0.145104791697081\n6,0,\"6.0\",17.1134133202829,0.151000730815903\n6,0,\"6.0\",17.1481907563629,0.156919225550812\n6,0,\"6.0\",17.1829681924428,0.162846161089599\n6,0,\"6.0\",17.2177456285228,0.168767033703976\n6,0,\"6.0\",17.2525230646027,0.174666401396955\n6,0,\"6.0\",17.2873005006827,0.180525331371868\n6,0,\"6.0\",17.3220779367627,0.186330397968078\n6,0,\"6.0\",17.3568553728426,0.19206627673293\n6,0,\"6.0\",17.3916328089226,0.197717660792585\n6,0,\"6.0\",17.4264102450025,0.203269343560783\n6,0,\"6.0\",17.4611876810825,0.208706301623414\n6,0,\"6.0\",17.4959651171624,0.214013777066966\n6,0,\"6.0\",17.5307425532424,0.219177358515692\n6,0,\"6.0\",17.5655199893224,0.224171313575846\n6,0,\"6.0\",17.6002974254023,0.228987305119911\n6,0,\"6.0\",17.6350748614823,0.233616913394413\n6,0,\"6.0\",17.6698522975622,0.238048045522666\n6,0,\"6.0\",17.7046297336422,0.242269333469525\n6,0,\"6.0\",17.7394071697222,0.246270190845441\n6,0,\"6.0\",17.7741846058021,0.250040863769182\n6,0,\"6.0\",17.8089620418821,0.253572475375443\n6,0,\"6.0\",17.843739477962,0.256850829918106\n6,0,\"6.0\",17.878516914042,0.259856390968364\n6,0,\"6.0\",17.913294350122,0.262600998759724\n6,0,\"6.0\",17.9480717862019,0.265079831882771\n6,0,\"6.0\",17.9828492222819,0.267289064484143\n6,0,\"6.0\",18.0176266583618,0.269225865840553\n6,0,\"6.0\",18.0524040944418,0.270888392979714\n6,0,\"6.0\",18.0871815305218,0.272275776611053\n6,0,\"6.0\",18.1219589666017,0.273388100703395\n6,0,\"6.0\",18.1567364026817,0.27420564585886\n6,0,\"6.0\",18.1915138387616,0.27474619842652\n6,0,\"6.0\",18.2262912748416,0.275018040484328\n6,0,\"6.0\",18.2610687109216,0.275024937113327\n6,0,\"6.0\",18.2958461470015,0.274771411075841\n6,0,\"6.0\",18.3306235830815,0.274262693886367\n6,0,\"6.0\",18.3654010191614,0.2735046746646\n6,0,\"6.0\",18.4001784552414,0.272503847437728\n6,0,\"6.0\",18.4349558913214,0.271259908269995\n6,0,\"6.0\",18.4697333274013,0.269774255866649\n6,0,\"6.0\",18.5045107634813,0.268069841531665\n6,0,\"6.0\",18.5392881995612,0.266155124785491\n6,0,\"6.0\",18.5740656356412,0.264038891271561\n6,0,\"6.0\",18.6088430717212,0.261730204690237\n6,0,\"6.0\",18.6436205078011,0.259238361349112\n6,0,\"6.0\",18.6783979438811,0.256572847685686\n6,0,\"6.0\",18.713175379961,0.253743301051215\n6,0,\"6.0\",18.747952816041,0.250747356088133\n6,0,\"6.0\",18.782730252121,0.247606905102076\n6,0,\"6.0\",18.8175076882009,0.244333632625252\n6,0,\"6.0\",18.8522851242809,0.240937459962823\n6,0,\"6.0\",18.8870625603608,0.237428312233124\n6,0,\"6.0\",18.9218399964408,0.233816101936858\n6,0,\"6.0\",18.9566174325208,0.230110715731114\n6,0,\"6.0\",18.9913948686007,0.226322004131602\n6,0,\"6.0\",19.0261723046807,0.22245724096995\n6,0,\"6.0\",19.0609497407606,0.218526401675171\n6,0,\"6.0\",19.0957271768406,0.21454318807171\n6,0,\"6.0\",19.1305046129205,0.210517235869998\n6,0,\"6.0\",19.1652820490005,0.206458124163845\n6,0,\"6.0\",19.2000594850805,0.202375374683094\n6,0,\"6.0\",19.2348369211604,0.198278450920054\n6,0,\"6.0\",19.2696143572404,0.19417675668746\n6,0,\"6.0\",19.3043917933203,0.190079633684957\n6,0,\"6.0\",19.3391692294003,0.185998475006004\n6,0,\"6.0\",19.3739466654803,0.181942017460585\n6,0,\"6.0\",19.4087241015602,0.177919307656672\n6,0,\"6.0\",19.4435015376402,0.173939356391578\n6,0,\"6.0\",19.4782789737201,0.170011068074758\n6,0,\"6.0\",19.5130564098001,0.166143224422653\n6,0,\"6.0\",19.5478338458801,0.162344465276772\n6,0,\"6.0\",19.58261128196,0.158623266517956\n6,0,\"6.0\",19.61738871804,0.154992421532298\n6,0,\"6.0\",19.6521661541199,0.151461023374958\n6,0,\"6.0\",19.6869435901999,0.148032673481653\n6,0,\"6.0\",19.7217210262799,0.144714838677137\n6,0,\"6.0\",19.7564984623598,0.141514660184456\n6,0,\"6.0\",19.7912758984398,0.138438916414521\n6,0,\"6.0\",19.8260533345197,0.135493984459979\n6,0,\"6.0\",19.8608307705997,0.132685800715898\n6,0,\"6.0\",19.8956082066797,0.130020394269786\n6,0,\"6.0\",19.9303856427596,0.127516054477725\n6,0,\"6.0\",19.9651630788396,0.125163888658488\n6,0,\"6.0\",19.9999405149195,0.122967522905621\n6,0,\"6.0\",20.0347179509995,0.120929939171284\n6,0,\"6.0\",20.0694953870795,0.119053441838077\n6,0,\"6.0\",20.1042728231594,0.117339627127008\n6,0,\"6.0\",20.1390502592394,0.115789355831224\n6,0,\"6.0\",20.1738276953193,0.114402729840442\n6,0,\"6.0\",20.2086051313993,0.113188044864839\n6,0,\"6.0\",20.2433825674793,0.112141005996388\n6,0,\"6.0\",20.2781600035592,0.111252627307585\n6,0,\"6.0\",20.3129374396392,0.110519636569605\n6,0,\"6.0\",20.3477148757191,0.109937958135337\n6,0,\"6.0\",20.3824923117991,0.10950272188765\n6,0,\"6.0\",20.4172697478791,0.109208278099885\n6,0,\"6.0\",20.452047183959,0.10904821826306\n6,0,\"6.0\",20.486824620039,0.1090167863541\n6,0,\"6.0\",20.5216020561189,0.109113894563237\n6,0,\"6.0\",20.5563794921989,0.109320309391958\n6,0,\"6.0\",20.5911569282788,0.109626776839007\n6,0,\"6.0\",20.6259343643588,0.110023491396565\n6,0,\"6.0\",20.6607118004388,0.110500151885862\n6,0,\"6.0\",20.6954892365187,0.11104602173029\n6,0,\"6.0\",20.7302666725987,0.111649993220018\n6,0,\"6.0\",20.7650441086786,0.11230065527626\n6,0,\"6.0\",20.7998215447586,0.112987814461687\n6,0,\"6.0\",20.8345989808386,0.113697231004098\n6,0,\"6.0\",20.8693764169185,0.114415926831626\n6,0,\"6.0\",20.9041538529985,0.11513202496111\n6,0,\"6.0\",20.9389312890784,0.115833739341925\n6,0,\"6.0\",20.9737087251584,0.116509451122521\n6,0,\"6.0\",21.0084861612384,0.117147783907724\n6,0,\"6.0\",21.0432635973183,0.117737677363293\n6,0,\"6.0\",21.0780410333983,0.118267098174731\n6,0,\"6.0\",21.1128184694782,0.118720839494757\n6,0,\"6.0\",21.1475959055582,0.119093972110901\n6,0,\"6.0\",21.1823733416382,0.119377535616515\n6,0,\"6.0\",21.2171507777181,0.119563222899274\n6,0,\"6.0\",21.2519282137981,0.119643429638685\n6,0,\"6.0\",21.286705649878,0.119611298233958\n6,0,\"6.0\",21.321483085958,0.11946075581962\n6,0,\"6.0\",21.356260522038,0.119186546084282\n6,0,\"6.0\",21.3910379581179,0.118774888200136\n6,0,\"6.0\",21.4258153941979,0.118227963518517\n6,0,\"6.0\",21.4605928302778,0.117546451606032\n6,0,\"6.0\",21.4953702663578,0.116728761240501\n6,0,\"6.0\",21.5301477024378,0.115774175714448\n6,0,\"6.0\",21.5649251385177,0.114682842782443\n6,0,\"6.0\",21.5997025745977,0.113455758268061\n6,0,\"6.0\",21.6344800106776,0.112094743571101\n6,0,\"6.0\",21.6692574467576,0.110598944432964\n6,0,\"6.0\",21.7040348828376,0.108966943627866\n6,0,\"6.0\",21.7388123189175,0.107211968896351\n6,0,\"6.0\",21.7735897549975,0.105338960195887\n6,0,\"6.0\",21.8083671910774,0.103353475831491\n6,0,\"6.0\",21.8431446271574,0.101261640102477\n6,0,\"6.0\",21.8779220632373,0.0990700880241604\n6,0,\"6.0\",21.9126994993173,0.0967859076729369\n6,0,\"6.0\",21.9474769353973,0.0944165807124801\n6,0,\"6.0\",21.9822543714772,0.0919644691242854\n6,0,\"6.0\",22.0170318075572,0.0894432769464341\n6,0,\"6.0\",22.0518092436371,0.0868626162872796\n6,0,\"6.0\",22.0865866797171,0.0842309500329686\n6,0,\"6.0\",22.1213641157971,0.0815568119534266\n6,0,\"6.0\",22.156141551877,0.0788487484418417\n6,0,\"6.0\",22.190918987957,0.0761152622662853\n6,0,\"6.0\",22.2256964240369,0.0733647587445098\n6,0,\"6.0\",22.2604738601169,0.0706054857859808\n6,0,\"6.0\",22.2952512961969,0.0678464277110782\n6,0,\"6.0\",22.3300287322768,0.0650957978934741\n6,0,\"6.0\",22.3648061683568,0.0623610567491589\n6,0,\"6.0\",22.3995836044367,0.0596493363180134\n6,0,\"6.0\",22.4343610405167,0.0569674087378842\n6,0,\"6.0\",22.4691384765967,0.0543216588619859\n6,0,\"6.0\",22.5039159126766,0.0517180610635483\n6,0,\"6.0\",22.5386933487566,0.0491621602288441\n6,0,\"6.0\",22.5734707848365,0.0466640377060725\n6,0,\"6.0\",22.6082482209165,0.0442245682536597\n6,0,\"6.0\",22.6430256569965,0.0418473462167724\n6,0,\"6.0\",22.6778030930764,0.0395359782722594\n6,0,\"6.0\",22.7125805291564,0.0372936080754972\n6,0,\"6.0\",22.7473579652363,0.0351229214033927\n6,0,\"6.0\",22.7821354013163,0.0330261544083781\n6,0,\"6.0\",22.8169128373963,0.0310051047333711\n6,0,\"6.0\",22.8516902734762,0.0290644825843815\n6,0,\"6.0\",22.8864677095562,0.0272061143842609\n6,0,\"6.0\",22.9212451456361,0.025426398240463\n6,0,\"6.0\",22.9560225817161,0.0237254531082188\n6,0,\"6.0\",22.9908000177961,0.0221030551534307\n6,0,\"6.0\",23.025577453876,0.0205586605961504\n6,0,\"6.0\",23.060354889956,0.0190914293822899\n6,0,\"6.0\",23.0951323260359,0.0177002494251663\n6,0,\"6.0\",23.1299097621159,0.0163837611705676\n6,0,\"6.0\",23.1646871981959,0.0151471170404981\n6,0,\"6.0\",23.1994646342758,0.0139815471563177\n6,0,\"6.0\",23.2342420703558,0.0128849739994123\n6,0,\"6.0\",23.2690195064357,0.011855263085441\n6,0,\"6.0\",23.3037969425157,0.0108901591356759\n6,0,\"6.0\",23.3385743785957,0.00998730795317683\n6,0,\"6.0\",23.3733518146756,0.00914427731512837\n6,0,\"6.0\",23.4081292507556,0.00835857678221632\n6,0,\"6.0\",23.4429066868355,0.00763030967887548\n6,0,\"6.0\",23.4776841229155,0.0069563012651112\n6,0,\"6.0\",23.5124615589954,0.00633153801204285\n6,0,\"6.0\",23.5472389950754,0.00575347638009185\n6,0,\"6.0\",23.5820164311554,0.00521959879213449\n6,0,\"6.0\",23.6167938672353,0.00472742539291207\n6,0,\"6.0\",23.6515713033153,0.00427452451269861\n6,0,\"6.0\",23.6863487393952,0.0038585218632976\n6,0,\"6.0\",23.7211261754752,0.00347732029499573\n6,0,\"6.0\",23.7559036115552,0.00313113445236962\n6,0,\"6.0\",23.7906810476351,0.00281477999729292\n6,0,\"6.0\",23.8254584837151,0.00252620096804066\n6,0,\"6.0\",23.860235919795,0.00226342811702523\n6,0,\"6.0\",23.895013355875,0.0020245812426816\n6,0,\"6.0\",23.929790791955,0.00180787067870149\n6,0,\"6.0\",23.9645682280349,0.00161159801217817\n6,0,\"6.0\",23.9993456641149,0.00143415610239777\n6,0,\"6.0\",24.0341231001948,0.00127495144182477\n6,1,\"6.1\",18.6486481784409,0.00425795525362822\n6,1,\"6.1\",18.6619921142963,0.00476863523755977\n6,1,\"6.1\",18.6753360501516,0.00533237109660109\n6,1,\"6.1\",18.688679986007,0.00595365598723956\n6,1,\"6.1\",18.7020239218624,0.00663724524330459\n6,1,\"6.1\",18.7153678577177,0.00738815847275911\n6,1,\"6.1\",18.7287117935731,0.00821235543386984\n6,1,\"6.1\",18.7420557294285,0.00912099511991853\n6,1,\"6.1\",18.7553996652838,0.010114522690233\n6,1,\"6.1\",18.7687436011392,0.0111990517687017\n6,1,\"6.1\",18.7820875369945,0.0123809390561842\n6,1,\"6.1\",18.7954314728499,0.013666772698197\n6,1,\"6.1\",18.8087754087053,0.0150633577954567\n6,1,\"6.1\",18.8221193445606,0.0165776988909079\n6,1,\"6.1\",18.835463280416,0.0182169792800229\n6,1,\"6.1\",18.8488072162714,0.0199885370073796\n6,1,\"6.1\",18.8621511521267,0.0218998374318178\n6,1,\"6.1\",18.8754950879821,0.0239708373875396\n6,1,\"6.1\",18.8888390238375,0.0261982873678397\n6,1,\"6.1\",18.9021829596928,0.0285894730304608\n6,1,\"6.1\",18.9155268955482,0.0311520074285945\n6,1,\"6.1\",18.9288708314036,0.0338934268077791\n6,1,\"6.1\",18.9422147672589,0.0368211405288189\n6,1,\"6.1\",18.9555587031143,0.0399423775945534\n6,1,\"6.1\",18.9689026389697,0.0432641299455692\n6,1,\"6.1\",18.982246574825,0.0467930927355548\n6,1,\"6.1\",18.9955905106804,0.0505356018439144\n6,1,\"6.1\",19.0089344465358,0.0545130852764858\n6,1,\"6.1\",19.0222783823911,0.0587191485094579\n6,1,\"6.1\",19.0356223182465,0.063155563030855\n6,1,\"6.1\",19.0489662541019,0.0678264073790086\n6,1,\"6.1\",19.0623101899572,0.0727350405581175\n6,1,\"6.1\",19.0756541258126,0.0778840312029206\n6,1,\"6.1\",19.088998061668,0.0832750873287652\n6,1,\"6.1\",19.1023419975233,0.088908987299757\n6,1,\"6.1\",19.1156859333787,0.094785512679621\n6,1,\"6.1\",19.1290298692341,0.100903383656488\n6,1,\"6.1\",19.1423738050894,0.107273834369439\n6,1,\"6.1\",19.1557177409448,0.113884771780597\n6,1,\"6.1\",19.1690616768002,0.120725272937965\n6,1,\"6.1\",19.1824056126555,0.127788961680827\n6,1,\"6.1\",19.1957495485109,0.13506813273643\n6,1,\"6.1\",19.2090934843662,0.14255372016332\n6,1,\"6.1\",19.2224374202216,0.150235273618464\n6,1,\"6.1\",19.235781356077,0.158100943080192\n6,1,\"6.1\",19.2491252919323,0.16613747261214\n6,1,\"6.1\",19.2624692277877,0.174330203697458\n6,1,\"6.1\",19.2758131636431,0.182668823199018\n6,1,\"6.1\",19.2891570994984,0.191132272201789\n6,1,\"6.1\",19.3025010353538,0.199696623924503\n6,1,\"6.1\",19.3158449712092,0.20834158983598\n6,1,\"6.1\",19.3291889070645,0.217045670808791\n6,1,\"6.1\",19.3425328429199,0.225786228261316\n6,1,\"6.1\",19.3558767787753,0.234539566286064\n6,1,\"6.1\",19.3692207146306,0.243281024541073\n6,1,\"6.1\",19.382564650486,0.251985081571146\n6,1,\"6.1\",19.3959085863414,0.260625468114848\n6,1,\"6.1\",19.4092525221967,0.269171010339465\n6,1,\"6.1\",19.4225964580521,0.277590026709269\n6,1,\"6.1\",19.4359403939075,0.285859087048305\n6,1,\"6.1\",19.4492843297628,0.293950233937729\n6,1,\"6.1\",19.4626282656182,0.30183549727382\n6,1,\"6.1\",19.4759722014736,0.309487053482166\n6,1,\"6.1\",19.4893161373289,0.316877388344042\n6,1,\"6.1\",19.5026600731843,0.323979462231899\n6,1,\"6.1\",19.5160040090397,0.330766876501769\n6,1,\"6.1\",19.529347944895,0.337214039753663\n6,1,\"6.1\",19.5426918807504,0.343286630154529\n6,1,\"6.1\",19.5560358166057,0.348946264870811\n6,1,\"6.1\",19.5693797524611,0.354192217576548\n6,1,\"6.1\",19.5827236883165,0.359004079691651\n6,1,\"6.1\",19.5960676241718,0.363363069623139\n6,1,\"6.1\",19.6094115600272,0.367252168030967\n6,1,\"6.1\",19.6227554958826,0.37065624369618\n6,1,\"6.1\",19.6360994317379,0.373562168943469\n6,1,\"6.1\",19.6494433675933,0.375958923661931\n6,1,\"6.1\",19.6627873034487,0.377837687070274\n6,1,\"6.1\",19.676131239304,0.379184571388643\n6,1,\"6.1\",19.6894751751594,0.379966323388979\n6,1,\"6.1\",19.7028191110148,0.380217656677471\n6,1,\"6.1\",19.7161630468701,0.379939717754573\n6,1,\"6.1\",19.7295069827255,0.379136107600763\n6,1,\"6.1\",19.7428509185809,0.377812884194825\n6,1,\"6.1\",19.7561948544362,0.375978550364725\n6,1,\"6.1\",19.7695387902916,0.373644027209137\n6,1,\"6.1\",19.782882726147,0.37082261345794\n6,1,\"6.1\",19.7962266620023,0.367529931264261\n6,1,\"6.1\",19.8095705978577,0.363782621039633\n6,1,\"6.1\",19.8229145337131,0.35956937962522\n6,1,\"6.1\",19.8362584695684,0.354948622714326\n6,1,\"6.1\",19.8496024054238,0.349944873714193\n6,1,\"6.1\",19.8629463412792,0.344584498151573\n6,1,\"6.1\",19.8762902771345,0.338895581904617\n6,1,\"6.1\",19.8896342129899,0.332907802366172\n6,1,\"6.1\",19.9029781488453,0.326652293648474\n6,1,\"6.1\",19.9163220847006,0.3201615069479\n6,1,\"6.1\",19.929666020556,0.313469067182411\n6,1,\"6.1\",19.9430099564114,0.306609626993753\n6,1,\"6.1\",19.9563538922667,0.299611669405684\n6,1,\"6.1\",19.9696978281221,0.292523069578659\n6,1,\"6.1\",19.9830417639774,0.285381817599933\n6,1,\"6.1\",19.9963856998328,0.278225255748808\n6,1,\"6.1\",20.0097296356882,0.271090982294936\n6,1,\"6.1\",20.0230735715435,0.264016710912895\n6,1,\"6.1\",20.0364175073989,0.257040133664778\n6,1,\"6.1\",20.0497614432543,0.250198788026887\n6,1,\"6.1\",20.0631053791096,0.24352992833306\n6,1,\"6.1\",20.076449314965,0.237070401902684\n6,1,\"6.1\",20.0897932508204,0.230874362923617\n6,1,\"6.1\",20.1031371866757,0.224969764101236\n6,1,\"6.1\",20.1164811225311,0.219386582755619\n6,1,\"6.1\",20.1298250583865,0.214158690414288\n6,1,\"6.1\",20.1431689942418,0.209318979773968\n6,1,\"6.1\",20.1565129300972,0.204899270322933\n6,1,\"6.1\",20.1698568659526,0.200930217792177\n6,1,\"6.1\",20.1832008018079,0.197441227041291\n6,1,\"6.1\",20.1965447376633,0.194460367954525\n6,1,\"6.1\",20.2098886735187,0.19201429390569\n6,1,\"6.1\",20.223232609374,0.190158671808952\n6,1,\"6.1\",20.2365765452294,0.18890693479129\n6,1,\"6.1\",20.2499204810848,0.188263669462458\n6,1,\"6.1\",20.2632644169401,0.188248699331545\n6,1,\"6.1\",20.2766083527955,0.188880027705527\n6,1,\"6.1\",20.2899522886509,0.190173763175459\n6,1,\"6.1\",20.3032962245062,0.192144045250361\n6,1,\"6.1\",20.3166401603616,0.194802970087745\n6,1,\"6.1\",20.329984096217,0.198160516367779\n6,1,\"6.1\",20.3433280320723,0.202224471462551\n6,1,\"6.1\",20.3566719679277,0.207029831012333\n6,1,\"6.1\",20.370015903783,0.212579859971775\n6,1,\"6.1\",20.3833598396384,0.21884545134103\n6,1,\"6.1\",20.3967037754938,0.225824364810761\n6,1,\"6.1\",20.4100477113491,0.233511800553685\n6,1,\"6.1\",20.4233916472045,0.241900337893791\n6,1,\"6.1\",20.4367355830599,0.25097987872497\n6,1,\"6.1\",20.4500795189152,0.260737596685331\n6,1,\"6.1\",20.4634234547706,0.271157893159024\n6,1,\"6.1\",20.476767390626,0.282222361228762\n6,1,\"6.1\",20.4901113264813,0.293927801383552\n6,1,\"6.1\",20.5034552623367,0.306260473182807\n6,1,\"6.1\",20.5167991981921,0.319160428570783\n6,1,\"6.1\",20.5301431340474,0.332597266796392\n6,1,\"6.1\",20.5434870699028,0.346537768361286\n6,1,\"6.1\",20.5568310057582,0.360945935872025\n6,1,\"6.1\",20.5701749416135,0.375783050964946\n6,1,\"6.1\",20.5835188774689,0.391007748133773\n6,1,\"6.1\",20.5968628133243,0.406576106162613\n6,1,\"6.1\",20.6102067491796,0.422441757722111\n6,1,\"6.1\",20.623550685035,0.438559751238808\n6,1,\"6.1\",20.6368946208904,0.454882843315548\n6,1,\"6.1\",20.6502385567457,0.471342473406105\n6,1,\"6.1\",20.6635824926011,0.487883617995205\n6,1,\"6.1\",20.6769264284565,0.50444969373118\n6,1,\"6.1\",20.6902703643118,0.520982782955901\n6,1,\"6.1\",20.7036143001672,0.53742387573285\n6,1,\"6.1\",20.7169582360226,0.553713127264351\n6,1,\"6.1\",20.7303021718779,0.569790129376949\n6,1,\"6.1\",20.7436461077333,0.585594194549822\n6,1,\"6.1\",20.7569900435886,0.601061405549222\n6,1,\"6.1\",20.770333979444,0.616100097194627\n6,1,\"6.1\",20.7836779152994,0.630676159379968\n6,1,\"6.1\",20.7970218511547,0.644731084142466\n6,1,\"6.1\",20.8103657870101,0.658207710203245\n6,1,\"6.1\",20.8237097228655,0.671050539593757\n6,1,\"6.1\",20.8370536587208,0.683206050736559\n6,1,\"6.1\",20.8503975945762,0.69462300540571\n6,1,\"6.1\",20.8637415304316,0.705252746981757\n6,1,\"6.1\",20.8770854662869,0.715049487435465\n6,1,\"6.1\",20.8904294021423,0.723970580522671\n6,1,\"6.1\",20.9037733379977,0.731901160220131\n6,1,\"6.1\",20.917117273853,0.738873759335856\n6,1,\"6.1\",20.9304612097084,0.744860113133531\n6,1,\"6.1\",20.9438051455638,0.749833419969807\n6,1,\"6.1\",20.9571490814191,0.753771134923178\n6,1,\"6.1\",20.9704930172745,0.75665510505843\n6,1,\"6.1\",20.9838369531299,0.758471676587074\n6,1,\"6.1\",20.9971808889852,0.759211772860208\n6,1,\"6.1\",21.0105248248406,0.758870942397619\n6,1,\"6.1\",21.023868760696,0.757449376434601\n6,1,\"6.1\",21.0372126965513,0.754878816843039\n6,1,\"6.1\",21.0505566324067,0.751228890273292\n6,1,\"6.1\",21.0639005682621,0.746529383963513\n6,1,\"6.1\",21.0772445041174,0.74079952537052\n6,1,\"6.1\",21.0905884399728,0.734062773644249\n6,1,\"6.1\",21.1039323758282,0.726346651316131\n6,1,\"6.1\",21.1172763116835,0.717682550388891\n6,1,\"6.1\",21.1306202475389,0.708105514575091\n6,1,\"6.1\",21.1439641833942,0.697653999640501\n6,1,\"6.1\",21.1573081192496,0.686369613994621\n6,1,\"6.1\",21.170652055105,0.674254270362266\n6,1,\"6.1\",21.1839959909603,0.661385559158039\n6,1,\"6.1\",21.1973399268157,0.647832773197402\n6,1,\"6.1\",21.2106838626711,0.633647562868192\n6,1,\"6.1\",21.2240277985264,0.618883136366357\n6,1,\"6.1\",21.2373717343818,0.603593933403992\n6,1,\"6.1\",21.2507156702372,0.587835298056981\n6,1,\"6.1\",21.2640596060925,0.571663153375418\n6,1,\"6.1\",21.2774035419479,0.555133680304628\n6,1,\"6.1\",21.2907474778033,0.538303003364411\n6,1,\"6.1\",21.3040914136586,0.52121812122684\n6,1,\"6.1\",21.317435349514,0.503942581434472\n6,1,\"6.1\",21.3307792853694,0.486538903892793\n6,1,\"6.1\",21.3441232212247,0.469059742291405\n6,1,\"6.1\",21.3574671570801,0.451556239031727\n6,1,\"6.1\",21.3708110929355,0.434077800597903\n6,1,\"6.1\",21.3841550287908,0.416671892669989\n6,1,\"6.1\",21.3974989646462,0.399383855890864\n6,1,\"6.1\",21.4108429005016,0.382256742974725\n6,1,\"6.1\",21.4241868363569,0.365331177623104\n6,1,\"6.1\",21.4375307722123,0.348655046795416\n6,1,\"6.1\",21.4508747080677,0.332270503390489\n6,1,\"6.1\",21.464218643923,0.316198211744649\n6,1,\"6.1\",21.4775625797784,0.300467512764201\n6,1,\"6.1\",21.4909065156338,0.285104938607761\n6,1,\"6.1\",21.5042504514891,0.270134206527308\n6,1,\"6.1\",21.5175943873445,0.255576231782109\n6,1,\"6.1\",21.5309383231998,0.241449158575242\n6,1,\"6.1\",21.5442822590552,0.227768407849708\n6,1,\"6.1\",21.5576261949106,0.214546740686603\n6,1,\"6.1\",21.5709701307659,0.201806009621888\n6,1,\"6.1\",21.5843140666213,0.189570406416141\n6,1,\"6.1\",21.5976580024767,0.177817469854832\n6,1,\"6.1\",21.611001938332,0.166549763748108\n6,1,\"6.1\",21.6243458741874,0.155767728469273\n6,1,\"6.1\",21.6376898100428,0.145469810212566\n6,1,\"6.1\",21.6510337458981,0.135652595382804\n6,1,\"6.1\",21.6643776817535,0.126310948736745\n6,1,\"6.1\",21.6777216176089,0.117438153948842\n6,1,\"6.1\",21.6910655534642,0.109026055337642\n6,1,\"6.1\",21.7044094893196,0.101071111024978\n6,1,\"6.1\",21.717753425175,0.0935861108462612\n6,1,\"6.1\",21.7310973610303,0.0865281998970466\n6,1,\"6.1\",21.7444412968857,0.0798847070419712\n6,1,\"6.1\",21.7577852327411,0.0736422424868666\n6,1,\"6.1\",21.7711291685964,0.0677868227723005\n6,1,\"6.1\",21.7844731044518,0.0623039902385876\n6,1,\"6.1\",21.7978170403072,0.0571789264474706\n6,1,\"6.1\",21.8111609761625,0.0523965591395344\n6,1,\"6.1\",21.8245049120179,0.0479416623974613\n6,1,\"6.1\",21.8378488478733,0.0437996650585695\n6,1,\"6.1\",21.8511927837286,0.0399770662297794\n6,1,\"6.1\",21.864536719584,0.0364339523898953\n6,1,\"6.1\",21.8778806554394,0.0331553929003074\n6,1,\"6.1\",21.8912245912947,0.0301267117359557\n6,1,\"6.1\",21.9045685271501,0.0273335423577526\n6,1,\"6.1\",21.9179124630055,0.0247618757217013\n6,1,\"6.1\",21.9312563988608,0.0223981016601497\n6,1,\"6.1\",21.9446003347162,0.0202290439092585\n6,1,\"6.1\",21.9579442705715,0.0182419890891586\n6,1,\"6.1\",21.9712882064269,0.0164247099696015\n6,1,\"6.1\",21.9846321422823,0.0147763162428184\n6,1,\"6.1\",21.9979760781376,0.0132744899375353\n6,1,\"6.1\",22.011320013993,0.0119073115462324\n6,1,\"6.1\",22.0246639498484,0.0106647418598173\n6,1,\"6.1\",22.0380078857037,0.00953727021607671\n6,1,\"6.1\",22.0513518215591,0.00851591030636868\n8,0,\"8.0\",7.24354247237872,0.000709819335093336\n8,0,\"8.0\",7.30280880592869,0.000838644174690434\n8,0,\"8.0\",7.36207513947866,0.000986638408111557\n8,0,\"8.0\",7.42134147302863,0.00115996096906081\n8,0,\"8.0\",7.48060780657861,0.0013582816075968\n8,0,\"8.0\",7.53987414012858,0.00158385958970776\n8,0,\"8.0\",7.59914047367855,0.00184205686881878\n8,0,\"8.0\",7.65840680722852,0.00213753522217894\n8,0,\"8.0\",7.71767314077849,0.00247022629268349\n8,0,\"8.0\",7.77693947432846,0.00284346255087229\n8,0,\"8.0\",7.83620580787843,0.00326881163430402\n8,0,\"8.0\",7.8954721414284,0.00374335655304623\n8,0,\"8.0\",7.95473847497837,0.00427021571813136\n8,0,\"8.0\",8.01400480852834,0.00485800654533595\n8,0,\"8.0\",8.07327114207831,0.0055122694110853\n8,0,\"8.0\",8.13253747562828,0.0062309141570626\n8,0,\"8.0\",8.19180380917826,0.00701742826759172\n8,0,\"8.0\",8.25107014272823,0.00788826833825289\n8,0,\"8.0\",8.3103364762782,0.00883472188724549\n8,0,\"8.0\",8.36960280982817,0.00985909849549818\n8,0,\"8.0\",8.42886914337814,0.0109710572816622\n8,0,\"8.0\",8.48813547692811,0.0121733413653913\n8,0,\"8.0\",8.54740181047808,0.0134596314214202\n8,0,\"8.0\",8.60666814402805,0.0148306595566545\n8,0,\"8.0\",8.66593447757802,0.0163018176502272\n8,0,\"8.0\",8.72520081112799,0.0178567686432396\n8,0,\"8.0\",8.78446714467796,0.0194938706996337\n8,0,\"8.0\",8.84373347822793,0.0212178785418759\n8,0,\"8.0\",8.9029998117779,0.0230240176969569\n8,0,\"8.0\",8.96226614532788,0.02490082690854\n8,0,\"8.0\",9.02153247887785,0.0268432621948285\n8,0,\"8.0\",9.08079881242782,0.0288536685006125\n8,0,\"8.0\",9.14006514597779,0.0309132877198055\n8,0,\"8.0\",9.19933147952776,0.0330136657786014\n8,0,\"8.0\",9.25859781307773,0.0351475866570807\n8,0,\"8.0\",9.3178641466277,0.0373019759920769\n8,0,\"8.0\",9.37713048017767,0.0394633481183713\n8,0,\"8.0\",9.43639681372764,0.0416197652501383\n8,0,\"8.0\",9.49566314727761,0.0437539509259322\n8,0,\"8.0\",9.55492948082758,0.0458545252881218\n8,0,\"8.0\",9.61419581437755,0.0479084505262211\n8,0,\"8.0\",9.67346214792753,0.0498946975466691\n8,0,\"8.0\",9.7327284814775,0.0517992232471645\n8,0,\"8.0\",9.79199481502747,0.0536138977094043\n8,0,\"8.0\",9.85126114857744,0.055324068760412\n8,0,\"8.0\",9.91052748212741,0.0568989600892947\n8,0,\"8.0\",9.96979381567738,0.0583449213191935\n8,0,\"8.0\",10.0290601492273,0.0596518013203345\n8,0,\"8.0\",10.0883264827773,0.0607927931861236\n8,0,\"8.0\",10.1475928163273,0.0617649372079892\n8,0,\"8.0\",10.2068591498773,0.0625724508564285\n8,0,\"8.0\",10.2661254834272,0.0632062265765813\n8,0,\"8.0\",10.3253918169772,0.0636394762004206\n8,0,\"8.0\",10.3846581505272,0.0638979154639092\n8,0,\"8.0\",10.4439244840771,0.0639819027801629\n8,0,\"8.0\",10.5031908176271,0.06387337574315\n8,0,\"8.0\",10.5624571511771,0.0635865464104148\n8,0,\"8.0\",10.6217234847271,0.0631381528665964\n8,0,\"8.0\",10.680989818277,0.0625311081963284\n8,0,\"8.0\",10.740256151827,0.0617585786430312\n8,0,\"8.0\",10.799522485377,0.0608543355645829\n8,0,\"8.0\",10.8587888189269,0.0598303156725327\n8,0,\"8.0\",10.9180551524769,0.0586880974720982\n8,0,\"8.0\",10.9773214860269,0.0574517952811615\n8,0,\"8.0\",11.0365878195769,0.0561425876006423\n8,0,\"8.0\",11.0958541531268,0.0547748834560973\n8,0,\"8.0\",11.1551204866768,0.0533638589029582\n8,0,\"8.0\",11.2143868202268,0.0519339035749979\n8,0,\"8.0\",11.2736531537767,0.0505018396737962\n8,0,\"8.0\",11.3329194873267,0.0490886212603486\n8,0,\"8.0\",11.3921858208767,0.0477125855182655\n8,0,\"8.0\",11.4514521544267,0.0463888592669493\n8,0,\"8.0\",11.5107184879766,0.0451365754325194\n8,0,\"8.0\",11.5699848215266,0.0439814818900205\n8,0,\"8.0\",11.6292511550766,0.042927325307445\n8,0,\"8.0\",11.6885174886265,0.0419870304961536\n8,0,\"8.0\",11.7477838221765,0.0411913587929567\n8,0,\"8.0\",11.8070501557265,0.0405413896450981\n8,0,\"8.0\",11.8663164892764,0.0400407758921385\n8,0,\"8.0\",11.9255828228264,0.0397059816577026\n8,0,\"8.0\",11.9848491563764,0.0395595289427396\n8,0,\"8.0\",12.0441154899264,0.0395857848188936\n8,0,\"8.0\",12.1033818234763,0.039789390669066\n8,0,\"8.0\",12.1626481570263,0.0402001789814182\n8,0,\"8.0\",12.2219144905763,0.0408021256496694\n8,0,\"8.0\",12.2811808241262,0.0415892941730152\n8,0,\"8.0\",12.3404471576762,0.0425721365473799\n8,0,\"8.0\",12.3997134912262,0.0437632905503409\n8,0,\"8.0\",12.4589798247762,0.0451374822848287\n8,0,\"8.0\",12.5182461583261,0.0466924054615827\n8,0,\"8.0\",12.5775124918761,0.0484510752299738\n8,0,\"8.0\",12.6367788254261,0.0503886808517921\n8,0,\"8.0\",12.696045158976,0.0524950813509594\n8,0,\"8.0\",12.755311492526,0.0547752406307412\n8,0,\"8.0\",12.814577826076,0.0572325378794581\n8,0,\"8.0\",12.8738441596259,0.0598415838484317\n8,0,\"8.0\",12.9331104931759,0.0625964444083914\n8,0,\"8.0\",12.9923768267259,0.0655114828760546\n8,0,\"8.0\",13.0516431602759,0.0685612167005329\n8,0,\"8.0\",13.1109094938258,0.0717349147063292\n8,0,\"8.0\",13.1701758273758,0.0750325797928404\n8,0,\"8.0\",13.2294421609258,0.0784502356262418\n8,0,\"8.0\",13.2887084944757,0.0819666013626082\n8,0,\"8.0\",13.3479748280257,0.0855732991507067\n8,0,\"8.0\",13.4072411615757,0.0892732172772444\n8,0,\"8.0\",13.4665074951257,0.0930442979243946\n8,0,\"8.0\",13.5257738286756,0.0968750754518408\n8,0,\"8.0\",13.5850401622256,0.100758076691697\n8,0,\"8.0\",13.6443064957756,0.104681535308079\n8,0,\"8.0\",13.7035728293255,0.108628915032153\n8,0,\"8.0\",13.7628391628755,0.112588305202647\n8,0,\"8.0\",13.8221054964255,0.116545042818672\n8,0,\"8.0\",13.8813718299755,0.120484322942532\n8,0,\"8.0\",13.9406381635254,0.124392643546246\n8,0,\"8.0\",13.9999044970754,0.128251268713756\n8,0,\"8.0\",14.0591708306254,0.132041176375199\n8,0,\"8.0\",14.1184371641753,0.135752639591671\n8,0,\"8.0\",14.1777034977253,0.139370745627874\n8,0,\"8.0\",14.2369698312753,0.142859070923832\n8,0,\"8.0\",14.2962361648252,0.146218375087622\n8,0,\"8.0\",14.3555024983752,0.149434815073963\n8,0,\"8.0\",14.4147688319252,0.152479095932295\n8,0,\"8.0\",14.4740351654752,0.155331838480034\n8,0,\"8.0\",14.5333014990251,0.157995253783003\n8,0,\"8.0\",14.5925678325751,0.160456608848184\n8,0,\"8.0\",14.6518341661251,0.162663653749664\n8,0,\"8.0\",14.711100499675,0.164642066244518\n8,0,\"8.0\",14.770366833225,0.166383080042307\n8,0,\"8.0\",14.829633166775,0.167855431900806\n8,0,\"8.0\",14.888899500325,0.169051002820586\n8,0,\"8.0\",14.9481658338749,0.169987469069871\n8,0,\"8.0\",15.0074321674249,0.170660648747497\n8,0,\"8.0\",15.0666985009749,0.171022065344351\n8,0,\"8.0\",15.1259648345248,0.171119334108844\n8,0,\"8.0\",15.1852311680748,0.170954440261527\n8,0,\"8.0\",15.2444975016248,0.170506343076708\n8,0,\"8.0\",15.3037638351748,0.16978482641455\n8,0,\"8.0\",15.3630301687247,0.168819042371435\n8,0,\"8.0\",15.4222965022747,0.167615583998889\n8,0,\"8.0\",15.4815628358247,0.166149440485057\n8,0,\"8.0\",15.5408291693746,0.164472610327286\n8,0,\"8.0\",15.6000955029246,0.162597803825961\n8,0,\"8.0\",15.6593618364746,0.160521224687786\n8,0,\"8.0\",15.7186281700245,0.158265091496802\n8,0,\"8.0\",15.7778945035745,0.155859083875769\n8,0,\"8.0\",15.8371608371245,0.153317265640489\n8,0,\"8.0\",15.8964271706745,0.150640924862025\n8,0,\"8.0\",15.9556935042244,0.147868044932915\n8,0,\"8.0\",16.0149598377744,0.145014970905766\n8,0,\"8.0\",16.0742261713244,0.142092764720215\n8,0,\"8.0\",16.1334925048743,0.1391229294407\n8,0,\"8.0\",16.1927588384243,0.136125283195116\n8,0,\"8.0\",16.2520251719743,0.133114788563265\n8,0,\"8.0\",16.3112915055243,0.130108541425153\n8,0,\"8.0\",16.3705578390742,0.127121281691263\n8,0,\"8.0\",16.4298241726242,0.124165602686995\n8,0,\"8.0\",16.4890905061742,0.121259643925065\n8,0,\"8.0\",16.5483568397241,0.11841424197288\n8,0,\"8.0\",16.6076231732741,0.115636090499964\n8,0,\"8.0\",16.6668895068241,0.112936397400152\n8,0,\"8.0\",16.7261558403741,0.110335302953725\n8,0,\"8.0\",16.785422173924,0.107827402825533\n8,0,\"8.0\",16.844688507474,0.105418618044065\n8,0,\"8.0\",16.903954841024,0.103127220271959\n8,0,\"8.0\",16.9632211745739,0.100951740561961\n8,0,\"8.0\",17.0224875081239,0.098888886478324\n8,0,\"8.0\",17.0817538416739,0.0969448739030035\n8,0,\"8.0\",17.1410201752238,0.0951348988700737\n8,0,\"8.0\",17.2002865087738,0.0934422620240849\n8,0,\"8.0\",17.2595528423238,0.0918667565250471\n8,0,\"8.0\",17.3188191758738,0.0904220705005039\n8,0,\"8.0\",17.3780855094237,0.0890976492582678\n8,0,\"8.0\",17.4373518429737,0.0878845590187119\n8,0,\"8.0\",17.4966181765237,0.0867836371346541\n8,0,\"8.0\",17.5558845100736,0.085800848299144\n8,0,\"8.0\",17.6151508436236,0.0849160609214415\n8,0,\"8.0\",17.6744171771736,0.0841238287441635\n8,0,\"8.0\",17.7336835107236,0.0834287206177751\n8,0,\"8.0\",17.7929498442735,0.0828153954175431\n8,0,\"8.0\",17.8522161778235,0.0822722527057684\n8,0,\"8.0\",17.9114825113735,0.081793725558985\n8,0,\"8.0\",17.9707488449234,0.0813744700147492\n8,0,\"8.0\",18.0300151784734,0.0809972210900611\n8,0,\"8.0\",18.0892815120234,0.0806525714370028\n8,0,\"8.0\",18.1485478455734,0.0803325769171864\n8,0,\"8.0\",18.2078141791233,0.0800233360923067\n8,0,\"8.0\",18.2670805126733,0.0797138377422007\n8,0,\"8.0\",18.3263468462233,0.0793928272532545\n8,0,\"8.0\",18.3856131797732,0.0790465475909931\n8,0,\"8.0\",18.4448795133232,0.0786668754909388\n8,0,\"8.0\",18.5041458468732,0.0782442680901508\n8,0,\"8.0\",18.5634121804231,0.0777606787597259\n8,0,\"8.0\",18.6226785139731,0.077211853170534\n8,0,\"8.0\",18.6819448475231,0.0765919345470183\n8,0,\"8.0\",18.7412111810731,0.075888896448535\n8,0,\"8.0\",18.800477514623,0.0750895789856115\n8,0,\"8.0\",18.859743848173,0.0741988535412957\n8,0,\"8.0\",18.919010181723,0.0732125551621924\n8,0,\"8.0\",18.9782765152729,0.0721121941641301\n8,0,\"8.0\",19.0375428488229,0.0709075660473832\n8,0,\"8.0\",19.0968091823729,0.0696010528015706\n8,0,\"8.0\",19.1560755159229,0.0681867163322986\n8,0,\"8.0\",19.2153418494728,0.0666610702614286\n8,0,\"8.0\",19.2746081830228,0.0650390571061224\n8,0,\"8.0\",19.3338745165728,0.0633245795621214\n8,0,\"8.0\",19.3931408501227,0.0615095623567515\n8,0,\"8.0\",19.4524071836727,0.0596124945649828\n8,0,\"8.0\",19.5116735172227,0.0576422985694998\n8,0,\"8.0\",19.5709398507726,0.0556024859517731\n8,0,\"8.0\",19.6302061843226,0.0535004993180628\n8,0,\"8.0\",19.6894725178726,0.0513522232255957\n8,0,\"8.0\",19.7487388514226,0.0491666982086511\n8,0,\"8.0\",19.8080051849725,0.0469501794242629\n8,0,\"8.0\",19.8672715185225,0.0447175137969251\n8,0,\"8.0\",19.9265378520725,0.042478593877453\n8,0,\"8.0\",19.9858041856224,0.0402436881662407\n8,0,\"8.0\",20.0450705191724,0.0380241890331921\n8,0,\"8.0\",20.1043368527224,0.0358281709841034\n8,0,\"8.0\",20.1636031862724,0.0336638642551249\n8,0,\"8.0\",20.2228695198223,0.0315469708811893\n8,0,\"8.0\",20.2821358533723,0.0294793193181112\n8,0,\"8.0\",20.3414021869223,0.0274667906301363\n8,0,\"8.0\",20.4006685204722,0.0255205626325831\n8,0,\"8.0\",20.4599348540222,0.0236479361011088\n8,0,\"8.0\",20.5192011875722,0.0218467842277877\n8,0,\"8.0\",20.5784675211222,0.0201205464372556\n8,0,\"8.0\",20.6377338546721,0.0184860206507788\n8,0,\"8.0\",20.6970001882221,0.0169321938322088\n8,0,\"8.0\",20.7562665217721,0.0154597578513829\n8,0,\"8.0\",20.815532855322,0.0140764937425434\n8,0,\"8.0\",20.874799188872,0.0127828198594526\n8,0,\"8.0\",20.934065522422,0.0115702507622315\n8,0,\"8.0\",20.9933318559719,0.0104375824562447\n8,0,\"8.0\",21.0525981895219,0.00939706814802856\n8,0,\"8.0\",21.1118645230719,0.00843210888098928\n8,0,\"8.0\",21.1711308566219,0.00754022139049079\n8,0,\"8.0\",21.2303971901718,0.00672499061998936\n8,0,\"8.0\",21.2896635237218,0.00598237359207643\n8,0,\"8.0\",21.3489298572718,0.00530303448121285\n8,0,\"8.0\",21.4081961908217,0.00468401398083155\n8,0,\"8.0\",21.4674625243717,0.00413100330690195\n8,0,\"8.0\",21.5267288579217,0.00363018721898733\n8,0,\"8.0\",21.5859951914717,0.00317817678820781\n8,0,\"8.0\",21.6452615250216,0.00277581402584219\n8,0,\"8.0\",21.7045278585716,0.00241830780194567\n8,0,\"8.0\",21.7637941921216,0.0020988110948215\n8,0,\"8.0\",21.8230605256715,0.00181464392588536\n8,0,\"8.0\",21.8823268592215,0.00156743592177043\n8,0,\"8.0\",21.9415931927715,0.0013486405231602\n8,0,\"8.0\",22.0008595263215,0.00115566524358023\n8,0,\"8.0\",22.0601258598714,0.000988289358920336\n8,0,\"8.0\",22.1193921934214,0.00084308306407162\n8,0,\"8.0\",22.1786585269714,0.000716228593204182\n8,0,\"8.0\",22.2379248605213,0.000606061990741717\n8,0,\"8.0\",22.2971911940713,0.000512649589047772\n8,0,\"8.0\",22.3564575276213,0.000431805370035876\n8,1,\"8.1\",14.2983622325673,0.00957797543416441\n8,1,\"8.1\",14.3070025287825,0.0106913283525774\n8,1,\"8.1\",14.3156428249976,0.0119170655902803\n8,1,\"8.1\",14.3242831212128,0.0132644535573976\n8,1,\"8.1\",14.3329234174279,0.0147432862447897\n8,1,\"8.1\",14.3415637136431,0.0163638894313257\n8,1,\"8.1\",14.3502040098583,0.0181371217019402\n8,1,\"8.1\",14.3588443060734,0.0200743719218602\n8,1,\"8.1\",14.3674846022886,0.0221878599725879\n8,1,\"8.1\",14.3761248985037,0.0245038419712443\n8,1,\"8.1\",14.3847651947189,0.0270228973627917\n8,1,\"8.1\",14.393405490934,0.0297585123992079\n8,1,\"8.1\",14.4020457871492,0.0327246179207571\n8,1,\"8.1\",14.4106860833644,0.0359355564681393\n8,1,\"8.1\",14.4193263795795,0.039406043368012\n8,1,\"8.1\",14.4279666757947,0.0431511215263834\n8,1,\"8.1\",14.4366069720098,0.0471861096983464\n8,1,\"8.1\",14.445247268225,0.0515265440423279\n8,1,\"8.1\",14.4538875644402,0.0561881128124603\n8,1,\"8.1\",14.4625278606553,0.0611865840939279\n8,1,\"8.1\",14.4711681568705,0.0665395898049399\n8,1,\"8.1\",14.4798084530856,0.0722866663881065\n8,1,\"8.1\",14.4884487493008,0.0784196368385822\n8,1,\"8.1\",14.4970890455159,0.0849536540401083\n8,1,\"8.1\",14.5057293417311,0.0919034594258219\n8,1,\"8.1\",14.5143696379463,0.0992832689255713\n8,1,\"8.1\",14.5230099341614,0.107106653322792\n8,1,\"8.1\",14.5316502303766,0.115386413544465\n8,1,\"8.1\",14.5402905265917,0.124134451496307\n8,1,\"8.1\",14.5489308228069,0.13336163714429\n8,1,\"8.1\",14.5575711190221,0.143077672631925\n8,1,\"8.1\",14.5662114152372,0.153290954309392\n8,1,\"8.1\",14.5748517114524,0.164012750337117\n8,1,\"8.1\",14.5834920076675,0.175276603998841\n8,1,\"8.1\",14.5921323038827,0.187053894868904\n8,1,\"8.1\",14.6007726000978,0.199346034750978\n8,1,\"8.1\",14.609412896313,0.212152414609941\n8,1,\"8.1\",14.6180531925282,0.225470278496788\n8,1,\"8.1\",14.6266934887433,0.239294603976343\n8,1,\"8.1\",14.6353337849585,0.253617990425286\n8,1,\"8.1\",14.6439740811736,0.268430556579707\n8,1,\"8.1\",14.6526143773888,0.283719848709083\n8,1,\"8.1\",14.661254673604,0.299470760777032\n8,1,\"8.1\",14.6698949698191,0.315665467917139\n8,1,\"8.1\",14.6785352660343,0.332288111376395\n8,1,\"8.1\",14.6871755622494,0.34933231805137\n8,1,\"8.1\",14.6958158584646,0.366746181206813\n8,1,\"8.1\",14.7044561546797,0.384500116890595\n8,1,\"8.1\",14.7130964508949,0.402561740669567\n8,1,\"8.1\",14.7217367471101,0.420895910786865\n8,1,\"8.1\",14.7303770433252,0.439464791867007\n8,1,\"8.1\",14.7390173395404,0.458227939617918\n8,1,\"8.1\",14.7476576357555,0.477142406807681\n8,1,\"8.1\",14.7562979319707,0.496162870612532\n8,1,\"8.1\",14.7649382281859,0.51524178124258\n8,1,\"8.1\",14.773578524401,0.534329531555015\n8,1,\"8.1\",14.7822188206162,0.553373138166061\n8,1,\"8.1\",14.7908591168313,0.572310988545254\n8,1,\"8.1\",14.7994994130465,0.591091042664782\n8,1,\"8.1\",14.8081397092616,0.609657388272916\n8,1,\"8.1\",14.8167800054768,0.627953260072753\n8,1,\"8.1\",14.825420301692,0.645921321543472\n8,1,\"8.1\",14.8340605979071,0.663503959517466\n8,1,\"8.1\",14.8427008941223,0.680643589619135\n8,1,\"8.1\",14.8513411903374,0.697282970522139\n8,1,\"8.1\",14.8599814865526,0.713365524850243\n8,1,\"8.1\",14.8686217827678,0.728835664434173\n8,1,\"8.1\",14.8772620789829,0.743639117545077\n8,1,\"8.1\",14.8859023751981,0.757708787244902\n8,1,\"8.1\",14.8945426714132,0.770963511916988\n8,1,\"8.1\",14.9031829676284,0.783393797290889\n8,1,\"8.1\",14.9118232638435,0.794954411037252\n8,1,\"8.1\",14.9204635600587,0.805603083849824\n8,1,\"8.1\",14.9291038562739,0.815300792110814\n8,1,\"8.1\",14.937744152489,0.824012024598504\n8,1,\"8.1\",14.9463844487042,0.831705031042381\n8,1,\"8.1\",14.9550247449193,0.838352050469116\n8,1,\"8.1\",14.9636650411345,0.843929517442596\n8,1,\"8.1\",14.9723053373497,0.84841824448115\n8,1,\"8.1\",14.9809456335648,0.851803579133298\n8,1,\"8.1\",14.98958592978,0.854050751096669\n8,1,\"8.1\",14.9982262259951,0.855123904755091\n8,1,\"8.1\",15.0068665222103,0.855078769101704\n8,1,\"8.1\",15.0155068184255,0.853920777153679\n8,1,\"8.1\",15.0241471146406,0.851660261001132\n8,1,\"8.1\",15.0327874108558,0.848312429518855\n8,1,\"8.1\",15.0414277070709,0.843897316788241\n8,1,\"8.1\",15.0500680032861,0.838439701725639\n8,1,\"8.1\",15.0587082995012,0.831968999650937\n8,1,\"8.1\",15.0673485957164,0.824519126756959\n8,1,\"8.1\",15.0759888919316,0.816128338653642\n8,1,\"8.1\",15.0846291881467,0.806839044358641\n8,1,\"8.1\",15.0932694843619,0.796677141334393\n8,1,\"8.1\",15.101909780577,0.785681146875081\n8,1,\"8.1\",15.1105500767922,0.7739442487614\n8,1,\"8.1\",15.1191903730074,0.761523719247154\n8,1,\"8.1\",15.1278306692225,0.748479675058143\n8,1,\"8.1\",15.1364709654377,0.7348747784021\n8,1,\"8.1\",15.1451112616528,0.720773927555261\n8,1,\"8.1\",15.153751557868,0.706243939215685\n8,1,\"8.1\",15.1623918540831,0.691353224801217\n8,1,\"8.1\",15.1710321502983,0.676171462835358\n8,1,\"8.1\",15.1796724465135,0.660769269508644\n8,1,\"8.1\",15.1883127427286,0.645217869427842\n8,1,\"8.1\",15.1969530389438,0.629588670145589\n8,1,\"8.1\",15.2055933351589,0.613959766951423\n8,1,\"8.1\",15.2142336313741,0.598405137426434\n8,1,\"8.1\",15.2228739275893,0.582995027265386\n8,1,\"8.1\",15.2315142238044,0.567798641501827\n8,1,\"8.1\",15.2401545200196,0.55288385552486\n8,1,\"8.1\",15.2487948162347,0.538316937346042\n8,1,\"8.1\",15.2574351124499,0.524162282021777\n8,1,\"8.1\",15.266075408665,0.510482158985909\n8,1,\"8.1\",15.2747157048802,0.497336472901233\n8,1,\"8.1\",15.2833560010954,0.484782538499385\n8,1,\"8.1\",15.2919962973105,0.472874869747835\n8,1,\"8.1\",15.3006365935257,0.461689226246229\n8,1,\"8.1\",15.3092768897408,0.451283422411702\n8,1,\"8.1\",15.317917185956,0.441674196209236\n8,1,\"8.1\",15.3265574821712,0.432902355474027\n8,1,\"8.1\",15.3351977783863,0.425005043255729\n8,1,\"8.1\",15.3438380746015,0.418015618122944\n8,1,\"8.1\",15.3524783708166,0.411963548448567\n8,1,\"8.1\",15.3611186670318,0.406874320426932\n8,1,\"8.1\",15.3697589632469,0.402769359569776\n8,1,\"8.1\",15.3783992594621,0.399665965436974\n8,1,\"8.1\",15.3870395556773,0.397577259378118\n8,1,\"8.1\",15.3956798518924,0.396512145091215\n8,1,\"8.1\",15.4043201481076,0.396512145091215\n8,1,\"8.1\",15.4129604443227,0.397577259378118\n8,1,\"8.1\",15.4216007405379,0.399665965436974\n8,1,\"8.1\",15.4302410367531,0.402769359569776\n8,1,\"8.1\",15.4388813329682,0.406874320426932\n8,1,\"8.1\",15.4475216291834,0.411963548448567\n8,1,\"8.1\",15.4561619253985,0.418015618122942\n8,1,\"8.1\",15.4648022216137,0.425005043255729\n8,1,\"8.1\",15.4734425178288,0.432902355474026\n8,1,\"8.1\",15.482082814044,0.441674196209237\n8,1,\"8.1\",15.4907231102592,0.451283422411703\n8,1,\"8.1\",15.4993634064743,0.461689226246228\n8,1,\"8.1\",15.5080037026895,0.472874869747834\n8,1,\"8.1\",15.5166439989046,0.484782538499386\n8,1,\"8.1\",15.5252842951198,0.497336472901232\n8,1,\"8.1\",15.533924591335,0.510482158985908\n8,1,\"8.1\",15.5425648875501,0.524162282021776\n8,1,\"8.1\",15.5512051837653,0.538316937346043\n8,1,\"8.1\",15.5598454799804,0.55288385552486\n8,1,\"8.1\",15.5684857761956,0.567798641501826\n8,1,\"8.1\",15.5771260724107,0.582995027265384\n8,1,\"8.1\",15.5857663686259,0.598405137426433\n8,1,\"8.1\",15.5944066648411,0.613959766951421\n8,1,\"8.1\",15.6030469610562,0.629588670145588\n8,1,\"8.1\",15.6116872572714,0.645217869427841\n8,1,\"8.1\",15.6203275534865,0.660769269508644\n8,1,\"8.1\",15.6289678497017,0.676171462835359\n8,1,\"8.1\",15.6376081459169,0.691353224801216\n8,1,\"8.1\",15.646248442132,0.706243939215685\n8,1,\"8.1\",15.6548887383472,0.720773927555261\n8,1,\"8.1\",15.6635290345623,0.734874778402099\n8,1,\"8.1\",15.6721693307775,0.748479675058142\n8,1,\"8.1\",15.6808096269926,0.761523719247153\n8,1,\"8.1\",15.6894499232078,0.773944248761401\n8,1,\"8.1\",15.698090219423,0.78568114687508\n8,1,\"8.1\",15.7067305156381,0.796677141334392\n8,1,\"8.1\",15.7153708118533,0.80683904435864\n8,1,\"8.1\",15.7240111080684,0.816128338653641\n8,1,\"8.1\",15.7326514042836,0.824519126756959\n8,1,\"8.1\",15.7412917004988,0.831968999650936\n8,1,\"8.1\",15.7499319967139,0.838439701725638\n8,1,\"8.1\",15.7585722929291,0.843897316788241\n8,1,\"8.1\",15.7672125891442,0.848312429518855\n8,1,\"8.1\",15.7758528853594,0.851660261001132\n8,1,\"8.1\",15.7844931815746,0.853920777153679\n8,1,\"8.1\",15.7931334777897,0.855078769101704\n8,1,\"8.1\",15.8017737740049,0.85512390475509\n8,1,\"8.1\",15.81041407022,0.854050751096668\n8,1,\"8.1\",15.8190543664352,0.851803579133298\n8,1,\"8.1\",15.8276946626503,0.848418244481149\n8,1,\"8.1\",15.8363349588655,0.843929517442596\n8,1,\"8.1\",15.8449752550807,0.838352050469116\n8,1,\"8.1\",15.8536155512958,0.83170503104238\n8,1,\"8.1\",15.862255847511,0.824012024598504\n8,1,\"8.1\",15.8708961437261,0.815300792110814\n8,1,\"8.1\",15.8795364399413,0.805603083849825\n8,1,\"8.1\",15.8881767361565,0.794954411037253\n8,1,\"8.1\",15.8968170323716,0.783393797290887\n8,1,\"8.1\",15.9054573285868,0.770963511916989\n8,1,\"8.1\",15.9140976248019,0.757708787244903\n8,1,\"8.1\",15.9227379210171,0.743639117545075\n8,1,\"8.1\",15.9313782172322,0.728835664434173\n8,1,\"8.1\",15.9400185134474,0.713365524850243\n8,1,\"8.1\",15.9486588096626,0.69728297052214\n8,1,\"8.1\",15.9572991058777,0.680643589619135\n8,1,\"8.1\",15.9659394020929,0.663503959517465\n8,1,\"8.1\",15.974579698308,0.645921321543473\n8,1,\"8.1\",15.9832199945232,0.627953260072753\n8,1,\"8.1\",15.9918602907384,0.609657388272914\n8,1,\"8.1\",16.0005005869535,0.591091042664786\n8,1,\"8.1\",16.0091408831687,0.572310988545259\n8,1,\"8.1\",16.0177811793838,0.553373138166062\n8,1,\"8.1\",16.026421475599,0.534329531555015\n8,1,\"8.1\",16.0350617718141,0.515241781242577\n8,1,\"8.1\",16.0437020680293,0.496162870612531\n8,1,\"8.1\",16.0523423642445,0.477142406807681\n8,1,\"8.1\",16.0609826604596,0.458227939617916\n8,1,\"8.1\",16.0696229566748,0.439464791867012\n8,1,\"8.1\",16.0782632528899,0.42089591078687\n8,1,\"8.1\",16.0869035491051,0.402561740669572\n8,1,\"8.1\",16.0955438453203,0.384500116890593\n8,1,\"8.1\",16.1041841415354,0.36674618120681\n8,1,\"8.1\",16.1128244377506,0.349332318051368\n8,1,\"8.1\",16.1214647339657,0.3322881113764\n8,1,\"8.1\",16.1301050301809,0.315665467917137\n8,1,\"8.1\",16.138745326396,0.29947076077703\n8,1,\"8.1\",16.1473856226112,0.283719848709087\n8,1,\"8.1\",16.1560259188264,0.268430556579711\n8,1,\"8.1\",16.1646662150415,0.253617990425289\n8,1,\"8.1\",16.1733065112567,0.239294603976341\n8,1,\"8.1\",16.1819468074718,0.225470278496786\n8,1,\"8.1\",16.190587103687,0.212152414609941\n8,1,\"8.1\",16.1992273999022,0.199346034750979\n8,1,\"8.1\",16.2078676961173,0.187053894868902\n8,1,\"8.1\",16.2165079923325,0.175276603998839\n8,1,\"8.1\",16.2251482885476,0.16401275033712\n8,1,\"8.1\",16.2337885847628,0.153290954309393\n8,1,\"8.1\",16.2424288809779,0.143077672631926\n8,1,\"8.1\",16.2510691771931,0.133361637144288\n8,1,\"8.1\",16.2597094734083,0.124134451496307\n8,1,\"8.1\",16.2683497696234,0.115386413544466\n8,1,\"8.1\",16.2769900658386,0.107106653322792\n8,1,\"8.1\",16.2856303620537,0.0992832689255716\n8,1,\"8.1\",16.2942706582689,0.0919034594258208\n8,1,\"8.1\",16.3029109544841,0.0849536540401089\n8,1,\"8.1\",16.3115512506992,0.0784196368385824\n8,1,\"8.1\",16.3201915469144,0.072286666388109\n8,1,\"8.1\",16.3288318431295,0.0665395898049413\n8,1,\"8.1\",16.3374721393447,0.061186584093928\n8,1,\"8.1\",16.3461124355598,0.0561881128124603\n8,1,\"8.1\",16.354752731775,0.051526544042328\n8,1,\"8.1\",16.3633930279902,0.0471861096983462\n8,1,\"8.1\",16.3720333242053,0.0431511215263819\n8,1,\"8.1\",16.3806736204205,0.039406043368012\n8,1,\"8.1\",16.3893139166356,0.0359355564681401\n8,1,\"8.1\",16.3979542128508,0.032724617920758\n8,1,\"8.1\",16.406594509066,0.0297585123992078\n8,1,\"8.1\",16.4152348052811,0.0270228973627917\n8,1,\"8.1\",16.4238751014963,0.0245038419712445\n8,1,\"8.1\",16.4325153977114,0.022187859972588\n8,1,\"8.1\",16.4411556939266,0.0200743719218598\n8,1,\"8.1\",16.4497959901418,0.0181371217019395\n8,1,\"8.1\",16.4584362863569,0.016363889431326\n8,1,\"8.1\",16.4670765825721,0.0147432862447903\n8,1,\"8.1\",16.4757168787872,0.013264453557398\n8,1,\"8.1\",16.4843571750024,0.0119170655902804\n8,1,\"8.1\",16.4929974712175,0.0106913283525775\n8,1,\"8.1\",16.5016377674327,0.00957797543416431"
    },
    {
      "name": ".0/density1",
      "source": ".0/density1_flat",
      "transform": [
        {
          "type": "treefacet",
          "keys": [
            "data.cyl",
            "data.am"
          ]
        }
      ]
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"4.0\"\n\"6.0\"\n\"8.0\"\n\"4.1\"\n\"6.1\"\n\"8.1\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n5.5318534253485\n43.1890124600134"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-0.0427561952377545\n0.897880099992845"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "group",
      "from": {
        "data": ".0/density1"
      },
      "marks": [
        {
          "type": "area",
          "properties": {
            "update": {
              "fill": {
                "scale": "fill",
                "field": "data.interaction(cyl, am)"
              },
              "y2": {
                "scale": "y",
                "value": 0
              },
              "fillOpacity": {
                "value": 0.2
              },
              "x": {
                "scale": "x",
                "field": "data.pred_"
              },
              "y": {
                "scale": "y",
                "field": "data.resp_"
              },
              "stroke": {
                "value": "transparent"
              }
            },
            "ggvis": {
              "data": {
                "value": ".0/density1"
              }
            }
          }
        }
      ]
    },
    {
      "type": "group",
      "from": {
        "data": ".0/density1"
      },
      "marks": [
        {
          "type": "line",
          "properties": {
            "update": {
              "stroke": {
                "value": "#000000"
              },
              "x": {
                "scale": "x",
                "field": "data.pred_"
              },
              "y": {
                "scale": "y",
                "field": "data.resp_"
              },
              "fill": {
                "value": "transparent"
              }
            },
            "ggvis": {
              "data": {
                "value": ".0/density1"
              }
            }
          }
        }
      ]
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "interaction(cyl, am)"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "density"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id828759161").parseSpec(plot_id828759161_spec);
</script><!--/html_preserve-->

```r
###Chaining Is A Virtue
mtcars %>%
  group_by(am) %>%
  ggvis(~mpg, ~hp) %>%
  layer_smooths(stroke = ~factor(am)) %>%
  layer_points(fill = ~factor(am))
```

<!--html_preserve--><div id="plot_id864207146-container" class="ggvis-output-container">
<div id="plot_id864207146" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id864207146_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id864207146" data-renderer="svg">SVG</a>
 | 
<a id="plot_id864207146_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id864207146" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id864207146_download" class="ggvis-download" data-plot-id="plot_id864207146">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id864207146_spec = {
  "data": [
    {
      "name": ".0_flat",
      "format": {
        "type": "csv",
        "parse": {
          "am": "number",
          "mpg": "number",
          "hp": "number"
        }
      },
      "values": "\"am\",\"mpg\",\"hp\",\"factor(am)\"\n0,21.4,110,\"0\"\n0,18.7,175,\"0\"\n0,18.1,105,\"0\"\n0,14.3,245,\"0\"\n0,24.4,62,\"0\"\n0,22.8,95,\"0\"\n0,19.2,123,\"0\"\n0,17.8,123,\"0\"\n0,16.4,180,\"0\"\n0,17.3,180,\"0\"\n0,15.2,180,\"0\"\n0,10.4,205,\"0\"\n0,10.4,215,\"0\"\n0,14.7,230,\"0\"\n0,21.5,97,\"0\"\n0,15.5,150,\"0\"\n0,15.2,150,\"0\"\n0,13.3,245,\"0\"\n0,19.2,175,\"0\"\n1,21,110,\"1\"\n1,21,110,\"1\"\n1,22.8,93,\"1\"\n1,32.4,66,\"1\"\n1,30.4,52,\"1\"\n1,33.9,65,\"1\"\n1,27.3,66,\"1\"\n1,26,91,\"1\"\n1,30.4,113,\"1\"\n1,15.8,264,\"1\"\n1,19.7,175,\"1\"\n1,15,335,\"1\"\n1,21.4,109,\"1\""
    },
    {
      "name": ".0",
      "source": ".0_flat",
      "transform": [
        {
          "type": "treefacet",
          "keys": [
            "data.am"
          ]
        }
      ]
    },
    {
      "name": ".0/model_prediction1_flat",
      "format": {
        "type": "csv",
        "parse": {
          "am": "number",
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"am\",\"pred_\",\"resp_\",\"factor(am)\"\n0,10.4,212.902992967969,\"0\"\n0,10.5772151898734,216.091635386817,\"0\"\n0,10.7544303797468,218.886747248743,\"0\"\n0,10.9316455696203,221.302703626086,\"0\"\n0,11.1088607594937,223.353879591186,\"0\"\n0,11.2860759493671,225.054650216384,\"0\"\n0,11.4632911392405,226.419390574019,\"0\"\n0,11.6405063291139,227.462475736432,\"0\"\n0,11.8177215189873,228.198280775961,\"0\"\n0,11.9949367088608,228.641180764947,\"0\"\n0,12.1721518987342,228.805550775729,\"0\"\n0,12.3493670886076,228.705765880649,\"0\"\n0,12.526582278481,228.356201152045,\"0\"\n0,12.7037974683544,227.771231662257,\"0\"\n0,12.8810126582278,226.965232483625,\"0\"\n0,13.0582278481013,225.95257868849,\"0\"\n0,13.2354430379747,224.74764534919,\"0\"\n0,13.4126582278481,223.388812365859,\"0\"\n0,13.5898734177215,221.911946179173,\"0\"\n0,13.7670886075949,220.195847354365,\"0\"\n0,13.9443037974684,218.108189398842,\"0\"\n0,14.1215189873418,215.516645820009,\"0\"\n0,14.2987341772152,212.288890125273,\"0\"\n0,14.4759493670886,208.292595822041,\"0\"\n0,14.653164556962,203.395436417719,\"0\"\n0,14.8303797468354,197.72467419042,\"0\"\n0,15.0075949367089,192.017311690608,\"0\"\n0,15.1848101265823,186.574576553677,\"0\"\n0,15.3620253164557,181.265042449079,\"0\"\n0,15.5392405063291,176.288890866838,\"0\"\n0,15.7164556962025,171.732154174389,\"0\"\n0,15.8936708860759,167.396066314251,\"0\"\n0,16.0708860759494,163.312628781966,\"0\"\n0,16.2481012658228,159.513843073073,\"0\"\n0,16.4253164556962,156.031710683111,\"0\"\n0,16.6025316455696,152.898233107621,\"0\"\n0,16.779746835443,150.145411842142,\"0\"\n0,16.9569620253165,147.805248382214,\"0\"\n0,17.1341772151899,145.909744223376,\"0\"\n0,17.3113924050633,144.494900356192,\"0\"\n0,17.4886075949367,144.470703132706,\"0\"\n0,17.6658227848101,145.783531223554,\"0\"\n0,17.8430379746835,147.373005862428,\"0\"\n0,18.020253164557,148.17874828302,\"0\"\n0,18.1974683544304,147.557139542914,\"0\"\n0,18.3746835443038,146.806890980289,\"0\"\n0,18.5518987341772,145.869099897848,\"0\"\n0,18.7291139240506,144.438542284727,\"0\"\n0,18.9063291139241,142.647407012693,\"0\"\n0,19.0835443037975,140.742634764124,\"0\"\n0,19.2607594936709,138.821476482513,\"0\"\n0,19.4379746835443,136.883574323377,\"0\"\n0,19.6151898734177,134.911876648789,\"0\"\n0,19.7924050632911,132.90291740019,\"0\"\n0,19.9696202531646,130.853230519019,\"0\"\n0,20.146835443038,128.759349946716,\"0\"\n0,20.3240506329114,126.617809624721,\"0\"\n0,20.5012658227848,124.425143494474,\"0\"\n0,20.6784810126582,122.177885497413,\"0\"\n0,20.8556962025316,119.87256957498,\"0\"\n0,21.0329113924051,117.505729668613,\"0\"\n0,21.2101265822785,115.073899719752,\"0\"\n0,21.3873417721519,112.573613669837,\"0\"\n0,21.5645569620253,110.002206998956,\"0\"\n0,21.7417721518987,107.366622027101,\"0\"\n0,21.9189873417722,104.670556255913,\"0\"\n0,22.0962025316456,101.915607271586,\"0\"\n0,22.273417721519,99.1033726603104,\"0\"\n0,22.4506329113924,96.2354500082795,\"0\"\n0,22.6278481012658,93.3134369016851,\"0\"\n0,22.8050632911392,90.3389309267192,\"0\"\n0,22.9822784810127,87.313529669574,\"0\"\n0,23.1594936708861,84.2388307164415,\"0\"\n0,23.3367088607595,81.1164316535139,\"0\"\n0,23.5139240506329,77.9479300669834,\"0\"\n0,23.6911392405063,74.7349235430419,\"0\"\n0,23.8683544303797,71.4790096678815,\"0\"\n0,24.0455696202532,68.1817860276946,\"0\"\n0,24.2227848101266,64.8448502086729,\"0\"\n0,24.4,61.4697997970088,\"0\"\n1,15,320.648068078675,\"1\"\n1,15.2392405063291,309.710864253033,\"1\"\n1,15.4784810126582,299.028004254369,\"1\"\n1,15.7177215189873,288.581734871245,\"1\"\n1,15.9569620253165,278.358321417603,\"1\"\n1,16.1962025316456,268.362975887446,\"1\"\n1,16.4354430379747,258.599243654892,\"1\"\n1,16.6746835443038,249.069971984549,\"1\"\n1,16.9139240506329,239.778008141021,\"1\"\n1,17.153164556962,230.726199388914,\"1\"\n1,17.3924050632911,221.917392992834,\"1\"\n1,17.6316455696203,213.354436217386,\"1\"\n1,17.8708860759494,205.040176327176,\"1\"\n1,18.1101265822785,196.977460586811,\"1\"\n1,18.3493670886076,189.169136260894,\"1\"\n1,18.5886075949367,181.618050614033,\"1\"\n1,18.8278481012658,174.327050910832,\"1\"\n1,19.0670886075949,167.298984415897,\"1\"\n1,19.3063291139241,160.536698393835,\"1\"\n1,19.5455696202532,154.04304010925,\"1\"\n1,19.7848101265823,147.826502576924,\"1\"\n1,20.0240506329114,141.934635526654,\"1\"\n1,20.2632911392405,136.325754962501,\"1\"\n1,20.5025316455696,130.934737214591,\"1\"\n1,20.7417721518987,125.696458613047,\"1\"\n1,20.9810126582278,120.545795487995,\"1\"\n1,21.220253164557,115.014440979656,\"1\"\n1,21.4594936708861,109.722403353298,\"1\"\n1,21.6987341772152,105.109273916522,\"1\"\n1,21.9379746835443,100.890980200026,\"1\"\n1,22.1772151898734,97.0120748089636,\"1\"\n1,22.4164556962025,93.4171103484862,\"1\"\n1,22.6556962025316,90.0506394237462,\"1\"\n1,22.8949367088608,86.9078380489957,\"1\"\n1,23.1341772151899,84.3973340120636,\"1\"\n1,23.373417721519,82.5480013086202,\"1\"\n1,23.6126582278481,81.2696467426961,\"1\"\n1,23.8518987341772,80.4720771183218,\"1\"\n1,24.0911392405063,80.065099239528,\"1\"\n1,24.3303797468354,79.9585199103454,\"1\"\n1,24.5696202531646,80.0621459348045,\"1\"\n1,24.8088607594937,80.285784116936,\"1\"\n1,25.0481012658228,80.5392412607704,\"1\"\n1,25.2873417721519,80.7323241703385,\"1\"\n1,25.526582278481,80.7748396496708,\"1\"\n1,25.7658227848101,80.576594502798,\"1\"\n1,26.0050632911392,80.0475536507159,\"1\"\n1,26.2443037974684,79.4662306974813,\"1\"\n1,26.4835443037975,79.0858520746267,\"1\"\n1,26.7227848101266,78.8224098459563,\"1\"\n1,26.9620253164557,78.5918960752745,\"1\"\n1,27.2012658227848,78.3103028263854,\"1\"\n1,27.4405063291139,77.9479498789337,\"1\"\n1,27.679746835443,77.6805275033502,\"1\"\n1,27.9189873417722,77.5106406248565,\"1\"\n1,28.1582278481013,77.4158143443462,\"1\"\n1,28.3974683544304,77.3735737627128,\"1\"\n1,28.6367088607595,77.3614439808497,\"1\"\n1,28.8759493670886,77.3569500996505,\"1\"\n1,29.1151898734177,77.3376172200089,\"1\"\n1,29.3544303797468,77.2809704428181,\"1\"\n1,29.5936708860759,77.1645348689718,\"1\"\n1,29.8329113924051,76.9658355993635,\"1\"\n1,30.0721518987342,76.6623977348867,\"1\"\n1,30.3113924050633,76.2317463764349,\"1\"\n1,30.5506329113924,75.6859245810942,\"1\"\n1,30.7898734177215,75.1354968142905,\"1\"\n1,31.0291139240506,74.5817623406092,\"1\"\n1,31.2683544303797,74.0143532905292,\"1\"\n1,31.5075949367089,73.4229017945296,\"1\"\n1,31.746835443038,72.7970399830895,\"1\"\n1,31.9860759493671,72.126399986688,\"1\"\n1,32.2253164556962,71.4006139358043,\"1\"\n1,32.4645569620253,70.6099500841416,\"1\"\n1,32.7037974683544,69.76024021522,\"1\"\n1,32.9430379746835,68.8594060143161,\"1\"\n1,33.1822784810127,67.9120409985506,\"1\"\n1,33.4215189873418,66.922738685044,\"1\"\n1,33.6607594936709,65.896092590917,\"1\"\n1,33.9,64.8366962332899,\"1\""
    },
    {
      "name": ".0/model_prediction1",
      "source": ".0/model_prediction1_flat",
      "transform": [
        {
          "type": "treefacet",
          "keys": [
            "data.am"
          ]
        }
      ]
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"0\"\n\"1\""
    },
    {
      "name": "scale/stroke",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"0\"\n\"1\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n37.85\n349.15"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "stroke",
      "type": "ordinal",
      "domain": {
        "data": "scale/stroke",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "group",
      "from": {
        "data": ".0/model_prediction1"
      },
      "marks": [
        {
          "type": "line",
          "properties": {
            "update": {
              "strokeWidth": {
                "value": 2
              },
              "x": {
                "scale": "x",
                "field": "data.pred_"
              },
              "y": {
                "scale": "y",
                "field": "data.resp_"
              },
              "stroke": {
                "scale": "stroke",
                "field": "data.factor(am)"
              },
              "fill": {
                "value": "transparent"
              }
            },
            "ggvis": {
              "data": {
                "value": ".0/model_prediction1"
              }
            }
          }
        }
      ]
    },
    {
      "type": "group",
      "from": {
        "data": ".0"
      },
      "marks": [
        {
          "type": "symbol",
          "properties": {
            "update": {
              "size": {
                "value": 50
              },
              "x": {
                "scale": "x",
                "field": "data.mpg"
              },
              "y": {
                "scale": "y",
                "field": "data.hp"
              },
              "fill": {
                "scale": "fill",
                "field": "data.factor(am)"
              }
            },
            "ggvis": {
              "data": {
                "value": ".0"
              }
            }
          }
        }
      ]
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "factor(am)"
    },
    {
      "orient": "right",
      "stroke": "stroke",
      "title": "factor(am)"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "hp"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id864207146").parseSpec(plot_id864207146_spec);
</script><!--/html_preserve-->

## Interactivity


```r
###Chapter 4 Interactivity And Layers

###The Basics Of Interactive Plots
# Adapt the code: set fill with a select box
faithful %>% 
  ggvis(~waiting, ~eruptions, fillOpacity := 0.5, 
        shape := input_select(label = "Choose shape:", 
                              choices = c("circle", "square", "cross", 
                                          "diamond", "triangle-up", "triangle-down")), 
        fill := input_select(label = "Choose color:", 
                             choices = c("black", "red", "blue", "green"))) %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id931043426-container" class="ggvis-output-container">
<div id="plot_id931043426" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id931043426_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id931043426" data-renderer="svg">SVG</a>
 | 
<a id="plot_id931043426_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id931043426" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id931043426_download" class="ggvis-download" data-plot-id="plot_id931043426">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id931043426_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "waiting": "number",
          "eruptions": "number"
        }
      },
      "values": "\"reactive_112132794\",\"reactive_704920538\",\"waiting\",\"eruptions\"\n\"circle\",\"black\",79,3.6\n\"circle\",\"black\",54,1.8\n\"circle\",\"black\",74,3.333\n\"circle\",\"black\",62,2.283\n\"circle\",\"black\",85,4.533\n\"circle\",\"black\",55,2.883\n\"circle\",\"black\",88,4.7\n\"circle\",\"black\",85,3.6\n\"circle\",\"black\",51,1.95\n\"circle\",\"black\",85,4.35\n\"circle\",\"black\",54,1.833\n\"circle\",\"black\",84,3.917\n\"circle\",\"black\",78,4.2\n\"circle\",\"black\",47,1.75\n\"circle\",\"black\",83,4.7\n\"circle\",\"black\",52,2.167\n\"circle\",\"black\",62,1.75\n\"circle\",\"black\",84,4.8\n\"circle\",\"black\",52,1.6\n\"circle\",\"black\",79,4.25\n\"circle\",\"black\",51,1.8\n\"circle\",\"black\",47,1.75\n\"circle\",\"black\",78,3.45\n\"circle\",\"black\",69,3.067\n\"circle\",\"black\",74,4.533\n\"circle\",\"black\",83,3.6\n\"circle\",\"black\",55,1.967\n\"circle\",\"black\",76,4.083\n\"circle\",\"black\",78,3.85\n\"circle\",\"black\",79,4.433\n\"circle\",\"black\",73,4.3\n\"circle\",\"black\",77,4.467\n\"circle\",\"black\",66,3.367\n\"circle\",\"black\",80,4.033\n\"circle\",\"black\",74,3.833\n\"circle\",\"black\",52,2.017\n\"circle\",\"black\",48,1.867\n\"circle\",\"black\",80,4.833\n\"circle\",\"black\",59,1.833\n\"circle\",\"black\",90,4.783\n\"circle\",\"black\",80,4.35\n\"circle\",\"black\",58,1.883\n\"circle\",\"black\",84,4.567\n\"circle\",\"black\",58,1.75\n\"circle\",\"black\",73,4.533\n\"circle\",\"black\",83,3.317\n\"circle\",\"black\",64,3.833\n\"circle\",\"black\",53,2.1\n\"circle\",\"black\",82,4.633\n\"circle\",\"black\",59,2\n\"circle\",\"black\",75,4.8\n\"circle\",\"black\",90,4.716\n\"circle\",\"black\",54,1.833\n\"circle\",\"black\",80,4.833\n\"circle\",\"black\",54,1.733\n\"circle\",\"black\",83,4.883\n\"circle\",\"black\",71,3.717\n\"circle\",\"black\",64,1.667\n\"circle\",\"black\",77,4.567\n\"circle\",\"black\",81,4.317\n\"circle\",\"black\",59,2.233\n\"circle\",\"black\",84,4.5\n\"circle\",\"black\",48,1.75\n\"circle\",\"black\",82,4.8\n\"circle\",\"black\",60,1.817\n\"circle\",\"black\",92,4.4\n\"circle\",\"black\",78,4.167\n\"circle\",\"black\",78,4.7\n\"circle\",\"black\",65,2.067\n\"circle\",\"black\",73,4.7\n\"circle\",\"black\",82,4.033\n\"circle\",\"black\",56,1.967\n\"circle\",\"black\",79,4.5\n\"circle\",\"black\",71,4\n\"circle\",\"black\",62,1.983\n\"circle\",\"black\",76,5.067\n\"circle\",\"black\",60,2.017\n\"circle\",\"black\",78,4.567\n\"circle\",\"black\",76,3.883\n\"circle\",\"black\",83,3.6\n\"circle\",\"black\",75,4.133\n\"circle\",\"black\",82,4.333\n\"circle\",\"black\",70,4.1\n\"circle\",\"black\",65,2.633\n\"circle\",\"black\",73,4.067\n\"circle\",\"black\",88,4.933\n\"circle\",\"black\",76,3.95\n\"circle\",\"black\",80,4.517\n\"circle\",\"black\",48,2.167\n\"circle\",\"black\",86,4\n\"circle\",\"black\",60,2.2\n\"circle\",\"black\",90,4.333\n\"circle\",\"black\",50,1.867\n\"circle\",\"black\",78,4.817\n\"circle\",\"black\",63,1.833\n\"circle\",\"black\",72,4.3\n\"circle\",\"black\",84,4.667\n\"circle\",\"black\",75,3.75\n\"circle\",\"black\",51,1.867\n\"circle\",\"black\",82,4.9\n\"circle\",\"black\",62,2.483\n\"circle\",\"black\",88,4.367\n\"circle\",\"black\",49,2.1\n\"circle\",\"black\",83,4.5\n\"circle\",\"black\",81,4.05\n\"circle\",\"black\",47,1.867\n\"circle\",\"black\",84,4.7\n\"circle\",\"black\",52,1.783\n\"circle\",\"black\",86,4.85\n\"circle\",\"black\",81,3.683\n\"circle\",\"black\",75,4.733\n\"circle\",\"black\",59,2.3\n\"circle\",\"black\",89,4.9\n\"circle\",\"black\",79,4.417\n\"circle\",\"black\",59,1.7\n\"circle\",\"black\",81,4.633\n\"circle\",\"black\",50,2.317\n\"circle\",\"black\",85,4.6\n\"circle\",\"black\",59,1.817\n\"circle\",\"black\",87,4.417\n\"circle\",\"black\",53,2.617\n\"circle\",\"black\",69,4.067\n\"circle\",\"black\",77,4.25\n\"circle\",\"black\",56,1.967\n\"circle\",\"black\",88,4.6\n\"circle\",\"black\",81,3.767\n\"circle\",\"black\",45,1.917\n\"circle\",\"black\",82,4.5\n\"circle\",\"black\",55,2.267\n\"circle\",\"black\",90,4.65\n\"circle\",\"black\",45,1.867\n\"circle\",\"black\",83,4.167\n\"circle\",\"black\",56,2.8\n\"circle\",\"black\",89,4.333\n\"circle\",\"black\",46,1.833\n\"circle\",\"black\",82,4.383\n\"circle\",\"black\",51,1.883\n\"circle\",\"black\",86,4.933\n\"circle\",\"black\",53,2.033\n\"circle\",\"black\",79,3.733\n\"circle\",\"black\",81,4.233\n\"circle\",\"black\",60,2.233\n\"circle\",\"black\",82,4.533\n\"circle\",\"black\",77,4.817\n\"circle\",\"black\",76,4.333\n\"circle\",\"black\",59,1.983\n\"circle\",\"black\",80,4.633\n\"circle\",\"black\",49,2.017\n\"circle\",\"black\",96,5.1\n\"circle\",\"black\",53,1.8\n\"circle\",\"black\",77,5.033\n\"circle\",\"black\",77,4\n\"circle\",\"black\",65,2.4\n\"circle\",\"black\",81,4.6\n\"circle\",\"black\",71,3.567\n\"circle\",\"black\",70,4\n\"circle\",\"black\",81,4.5\n\"circle\",\"black\",93,4.083\n\"circle\",\"black\",53,1.8\n\"circle\",\"black\",89,3.967\n\"circle\",\"black\",45,2.2\n\"circle\",\"black\",86,4.15\n\"circle\",\"black\",58,2\n\"circle\",\"black\",78,3.833\n\"circle\",\"black\",66,3.5\n\"circle\",\"black\",76,4.583\n\"circle\",\"black\",63,2.367\n\"circle\",\"black\",88,5\n\"circle\",\"black\",52,1.933\n\"circle\",\"black\",93,4.617\n\"circle\",\"black\",49,1.917\n\"circle\",\"black\",57,2.083\n\"circle\",\"black\",77,4.583\n\"circle\",\"black\",68,3.333\n\"circle\",\"black\",81,4.167\n\"circle\",\"black\",81,4.333\n\"circle\",\"black\",73,4.5\n\"circle\",\"black\",50,2.417\n\"circle\",\"black\",85,4\n\"circle\",\"black\",74,4.167\n\"circle\",\"black\",55,1.883\n\"circle\",\"black\",77,4.583\n\"circle\",\"black\",83,4.25\n\"circle\",\"black\",83,3.767\n\"circle\",\"black\",51,2.033\n\"circle\",\"black\",78,4.433\n\"circle\",\"black\",84,4.083\n\"circle\",\"black\",46,1.833\n\"circle\",\"black\",83,4.417\n\"circle\",\"black\",55,2.183\n\"circle\",\"black\",81,4.8\n\"circle\",\"black\",57,1.833\n\"circle\",\"black\",76,4.8\n\"circle\",\"black\",84,4.1\n\"circle\",\"black\",77,3.966\n\"circle\",\"black\",81,4.233\n\"circle\",\"black\",87,3.5\n\"circle\",\"black\",77,4.366\n\"circle\",\"black\",51,2.25\n\"circle\",\"black\",78,4.667\n\"circle\",\"black\",60,2.1\n\"circle\",\"black\",82,4.35\n\"circle\",\"black\",91,4.133\n\"circle\",\"black\",53,1.867\n\"circle\",\"black\",78,4.6\n\"circle\",\"black\",46,1.783\n\"circle\",\"black\",77,4.367\n\"circle\",\"black\",84,3.85\n\"circle\",\"black\",49,1.933\n\"circle\",\"black\",83,4.5\n\"circle\",\"black\",71,2.383\n\"circle\",\"black\",80,4.7\n\"circle\",\"black\",49,1.867\n\"circle\",\"black\",75,3.833\n\"circle\",\"black\",64,3.417\n\"circle\",\"black\",76,4.233\n\"circle\",\"black\",53,2.4\n\"circle\",\"black\",94,4.8\n\"circle\",\"black\",55,2\n\"circle\",\"black\",76,4.15\n\"circle\",\"black\",50,1.867\n\"circle\",\"black\",82,4.267\n\"circle\",\"black\",54,1.75\n\"circle\",\"black\",75,4.483\n\"circle\",\"black\",78,4\n\"circle\",\"black\",79,4.117\n\"circle\",\"black\",78,4.083\n\"circle\",\"black\",78,4.267\n\"circle\",\"black\",70,3.917\n\"circle\",\"black\",79,4.55\n\"circle\",\"black\",70,4.083\n\"circle\",\"black\",54,2.417\n\"circle\",\"black\",86,4.183\n\"circle\",\"black\",50,2.217\n\"circle\",\"black\",90,4.45\n\"circle\",\"black\",54,1.883\n\"circle\",\"black\",54,1.85\n\"circle\",\"black\",77,4.283\n\"circle\",\"black\",79,3.95\n\"circle\",\"black\",64,2.333\n\"circle\",\"black\",75,4.15\n\"circle\",\"black\",47,2.35\n\"circle\",\"black\",86,4.933\n\"circle\",\"black\",63,2.9\n\"circle\",\"black\",85,4.583\n\"circle\",\"black\",82,3.833\n\"circle\",\"black\",57,2.083\n\"circle\",\"black\",82,4.367\n\"circle\",\"black\",67,2.133\n\"circle\",\"black\",74,4.35\n\"circle\",\"black\",54,2.2\n\"circle\",\"black\",83,4.45\n\"circle\",\"black\",73,3.567\n\"circle\",\"black\",73,4.5\n\"circle\",\"black\",88,4.15\n\"circle\",\"black\",80,3.817\n\"circle\",\"black\",71,3.917\n\"circle\",\"black\",83,4.45\n\"circle\",\"black\",56,2\n\"circle\",\"black\",79,4.283\n\"circle\",\"black\",78,4.767\n\"circle\",\"black\",84,4.533\n\"circle\",\"black\",58,1.85\n\"circle\",\"black\",83,4.25\n\"circle\",\"black\",43,1.983\n\"circle\",\"black\",60,2.25\n\"circle\",\"black\",75,4.75\n\"circle\",\"black\",81,4.117\n\"circle\",\"black\",46,2.15\n\"circle\",\"black\",90,4.417\n\"circle\",\"black\",46,1.817\n\"circle\",\"black\",74,4.467"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fillOpacity": {
            "value": 0.5
          },
          "shape": {
            "field": "data.reactive_112132794"
          },
          "fill": {
            "field": "data.reactive_704920538"
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "eruptions"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id931043426").parseSpec(plot_id931043426_spec);
</script><!--/html_preserve-->

```r
# Add radio buttons to control the fill of the plot
mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill := input_radiobuttons(label = "Choose color:", 
                                   choices = c("black", "red", "blue", "green"))) %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id820143433-container" class="ggvis-output-container">
<div id="plot_id820143433" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id820143433_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id820143433" data-renderer="svg">SVG</a>
 | 
<a id="plot_id820143433_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id820143433" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id820143433_download" class="ggvis-download" data-plot-id="plot_id820143433">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id820143433_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "mpg": "number",
          "wt": "number"
        }
      },
      "values": "\"reactive_506061410\",\"mpg\",\"wt\"\n\"black\",21,2.62\n\"black\",21,2.875\n\"black\",22.8,2.32\n\"black\",21.4,3.215\n\"black\",18.7,3.44\n\"black\",18.1,3.46\n\"black\",14.3,3.57\n\"black\",24.4,3.19\n\"black\",22.8,3.15\n\"black\",19.2,3.44\n\"black\",17.8,3.44\n\"black\",16.4,4.07\n\"black\",17.3,3.73\n\"black\",15.2,3.78\n\"black\",10.4,5.25\n\"black\",10.4,5.424\n\"black\",14.7,5.345\n\"black\",32.4,2.2\n\"black\",30.4,1.615\n\"black\",33.9,1.835\n\"black\",21.5,2.465\n\"black\",15.5,3.52\n\"black\",15.2,3.435\n\"black\",13.3,3.84\n\"black\",19.2,3.845\n\"black\",27.3,1.935\n\"black\",26,2.14\n\"black\",30.4,1.513\n\"black\",15.8,3.17\n\"black\",19.7,2.77\n\"black\",15,3.57\n\"black\",21.4,2.78"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "field": "data.reactive_506061410"
          },
          "x": {
            "scale": "x",
            "field": "data.mpg"
          },
          "y": {
            "scale": "y",
            "field": "data.wt"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "wt"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id820143433").parseSpec(plot_id820143433_spec);
</script><!--/html_preserve-->

```r
###Input Widgets In More Detail
# Change the radiobuttons widget to a text widget 
mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill := input_text(label = "Choose color:", 
                           value = "black")) %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id741902347-container" class="ggvis-output-container">
<div id="plot_id741902347" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id741902347_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id741902347" data-renderer="svg">SVG</a>
 | 
<a id="plot_id741902347_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id741902347" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id741902347_download" class="ggvis-download" data-plot-id="plot_id741902347">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id741902347_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "mpg": "number",
          "wt": "number"
        }
      },
      "values": "\"reactive_750771369\",\"mpg\",\"wt\"\n\"black\",21,2.62\n\"black\",21,2.875\n\"black\",22.8,2.32\n\"black\",21.4,3.215\n\"black\",18.7,3.44\n\"black\",18.1,3.46\n\"black\",14.3,3.57\n\"black\",24.4,3.19\n\"black\",22.8,3.15\n\"black\",19.2,3.44\n\"black\",17.8,3.44\n\"black\",16.4,4.07\n\"black\",17.3,3.73\n\"black\",15.2,3.78\n\"black\",10.4,5.25\n\"black\",10.4,5.424\n\"black\",14.7,5.345\n\"black\",32.4,2.2\n\"black\",30.4,1.615\n\"black\",33.9,1.835\n\"black\",21.5,2.465\n\"black\",15.5,3.52\n\"black\",15.2,3.435\n\"black\",13.3,3.84\n\"black\",19.2,3.845\n\"black\",27.3,1.935\n\"black\",26,2.14\n\"black\",30.4,1.513\n\"black\",15.8,3.17\n\"black\",19.7,2.77\n\"black\",15,3.57\n\"black\",21.4,2.78"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "field": "data.reactive_750771369"
          },
          "x": {
            "scale": "x",
            "field": "data.mpg"
          },
          "y": {
            "scale": "y",
            "field": "data.wt"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "wt"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id741902347").parseSpec(plot_id741902347_spec);
</script><!--/html_preserve-->

```r
# Map the fill property to a select box that returns variable names
mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill = input_select(label = "Choose fill variable:", 
                            choices = names(mtcars), map = as.name)) %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id606454573-container" class="ggvis-output-container">
<div id="plot_id606454573" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id606454573_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id606454573" data-renderer="svg">SVG</a>
 | 
<a id="plot_id606454573_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id606454573" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id606454573_download" class="ggvis-download" data-plot-id="plot_id606454573">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id606454573_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "reactive_653862971": "number",
          "mpg": "number",
          "wt": "number"
        }
      },
      "values": "\"reactive_653862971\",\"mpg\",\"wt\"\n21,21,2.62\n21,21,2.875\n22.8,22.8,2.32\n21.4,21.4,3.215\n18.7,18.7,3.44\n18.1,18.1,3.46\n14.3,14.3,3.57\n24.4,24.4,3.19\n22.8,22.8,3.15\n19.2,19.2,3.44\n17.8,17.8,3.44\n16.4,16.4,4.07\n17.3,17.3,3.73\n15.2,15.2,3.78\n10.4,10.4,5.25\n10.4,10.4,5.424\n14.7,14.7,5.345\n32.4,32.4,2.2\n30.4,30.4,1.615\n33.9,33.9,1.835\n21.5,21.5,2.465\n15.5,15.5,3.52\n15.2,15.2,3.435\n13.3,13.3,3.84\n19.2,19.2,3.845\n27.3,27.3,1.935\n26,26,2.14\n30.4,30.4,1.513\n15.8,15.8,3.17\n19.7,19.7,2.77\n15,15,3.57\n21.4,21.4,2.78"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n10.4\n33.9"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.reactive_653862971"
          },
          "x": {
            "scale": "x",
            "field": "data.mpg"
          },
          "y": {
            "scale": "y",
            "field": "data.wt"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "reactive_653862971"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "wt"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id606454573").parseSpec(plot_id606454573_spec);
</script><!--/html_preserve-->

```r
###Input Widgets In More Detail (2)
# Map the fill property to a select box that returns variable names
mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill = input_select(label = "Choose fill variable:", 
                            choices = names(mtcars), map = as.name)) %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id432860751-container" class="ggvis-output-container">
<div id="plot_id432860751" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id432860751_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id432860751" data-renderer="svg">SVG</a>
 | 
<a id="plot_id432860751_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id432860751" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id432860751_download" class="ggvis-download" data-plot-id="plot_id432860751">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id432860751_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "reactive_679783158": "number",
          "mpg": "number",
          "wt": "number"
        }
      },
      "values": "\"reactive_679783158\",\"mpg\",\"wt\"\n21,21,2.62\n21,21,2.875\n22.8,22.8,2.32\n21.4,21.4,3.215\n18.7,18.7,3.44\n18.1,18.1,3.46\n14.3,14.3,3.57\n24.4,24.4,3.19\n22.8,22.8,3.15\n19.2,19.2,3.44\n17.8,17.8,3.44\n16.4,16.4,4.07\n17.3,17.3,3.73\n15.2,15.2,3.78\n10.4,10.4,5.25\n10.4,10.4,5.424\n14.7,14.7,5.345\n32.4,32.4,2.2\n30.4,30.4,1.615\n33.9,33.9,1.835\n21.5,21.5,2.465\n15.5,15.5,3.52\n15.2,15.2,3.435\n13.3,13.3,3.84\n19.2,19.2,3.845\n27.3,27.3,1.935\n26,26,2.14\n30.4,30.4,1.513\n15.8,15.8,3.17\n19.7,19.7,2.77\n15,15,3.57\n21.4,21.4,2.78"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n10.4\n33.9"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.reactive_679783158"
          },
          "x": {
            "scale": "x",
            "field": "data.mpg"
          },
          "y": {
            "scale": "y",
            "field": "data.wt"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "reactive_679783158"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "wt"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id432860751").parseSpec(plot_id432860751_spec);
</script><!--/html_preserve-->

```r
###Control Parameters And Values
# Map the bindwidth to a numeric field ("Choose a binwidth:")
mtcars %>% 
  ggvis(~mpg) %>% 
  layer_histograms(width = input_numeric(label = "Choose a binwidth:", value = 1))
```

<!--html_preserve--><div id="plot_id268167587-container" class="ggvis-output-container">
<div id="plot_id268167587" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id268167587_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id268167587" data-renderer="svg">SVG</a>
 | 
<a id="plot_id268167587_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id268167587" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id268167587_download" class="ggvis-download" data-plot-id="plot_id268167587">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id268167587_spec = {
  "data": [
    {
      "name": ".0/bin1/stack2",
      "format": {
        "type": "csv",
        "parse": {
          "xmin_": "number",
          "xmax_": "number",
          "stack_upr_": "number",
          "stack_lwr_": "number"
        }
      },
      "values": "\"xmin_\",\"xmax_\",\"stack_upr_\",\"stack_lwr_\"\n9.5,10.5,2,0\n10.5,11.5,0,0\n11.5,12.5,0,0\n12.5,13.5,1,0\n13.5,14.5,1,0\n14.5,15.5,5,0\n15.5,16.5,2,0\n16.5,17.5,1,0\n17.5,18.5,2,0\n18.5,19.5,3,0\n19.5,20.5,1,0\n20.5,21.5,5,0\n21.5,22.5,0,0\n22.5,23.5,2,0\n23.5,24.5,1,0\n24.5,25.5,0,0\n25.5,26.5,1,0\n26.5,27.5,1,0\n27.5,28.5,0,0\n28.5,29.5,0,0\n29.5,30.5,2,0\n30.5,31.5,0,0\n31.5,32.5,1,0\n32.5,33.5,0,0\n33.5,34.5,1,0"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n8.25\n35.75"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n5.25"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "rect",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "fill": {
            "value": "#333333"
          },
          "x": {
            "scale": "x",
            "field": "data.xmin_"
          },
          "x2": {
            "scale": "x",
            "field": "data.xmax_"
          },
          "y": {
            "scale": "y",
            "field": "data.stack_upr_"
          },
          "y2": {
            "scale": "y",
            "field": "data.stack_lwr_"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/bin1/stack2"
          }
        }
      },
      "from": {
        "data": ".0/bin1/stack2"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "count"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id268167587").parseSpec(plot_id268167587_spec);
</script><!--/html_preserve-->

```r
# Map the binwidth to a slider bar ("Choose a binwidth:")
mtcars %>% 
  ggvis(~mpg) %>% 
  layer_histograms(width = input_slider(label = "Choose a binwidth:", min = 1, max = 20))
```

<!--html_preserve--><div id="plot_id462225721-container" class="ggvis-output-container">
<div id="plot_id462225721" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id462225721_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id462225721" data-renderer="svg">SVG</a>
 | 
<a id="plot_id462225721_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id462225721" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id462225721_download" class="ggvis-download" data-plot-id="plot_id462225721">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id462225721_spec = {
  "data": [
    {
      "name": ".0/bin1/stack2",
      "format": {
        "type": "csv",
        "parse": {
          "xmin_": "number",
          "xmax_": "number",
          "stack_upr_": "number",
          "stack_lwr_": "number"
        }
      },
      "values": "\"xmin_\",\"xmax_\",\"stack_upr_\",\"stack_lwr_\"\n5.25,15.75,9,0\n15.75,26.25,18,0\n26.25,36.75,5,0"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n3.675\n38.325"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n18.9"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "rect",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "fill": {
            "value": "#333333"
          },
          "x": {
            "scale": "x",
            "field": "data.xmin_"
          },
          "x2": {
            "scale": "x",
            "field": "data.xmax_"
          },
          "y": {
            "scale": "y",
            "field": "data.stack_upr_"
          },
          "y2": {
            "scale": "y",
            "field": "data.stack_lwr_"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/bin1/stack2"
          }
        }
      },
      "from": {
        "data": ".0/bin1/stack2"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "count"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id462225721").parseSpec(plot_id462225721_spec);
</script><!--/html_preserve-->

```r
###Multi-Layered Plots And Their Properties
# Add a layer of points to the graph below.
pressure %>% 
  ggvis(~temperature, ~pressure, stroke := "skyblue") %>% 
  layer_lines() %>%
  layer_points()
```

<!--html_preserve--><div id="plot_id822361667-container" class="ggvis-output-container">
<div id="plot_id822361667" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id822361667_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id822361667" data-renderer="svg">SVG</a>
 | 
<a id="plot_id822361667_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id822361667" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id822361667_download" class="ggvis-download" data-plot-id="plot_id822361667">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id822361667_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "skyblue"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    },
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "stroke": {
            "value": "skyblue"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id822361667").parseSpec(plot_id822361667_spec);
</script><!--/html_preserve-->

```r
# Adapt the solution to the first instruction below so that only the lines layer uses a skyblue stroke.
pressure %>% 
  ggvis(~temperature, ~pressure) %>% 
  layer_lines(stroke := "skyblue") %>% 
  layer_points()
```

<!--html_preserve--><div id="plot_id448396107-container" class="ggvis-output-container">
<div id="plot_id448396107" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id448396107_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id448396107" data-renderer="svg">SVG</a>
 | 
<a id="plot_id448396107_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id448396107" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id448396107_download" class="ggvis-download" data-plot-id="plot_id448396107">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id448396107_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          },
          "stroke": {
            "value": "skyblue"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    },
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id448396107").parseSpec(plot_id448396107_spec);
</script><!--/html_preserve-->

```r
# Rewrite the code below so that only the points layer uses the shape property.
pressure %>% 
  ggvis(~temperature, ~pressure) %>% 
  layer_lines(stroke := "skyblue") %>% 
  layer_points(shape := "triangle-up")
```

<!--html_preserve--><div id="plot_id701751512-container" class="ggvis-output-container">
<div id="plot_id701751512" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id701751512_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id701751512" data-renderer="svg">SVG</a>
 | 
<a id="plot_id701751512_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id701751512" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id701751512_download" class="ggvis-download" data-plot-id="plot_id701751512">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id701751512_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          },
          "stroke": {
            "value": "skyblue"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    },
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          },
          "shape": {
            "value": "triangle-up"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id701751512").parseSpec(plot_id701751512_spec);
</script><!--/html_preserve-->

```r
# Refactor the code for the graph below to make it as concise as possible
pressure %>% 
  ggvis(~temperature, ~pressure, stroke := "skyblue", 
        strokeOpacity := 0.5, strokeWidth := 5) %>% 
  layer_lines() %>% 
  layer_points(fill = ~temperature, shape := "triangle-up", size := 300)
```

<!--html_preserve--><div id="plot_id131266928-container" class="ggvis-output-container">
<div id="plot_id131266928" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id131266928_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id131266928" data-renderer="svg">SVG</a>
 | 
<a id="plot_id131266928_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id131266928" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id131266928_download" class="ggvis-download" data-plot-id="plot_id131266928">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id131266928_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n360"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "skyblue"
          },
          "strokeOpacity": {
            "value": 0.5
          },
          "strokeWidth": {
            "value": 5
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    },
    {
      "type": "symbol",
      "properties": {
        "update": {
          "stroke": {
            "value": "skyblue"
          },
          "strokeOpacity": {
            "value": 0.5
          },
          "strokeWidth": {
            "value": 5
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          },
          "fill": {
            "scale": "fill",
            "field": "data.temperature"
          },
          "shape": {
            "value": "triangle-up"
          },
          "size": {
            "value": 300
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "temperature"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id131266928").parseSpec(plot_id131266928_spec);
</script><!--/html_preserve-->

```r
###Multi-Layered Plots And Their Properties (2)
# Rewrite the code below so that only the points layer uses the shape property.
pressure %>% 
  ggvis(~temperature, ~pressure) %>% 
  layer_lines(stroke := "skyblue") %>% 
  layer_points(shape := "triangle-up")
```

<!--html_preserve--><div id="plot_id360801723-container" class="ggvis-output-container">
<div id="plot_id360801723" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id360801723_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id360801723" data-renderer="svg">SVG</a>
 | 
<a id="plot_id360801723_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id360801723" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id360801723_download" class="ggvis-download" data-plot-id="plot_id360801723">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id360801723_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          },
          "stroke": {
            "value": "skyblue"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    },
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          },
          "shape": {
            "value": "triangle-up"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id360801723").parseSpec(plot_id360801723_spec);
</script><!--/html_preserve-->

```r
# Refactor the code for the graph below to make it as concise as possible
pressure %>% 
  ggvis(~temperature, ~pressure, stroke := "skyblue", 
        strokeOpacity := 0.5, strokeWidth := 5) %>% 
  layer_lines() %>% 
  layer_points(fill = ~temperature, shape := "triangle-up", size := 300)
```

<!--html_preserve--><div id="plot_id701605961-container" class="ggvis-output-container">
<div id="plot_id701605961" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id701605961_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id701605961" data-renderer="svg">SVG</a>
 | 
<a id="plot_id701605961_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id701605961" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id701605961_download" class="ggvis-download" data-plot-id="plot_id701605961">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id701605961_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n0\n360"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-40.29979\n846.29999"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "skyblue"
          },
          "strokeOpacity": {
            "value": 0.5
          },
          "strokeWidth": {
            "value": 5
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    },
    {
      "type": "symbol",
      "properties": {
        "update": {
          "stroke": {
            "value": "skyblue"
          },
          "strokeOpacity": {
            "value": 0.5
          },
          "strokeWidth": {
            "value": 5
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          },
          "fill": {
            "scale": "fill",
            "field": "data.temperature"
          },
          "shape": {
            "value": "triangle-up"
          },
          "size": {
            "value": 300
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "temperature"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id701605961").parseSpec(plot_id701605961_spec);
</script><!--/html_preserve-->

```r
###There Is No Limit On The Number Of Layers
# Create a graph containing a scatterplot, a linear model and a smooth line.
pressure %>% 
  ggvis(~temperature, ~pressure) %>%
  layer_lines(opacity := 0.5) %>%
  layer_points() %>%
  layer_model_predictions(model = "lm", stroke := "navy") %>%
  layer_smooths(stroke := "skyblue")
```

<!--html_preserve--><div id="plot_id142013492-container" class="ggvis-output-container">
<div id="plot_id142013492" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id142013492_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id142013492" data-renderer="svg">SVG</a>
 | 
<a id="plot_id142013492_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id142013492" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id142013492_download" class="ggvis-download" data-plot-id="plot_id142013492">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id142013492_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": ".0/arrange1",
      "format": {
        "type": "csv",
        "parse": {
          "temperature": "number",
          "pressure": "number"
        }
      },
      "values": "\"temperature\",\"pressure\"\n0,2e-04\n20,0.0012\n40,0.006\n60,0.03\n80,0.09\n100,0.27\n120,0.75\n140,1.85\n160,4.2\n180,8.8\n200,17.3\n220,32.1\n240,57\n260,96\n280,157\n300,247\n320,376\n340,558\n360,806"
    },
    {
      "name": ".0/model_prediction2",
      "format": {
        "type": "csv",
        "parse": {
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"pred_\",\"resp_\"\n0,-147.898872631579\n4.55696202531646,-141.006832684877\n9.11392405063291,-134.114792738174\n13.6708860759494,-127.222752791472\n18.2278481012658,-120.33071284477\n22.7848101265823,-113.438672898068\n27.3417721518987,-106.546632951366\n31.8987341772152,-99.6545930046635\n36.4556962025316,-92.7625530579613\n41.0126582278481,-85.8705131112591\n45.5696202531646,-78.9784731645569\n50.126582278481,-72.0864332178547\n54.6835443037975,-65.1943932711525\n59.2405063291139,-58.3023533244503\n63.7974683544304,-51.4103133777481\n68.3544303797468,-44.5182734310459\n72.9113924050633,-37.6262334843437\n77.4683544303797,-30.7341935376415\n82.0253164556962,-23.8421535909393\n86.5822784810127,-16.9501136442371\n91.1392405063291,-10.0580736975349\n95.6962025316456,-3.16603375083272\n100.253164556962,3.72600619586947\n104.810126582278,10.6180461425717\n109.367088607595,17.5100860892739\n113.924050632911,24.4021260359761\n118.481012658228,31.2941659826783\n123.037974683544,38.1862059293805\n127.594936708861,45.0782458760827\n132.151898734177,51.9702858227849\n136.708860759494,58.8623257694871\n141.26582278481,65.7543657161892\n145.822784810127,72.6464056628915\n150.379746835443,79.5384456095937\n154.936708860759,86.4304855562958\n159.493670886076,93.322525502998\n164.050632911392,100.2145654497\n168.607594936709,107.106605396402\n173.164556962025,113.998645343105\n177.721518987342,120.890685289807\n182.278481012658,127.782725236509\n186.835443037975,134.674765183211\n191.392405063291,141.566805129913\n195.949367088608,148.458845076616\n200.506329113924,155.350885023318\n205.063291139241,162.24292497002\n209.620253164557,169.134964916722\n214.177215189873,176.027004863424\n218.73417721519,182.919044810127\n223.291139240506,189.811084756829\n227.848101265823,196.703124703531\n232.405063291139,203.595164650233\n236.962025316456,210.487204596935\n241.518987341772,217.379244543638\n246.075949367089,224.27128449034\n250.632911392405,231.163324437042\n255.189873417722,238.055364383744\n259.746835443038,244.947404330446\n264.303797468354,251.839444277149\n268.860759493671,258.731484223851\n273.417721518987,265.623524170553\n277.974683544304,272.515564117255\n282.53164556962,279.407604063957\n287.088607594937,286.29964401066\n291.645569620253,293.191683957362\n296.20253164557,300.083723904064\n300.759493670886,306.975763850766\n305.316455696203,313.867803797468\n309.873417721519,320.759843744171\n314.430379746835,327.651883690873\n318.987341772152,334.543923637575\n323.544303797468,341.435963584277\n328.101265822785,348.328003530979\n332.658227848101,355.220043477682\n337.215189873418,362.112083424384\n341.772151898734,369.004123371086\n346.329113924051,375.896163317788\n350.886075949367,382.78820326449\n355.443037974684,389.680243211193\n360,396.572283157895"
    },
    {
      "name": ".0/model_prediction3",
      "format": {
        "type": "csv",
        "parse": {
          "pred_": "number",
          "resp_": "number"
        }
      },
      "values": "\"pred_\",\"resp_\"\n0,1.64241182735218\n4.55696202531646,1.20914426188517\n9.11392405063291,0.816449707852784\n13.6708860759494,0.453973515062441\n18.2278481012658,0.111361033321555\n22.7848101265823,-0.216721441223027\n27.3417721518987,-0.515829691220993\n31.8987341772152,-0.783099735884245\n36.4556962025316,-1.01741164467185\n41.0126582278481,-1.21817294484122\n45.5696202531646,-1.39761119377714\n50.126582278481,-1.55736329745319\n54.6835443037975,-1.69218942268252\n59.2405063291139,-1.79684973627828\n63.7974683544304,-1.86610440505365\n68.3544303797468,-1.89471359582178\n72.9113924050633,-1.87743747539583\n77.4683544303797,-1.80903621058895\n82.0253164556962,-1.6945545137968\n86.5822784810127,-1.60125983833228\n91.1392405063291,-1.52560751120519\n95.6962025316456,-1.44720373188349\n100.253164556962,-1.34565469983514\n104.810126582278,-1.20056661452811\n109.367088607595,-0.991545675430364\n113.924050632911,-0.698198082009856\n118.481012658228,-0.300130033734553\n123.037974683544,0.0628210748474229\n127.594936708861,0.0405595789047811\n132.151898734177,-0.0680232522684407\n136.708860759494,0.0820321261377226\n141.26582278481,0.779573661335372\n145.822784810127,1.30580235889444\n150.379746835443,1.47613619905873\n154.936708860759,1.47100424304375\n159.493670886076,1.47083555206498\n164.050632911392,1.65605918733793\n168.607594936709,2.20710421007807\n173.164556962025,3.30439968150092\n177.721518987342,5.12837466282197\n182.278481012658,7.60017295652315\n186.835443037975,9.412357263976\n191.392405063291,10.6594535464197\n195.949367088608,11.7028113785557\n200.506329113924,12.9037803350852\n205.063291139241,14.6237099907096\n209.620253164557,17.2239499201303\n214.177215189873,21.0658496980486\n218.73417721519,26.5107588991658\n223.291139240506,32.5421476450854\n227.848101265823,36.6407166490411\n232.405063291139,40.6031715166965\n236.962025316456,46.4514008436582\n241.518987341772,55.9024866012143\n246.075949367089,66.5043220460702\n250.632911392405,77.4611029554284\n255.189873417722,89.0683742980742\n259.746835443038,101.621681042793\n264.303797468354,115.416568158372\n268.860759493671,130.748580613594\n273.417721518987,147.913263377247\n277.974683544304,167.206161418115\n282.53164556962,188.683635220374\n287.088607594937,211.391210563415\n291.645569620253,235.249863767172\n296.20253164557,260.326109116923\n300.759493670886,286.686460897947\n305.316455696203,314.397433395523\n309.873417721519,343.525540894928\n314.430379746835,374.137297681442\n318.987341772152,406.299218040344\n323.544303797468,440.022479309783\n328.101265822785,475.208966059641\n332.658227848101,511.842475967734\n337.215189873418,549.910675056794\n341.772151898734,589.401229349548\n346.329113924051,630.301804868729\n350.886075949367,672.600067637065\n355.443037974684,716.283683677287\n360,761.340319012125"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-18\n378"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-195.593816263158\n853.694943631579"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "line",
      "properties": {
        "update": {
          "stroke": {
            "value": "#000000"
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          },
          "opacity": {
            "value": 0.5
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/arrange1"
          }
        }
      },
      "from": {
        "data": ".0/arrange1"
      }
    },
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.temperature"
          },
          "y": {
            "scale": "y",
            "field": "data.pressure"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    },
    {
      "type": "line",
      "properties": {
        "update": {
          "strokeWidth": {
            "value": 2
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          },
          "stroke": {
            "value": "navy"
          },
          "fill": {
            "value": "transparent"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/model_prediction2"
          }
        }
      },
      "from": {
        "data": ".0/model_prediction2"
      }
    },
    {
      "type": "line",
      "properties": {
        "update": {
          "strokeWidth": {
            "value": 2
          },
          "x": {
            "scale": "x",
            "field": "data.pred_"
          },
          "y": {
            "scale": "y",
            "field": "data.resp_"
          },
          "stroke": {
            "value": "skyblue"
          },
          "fill": {
            "value": "transparent"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0/model_prediction3"
          }
        }
      },
      "from": {
        "data": ".0/model_prediction3"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "temperature"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "pressure"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id142013492").parseSpec(plot_id142013492_spec);
</script><!--/html_preserve-->

## Labels


```r
###Chapter 5 Customizing Axes, Legends, and Scales

###Axes
# Change the axes of the plot as instructed
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points() %>% 
  add_axis("x", 
           title = "Time since previous eruption (m)", 
           values = c(50, 60, 70, 80, 90), 
           subdivide = 9,
           orient = "top") %>%
  add_axis("y", 
           title = "Duration of eruption (m)", 
           values = c(2, 3, 4, 5), 
           subdivide = 9,
           orient = "right")
```

<!--html_preserve--><div id="plot_id579285079-container" class="ggvis-output-container">
<div id="plot_id579285079" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id579285079_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id579285079" data-renderer="svg">SVG</a>
 | 
<a id="plot_id579285079_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id579285079" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id579285079_download" class="ggvis-download" data-plot-id="plot_id579285079">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id579285079_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "waiting": "number",
          "eruptions": "number"
        }
      },
      "values": "\"waiting\",\"eruptions\"\n79,3.6\n54,1.8\n74,3.333\n62,2.283\n85,4.533\n55,2.883\n88,4.7\n85,3.6\n51,1.95\n85,4.35\n54,1.833\n84,3.917\n78,4.2\n47,1.75\n83,4.7\n52,2.167\n62,1.75\n84,4.8\n52,1.6\n79,4.25\n51,1.8\n47,1.75\n78,3.45\n69,3.067\n74,4.533\n83,3.6\n55,1.967\n76,4.083\n78,3.85\n79,4.433\n73,4.3\n77,4.467\n66,3.367\n80,4.033\n74,3.833\n52,2.017\n48,1.867\n80,4.833\n59,1.833\n90,4.783\n80,4.35\n58,1.883\n84,4.567\n58,1.75\n73,4.533\n83,3.317\n64,3.833\n53,2.1\n82,4.633\n59,2\n75,4.8\n90,4.716\n54,1.833\n80,4.833\n54,1.733\n83,4.883\n71,3.717\n64,1.667\n77,4.567\n81,4.317\n59,2.233\n84,4.5\n48,1.75\n82,4.8\n60,1.817\n92,4.4\n78,4.167\n78,4.7\n65,2.067\n73,4.7\n82,4.033\n56,1.967\n79,4.5\n71,4\n62,1.983\n76,5.067\n60,2.017\n78,4.567\n76,3.883\n83,3.6\n75,4.133\n82,4.333\n70,4.1\n65,2.633\n73,4.067\n88,4.933\n76,3.95\n80,4.517\n48,2.167\n86,4\n60,2.2\n90,4.333\n50,1.867\n78,4.817\n63,1.833\n72,4.3\n84,4.667\n75,3.75\n51,1.867\n82,4.9\n62,2.483\n88,4.367\n49,2.1\n83,4.5\n81,4.05\n47,1.867\n84,4.7\n52,1.783\n86,4.85\n81,3.683\n75,4.733\n59,2.3\n89,4.9\n79,4.417\n59,1.7\n81,4.633\n50,2.317\n85,4.6\n59,1.817\n87,4.417\n53,2.617\n69,4.067\n77,4.25\n56,1.967\n88,4.6\n81,3.767\n45,1.917\n82,4.5\n55,2.267\n90,4.65\n45,1.867\n83,4.167\n56,2.8\n89,4.333\n46,1.833\n82,4.383\n51,1.883\n86,4.933\n53,2.033\n79,3.733\n81,4.233\n60,2.233\n82,4.533\n77,4.817\n76,4.333\n59,1.983\n80,4.633\n49,2.017\n96,5.1\n53,1.8\n77,5.033\n77,4\n65,2.4\n81,4.6\n71,3.567\n70,4\n81,4.5\n93,4.083\n53,1.8\n89,3.967\n45,2.2\n86,4.15\n58,2\n78,3.833\n66,3.5\n76,4.583\n63,2.367\n88,5\n52,1.933\n93,4.617\n49,1.917\n57,2.083\n77,4.583\n68,3.333\n81,4.167\n81,4.333\n73,4.5\n50,2.417\n85,4\n74,4.167\n55,1.883\n77,4.583\n83,4.25\n83,3.767\n51,2.033\n78,4.433\n84,4.083\n46,1.833\n83,4.417\n55,2.183\n81,4.8\n57,1.833\n76,4.8\n84,4.1\n77,3.966\n81,4.233\n87,3.5\n77,4.366\n51,2.25\n78,4.667\n60,2.1\n82,4.35\n91,4.133\n53,1.867\n78,4.6\n46,1.783\n77,4.367\n84,3.85\n49,1.933\n83,4.5\n71,2.383\n80,4.7\n49,1.867\n75,3.833\n64,3.417\n76,4.233\n53,2.4\n94,4.8\n55,2\n76,4.15\n50,1.867\n82,4.267\n54,1.75\n75,4.483\n78,4\n79,4.117\n78,4.083\n78,4.267\n70,3.917\n79,4.55\n70,4.083\n54,2.417\n86,4.183\n50,2.217\n90,4.45\n54,1.883\n54,1.85\n77,4.283\n79,3.95\n64,2.333\n75,4.15\n47,2.35\n86,4.933\n63,2.9\n85,4.583\n82,3.833\n57,2.083\n82,4.367\n67,2.133\n74,4.35\n54,2.2\n83,4.45\n73,3.567\n73,4.5\n88,4.15\n80,3.817\n71,3.917\n83,4.45\n56,2\n79,4.283\n78,4.767\n84,4.533\n58,1.85\n83,4.25\n43,1.983\n60,2.25\n75,4.75\n81,4.117\n46,2.15\n90,4.417\n46,1.817\n74,4.467"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "value": "#000000"
          },
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "top",
      "title": "Time since previous eruption (m)",
      "values": [50, 60, 70, 80, 90],
      "subdivide": 9,
      "layer": "back",
      "grid": true
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "right",
      "title": "Duration of eruption (m)",
      "values": [2, 3, 4, 5],
      "subdivide": 9,
      "layer": "back",
      "grid": true
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id579285079").parseSpec(plot_id579285079_spec);
</script><!--/html_preserve-->

```r
###Legends
# Add a legend to the plot below: use the correct title and orientation
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions))) %>% 
  layer_points() %>% 
  add_legend("fill", title = "~ duration (m)", orient = "left")
```

<!--html_preserve--><div id="plot_id298992439-container" class="ggvis-output-container">
<div id="plot_id298992439" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id298992439_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id298992439" data-renderer="svg">SVG</a>
 | 
<a id="plot_id298992439_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id298992439" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id298992439_download" class="ggvis-download" data-plot-id="plot_id298992439">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id298992439_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "waiting": "number",
          "eruptions": "number"
        }
      },
      "values": "\"factor(round(eruptions))\",\"waiting\",\"eruptions\"\n\"4\",79,3.6\n\"2\",54,1.8\n\"3\",74,3.333\n\"2\",62,2.283\n\"5\",85,4.533\n\"3\",55,2.883\n\"5\",88,4.7\n\"4\",85,3.6\n\"2\",51,1.95\n\"4\",85,4.35\n\"2\",54,1.833\n\"4\",84,3.917\n\"4\",78,4.2\n\"2\",47,1.75\n\"5\",83,4.7\n\"2\",52,2.167\n\"2\",62,1.75\n\"5\",84,4.8\n\"2\",52,1.6\n\"4\",79,4.25\n\"2\",51,1.8\n\"2\",47,1.75\n\"3\",78,3.45\n\"3\",69,3.067\n\"5\",74,4.533\n\"4\",83,3.6\n\"2\",55,1.967\n\"4\",76,4.083\n\"4\",78,3.85\n\"4\",79,4.433\n\"4\",73,4.3\n\"4\",77,4.467\n\"3\",66,3.367\n\"4\",80,4.033\n\"4\",74,3.833\n\"2\",52,2.017\n\"2\",48,1.867\n\"5\",80,4.833\n\"2\",59,1.833\n\"5\",90,4.783\n\"4\",80,4.35\n\"2\",58,1.883\n\"5\",84,4.567\n\"2\",58,1.75\n\"5\",73,4.533\n\"3\",83,3.317\n\"4\",64,3.833\n\"2\",53,2.1\n\"5\",82,4.633\n\"2\",59,2\n\"5\",75,4.8\n\"5\",90,4.716\n\"2\",54,1.833\n\"5\",80,4.833\n\"2\",54,1.733\n\"5\",83,4.883\n\"4\",71,3.717\n\"2\",64,1.667\n\"5\",77,4.567\n\"4\",81,4.317\n\"2\",59,2.233\n\"4\",84,4.5\n\"2\",48,1.75\n\"5\",82,4.8\n\"2\",60,1.817\n\"4\",92,4.4\n\"4\",78,4.167\n\"5\",78,4.7\n\"2\",65,2.067\n\"5\",73,4.7\n\"4\",82,4.033\n\"2\",56,1.967\n\"4\",79,4.5\n\"4\",71,4\n\"2\",62,1.983\n\"5\",76,5.067\n\"2\",60,2.017\n\"5\",78,4.567\n\"4\",76,3.883\n\"4\",83,3.6\n\"4\",75,4.133\n\"4\",82,4.333\n\"4\",70,4.1\n\"3\",65,2.633\n\"4\",73,4.067\n\"5\",88,4.933\n\"4\",76,3.95\n\"5\",80,4.517\n\"2\",48,2.167\n\"4\",86,4\n\"2\",60,2.2\n\"4\",90,4.333\n\"2\",50,1.867\n\"5\",78,4.817\n\"2\",63,1.833\n\"4\",72,4.3\n\"5\",84,4.667\n\"4\",75,3.75\n\"2\",51,1.867\n\"5\",82,4.9\n\"2\",62,2.483\n\"4\",88,4.367\n\"2\",49,2.1\n\"4\",83,4.5\n\"4\",81,4.05\n\"2\",47,1.867\n\"5\",84,4.7\n\"2\",52,1.783\n\"5\",86,4.85\n\"4\",81,3.683\n\"5\",75,4.733\n\"2\",59,2.3\n\"5\",89,4.9\n\"4\",79,4.417\n\"2\",59,1.7\n\"5\",81,4.633\n\"2\",50,2.317\n\"5\",85,4.6\n\"2\",59,1.817\n\"4\",87,4.417\n\"3\",53,2.617\n\"4\",69,4.067\n\"4\",77,4.25\n\"2\",56,1.967\n\"5\",88,4.6\n\"4\",81,3.767\n\"2\",45,1.917\n\"4\",82,4.5\n\"2\",55,2.267\n\"5\",90,4.65\n\"2\",45,1.867\n\"4\",83,4.167\n\"3\",56,2.8\n\"4\",89,4.333\n\"2\",46,1.833\n\"4\",82,4.383\n\"2\",51,1.883\n\"5\",86,4.933\n\"2\",53,2.033\n\"4\",79,3.733\n\"4\",81,4.233\n\"2\",60,2.233\n\"5\",82,4.533\n\"5\",77,4.817\n\"4\",76,4.333\n\"2\",59,1.983\n\"5\",80,4.633\n\"2\",49,2.017\n\"5\",96,5.1\n\"2\",53,1.8\n\"5\",77,5.033\n\"4\",77,4\n\"2\",65,2.4\n\"5\",81,4.6\n\"4\",71,3.567\n\"4\",70,4\n\"4\",81,4.5\n\"4\",93,4.083\n\"2\",53,1.8\n\"4\",89,3.967\n\"2\",45,2.2\n\"4\",86,4.15\n\"2\",58,2\n\"4\",78,3.833\n\"4\",66,3.5\n\"5\",76,4.583\n\"2\",63,2.367\n\"5\",88,5\n\"2\",52,1.933\n\"5\",93,4.617\n\"2\",49,1.917\n\"2\",57,2.083\n\"5\",77,4.583\n\"3\",68,3.333\n\"4\",81,4.167\n\"4\",81,4.333\n\"4\",73,4.5\n\"2\",50,2.417\n\"4\",85,4\n\"4\",74,4.167\n\"2\",55,1.883\n\"5\",77,4.583\n\"4\",83,4.25\n\"4\",83,3.767\n\"2\",51,2.033\n\"4\",78,4.433\n\"4\",84,4.083\n\"2\",46,1.833\n\"4\",83,4.417\n\"2\",55,2.183\n\"5\",81,4.8\n\"2\",57,1.833\n\"5\",76,4.8\n\"4\",84,4.1\n\"4\",77,3.966\n\"4\",81,4.233\n\"4\",87,3.5\n\"4\",77,4.366\n\"2\",51,2.25\n\"5\",78,4.667\n\"2\",60,2.1\n\"4\",82,4.35\n\"4\",91,4.133\n\"2\",53,1.867\n\"5\",78,4.6\n\"2\",46,1.783\n\"4\",77,4.367\n\"4\",84,3.85\n\"2\",49,1.933\n\"4\",83,4.5\n\"2\",71,2.383\n\"5\",80,4.7\n\"2\",49,1.867\n\"4\",75,3.833\n\"3\",64,3.417\n\"4\",76,4.233\n\"2\",53,2.4\n\"5\",94,4.8\n\"2\",55,2\n\"4\",76,4.15\n\"2\",50,1.867\n\"4\",82,4.267\n\"2\",54,1.75\n\"4\",75,4.483\n\"4\",78,4\n\"4\",79,4.117\n\"4\",78,4.083\n\"4\",78,4.267\n\"4\",70,3.917\n\"5\",79,4.55\n\"4\",70,4.083\n\"2\",54,2.417\n\"4\",86,4.183\n\"2\",50,2.217\n\"4\",90,4.45\n\"2\",54,1.883\n\"2\",54,1.85\n\"4\",77,4.283\n\"4\",79,3.95\n\"2\",64,2.333\n\"4\",75,4.15\n\"2\",47,2.35\n\"5\",86,4.933\n\"3\",63,2.9\n\"5\",85,4.583\n\"4\",82,3.833\n\"2\",57,2.083\n\"4\",82,4.367\n\"2\",67,2.133\n\"4\",74,4.35\n\"2\",54,2.2\n\"4\",83,4.45\n\"4\",73,3.567\n\"4\",73,4.5\n\"4\",88,4.15\n\"4\",80,3.817\n\"4\",71,3.917\n\"4\",83,4.45\n\"2\",56,2\n\"4\",79,4.283\n\"5\",78,4.767\n\"5\",84,4.533\n\"2\",58,1.85\n\"4\",83,4.25\n\"2\",43,1.983\n\"2\",60,2.25\n\"5\",75,4.75\n\"4\",81,4.117\n\"2\",46,2.15\n\"4\",90,4.417\n\"2\",46,1.817\n\"4\",74,4.467"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"2\"\n\"3\"\n\"4\"\n\"5\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.factor(round(eruptions))"
          },
          "opacity": {
            "value": 0.6
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "left",
      "title": "~ duration (m)",
      "fill": "fill"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "eruptions"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id298992439").parseSpec(plot_id298992439_spec);
</script><!--/html_preserve-->

```r
# Use add_legend() to combine the legends in the plot below. Adjust its properties as instructed.
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions)), shape = ~factor(round(eruptions)), 
        size = ~round(eruptions)) %>% 
  layer_points() %>% 
  add_legend(c("fill", "shape", "size"), 
             title = "~ duration (m)", values = c(2, 3, 4, 5))
```

<!--html_preserve--><div id="plot_id827121110-container" class="ggvis-output-container">
<div id="plot_id827121110" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id827121110_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id827121110" data-renderer="svg">SVG</a>
 | 
<a id="plot_id827121110_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id827121110" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id827121110_download" class="ggvis-download" data-plot-id="plot_id827121110">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id827121110_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "round(eruptions)": "number",
          "waiting": "number",
          "eruptions": "number"
        }
      },
      "values": "\"factor(round(eruptions))\",\"round(eruptions)\",\"waiting\",\"eruptions\"\n\"4\",4,79,3.6\n\"2\",2,54,1.8\n\"3\",3,74,3.333\n\"2\",2,62,2.283\n\"5\",5,85,4.533\n\"3\",3,55,2.883\n\"5\",5,88,4.7\n\"4\",4,85,3.6\n\"2\",2,51,1.95\n\"4\",4,85,4.35\n\"2\",2,54,1.833\n\"4\",4,84,3.917\n\"4\",4,78,4.2\n\"2\",2,47,1.75\n\"5\",5,83,4.7\n\"2\",2,52,2.167\n\"2\",2,62,1.75\n\"5\",5,84,4.8\n\"2\",2,52,1.6\n\"4\",4,79,4.25\n\"2\",2,51,1.8\n\"2\",2,47,1.75\n\"3\",3,78,3.45\n\"3\",3,69,3.067\n\"5\",5,74,4.533\n\"4\",4,83,3.6\n\"2\",2,55,1.967\n\"4\",4,76,4.083\n\"4\",4,78,3.85\n\"4\",4,79,4.433\n\"4\",4,73,4.3\n\"4\",4,77,4.467\n\"3\",3,66,3.367\n\"4\",4,80,4.033\n\"4\",4,74,3.833\n\"2\",2,52,2.017\n\"2\",2,48,1.867\n\"5\",5,80,4.833\n\"2\",2,59,1.833\n\"5\",5,90,4.783\n\"4\",4,80,4.35\n\"2\",2,58,1.883\n\"5\",5,84,4.567\n\"2\",2,58,1.75\n\"5\",5,73,4.533\n\"3\",3,83,3.317\n\"4\",4,64,3.833\n\"2\",2,53,2.1\n\"5\",5,82,4.633\n\"2\",2,59,2\n\"5\",5,75,4.8\n\"5\",5,90,4.716\n\"2\",2,54,1.833\n\"5\",5,80,4.833\n\"2\",2,54,1.733\n\"5\",5,83,4.883\n\"4\",4,71,3.717\n\"2\",2,64,1.667\n\"5\",5,77,4.567\n\"4\",4,81,4.317\n\"2\",2,59,2.233\n\"4\",4,84,4.5\n\"2\",2,48,1.75\n\"5\",5,82,4.8\n\"2\",2,60,1.817\n\"4\",4,92,4.4\n\"4\",4,78,4.167\n\"5\",5,78,4.7\n\"2\",2,65,2.067\n\"5\",5,73,4.7\n\"4\",4,82,4.033\n\"2\",2,56,1.967\n\"4\",4,79,4.5\n\"4\",4,71,4\n\"2\",2,62,1.983\n\"5\",5,76,5.067\n\"2\",2,60,2.017\n\"5\",5,78,4.567\n\"4\",4,76,3.883\n\"4\",4,83,3.6\n\"4\",4,75,4.133\n\"4\",4,82,4.333\n\"4\",4,70,4.1\n\"3\",3,65,2.633\n\"4\",4,73,4.067\n\"5\",5,88,4.933\n\"4\",4,76,3.95\n\"5\",5,80,4.517\n\"2\",2,48,2.167\n\"4\",4,86,4\n\"2\",2,60,2.2\n\"4\",4,90,4.333\n\"2\",2,50,1.867\n\"5\",5,78,4.817\n\"2\",2,63,1.833\n\"4\",4,72,4.3\n\"5\",5,84,4.667\n\"4\",4,75,3.75\n\"2\",2,51,1.867\n\"5\",5,82,4.9\n\"2\",2,62,2.483\n\"4\",4,88,4.367\n\"2\",2,49,2.1\n\"4\",4,83,4.5\n\"4\",4,81,4.05\n\"2\",2,47,1.867\n\"5\",5,84,4.7\n\"2\",2,52,1.783\n\"5\",5,86,4.85\n\"4\",4,81,3.683\n\"5\",5,75,4.733\n\"2\",2,59,2.3\n\"5\",5,89,4.9\n\"4\",4,79,4.417\n\"2\",2,59,1.7\n\"5\",5,81,4.633\n\"2\",2,50,2.317\n\"5\",5,85,4.6\n\"2\",2,59,1.817\n\"4\",4,87,4.417\n\"3\",3,53,2.617\n\"4\",4,69,4.067\n\"4\",4,77,4.25\n\"2\",2,56,1.967\n\"5\",5,88,4.6\n\"4\",4,81,3.767\n\"2\",2,45,1.917\n\"4\",4,82,4.5\n\"2\",2,55,2.267\n\"5\",5,90,4.65\n\"2\",2,45,1.867\n\"4\",4,83,4.167\n\"3\",3,56,2.8\n\"4\",4,89,4.333\n\"2\",2,46,1.833\n\"4\",4,82,4.383\n\"2\",2,51,1.883\n\"5\",5,86,4.933\n\"2\",2,53,2.033\n\"4\",4,79,3.733\n\"4\",4,81,4.233\n\"2\",2,60,2.233\n\"5\",5,82,4.533\n\"5\",5,77,4.817\n\"4\",4,76,4.333\n\"2\",2,59,1.983\n\"5\",5,80,4.633\n\"2\",2,49,2.017\n\"5\",5,96,5.1\n\"2\",2,53,1.8\n\"5\",5,77,5.033\n\"4\",4,77,4\n\"2\",2,65,2.4\n\"5\",5,81,4.6\n\"4\",4,71,3.567\n\"4\",4,70,4\n\"4\",4,81,4.5\n\"4\",4,93,4.083\n\"2\",2,53,1.8\n\"4\",4,89,3.967\n\"2\",2,45,2.2\n\"4\",4,86,4.15\n\"2\",2,58,2\n\"4\",4,78,3.833\n\"4\",4,66,3.5\n\"5\",5,76,4.583\n\"2\",2,63,2.367\n\"5\",5,88,5\n\"2\",2,52,1.933\n\"5\",5,93,4.617\n\"2\",2,49,1.917\n\"2\",2,57,2.083\n\"5\",5,77,4.583\n\"3\",3,68,3.333\n\"4\",4,81,4.167\n\"4\",4,81,4.333\n\"4\",4,73,4.5\n\"2\",2,50,2.417\n\"4\",4,85,4\n\"4\",4,74,4.167\n\"2\",2,55,1.883\n\"5\",5,77,4.583\n\"4\",4,83,4.25\n\"4\",4,83,3.767\n\"2\",2,51,2.033\n\"4\",4,78,4.433\n\"4\",4,84,4.083\n\"2\",2,46,1.833\n\"4\",4,83,4.417\n\"2\",2,55,2.183\n\"5\",5,81,4.8\n\"2\",2,57,1.833\n\"5\",5,76,4.8\n\"4\",4,84,4.1\n\"4\",4,77,3.966\n\"4\",4,81,4.233\n\"4\",4,87,3.5\n\"4\",4,77,4.366\n\"2\",2,51,2.25\n\"5\",5,78,4.667\n\"2\",2,60,2.1\n\"4\",4,82,4.35\n\"4\",4,91,4.133\n\"2\",2,53,1.867\n\"5\",5,78,4.6\n\"2\",2,46,1.783\n\"4\",4,77,4.367\n\"4\",4,84,3.85\n\"2\",2,49,1.933\n\"4\",4,83,4.5\n\"2\",2,71,2.383\n\"5\",5,80,4.7\n\"2\",2,49,1.867\n\"4\",4,75,3.833\n\"3\",3,64,3.417\n\"4\",4,76,4.233\n\"2\",2,53,2.4\n\"5\",5,94,4.8\n\"2\",2,55,2\n\"4\",4,76,4.15\n\"2\",2,50,1.867\n\"4\",4,82,4.267\n\"2\",2,54,1.75\n\"4\",4,75,4.483\n\"4\",4,78,4\n\"4\",4,79,4.117\n\"4\",4,78,4.083\n\"4\",4,78,4.267\n\"4\",4,70,3.917\n\"5\",5,79,4.55\n\"4\",4,70,4.083\n\"2\",2,54,2.417\n\"4\",4,86,4.183\n\"2\",2,50,2.217\n\"4\",4,90,4.45\n\"2\",2,54,1.883\n\"2\",2,54,1.85\n\"4\",4,77,4.283\n\"4\",4,79,3.95\n\"2\",2,64,2.333\n\"4\",4,75,4.15\n\"2\",2,47,2.35\n\"5\",5,86,4.933\n\"3\",3,63,2.9\n\"5\",5,85,4.583\n\"4\",4,82,3.833\n\"2\",2,57,2.083\n\"4\",4,82,4.367\n\"2\",2,67,2.133\n\"4\",4,74,4.35\n\"2\",2,54,2.2\n\"4\",4,83,4.45\n\"4\",4,73,3.567\n\"4\",4,73,4.5\n\"4\",4,88,4.15\n\"4\",4,80,3.817\n\"4\",4,71,3.917\n\"4\",4,83,4.45\n\"2\",2,56,2\n\"4\",4,79,4.283\n\"5\",5,78,4.767\n\"5\",5,84,4.533\n\"2\",2,58,1.85\n\"4\",4,83,4.25\n\"2\",2,43,1.983\n\"2\",2,60,2.25\n\"5\",5,75,4.75\n\"4\",4,81,4.117\n\"2\",2,46,2.15\n\"4\",4,90,4.417\n\"2\",2,46,1.817\n\"4\",4,74,4.467"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"2\"\n\"3\"\n\"4\"\n\"5\""
    },
    {
      "name": "scale/shape",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"2\"\n\"3\"\n\"4\"\n\"5\""
    },
    {
      "name": "scale/size",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n2\n5"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "shape",
      "type": "ordinal",
      "domain": {
        "data": "scale/shape",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "shapes"
    },
    {
      "name": "size",
      "domain": {
        "data": "scale/size",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": [20, 100]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "scale": "fill",
            "field": "data.factor(round(eruptions))"
          },
          "shape": {
            "scale": "shape",
            "field": "data.factor(round(eruptions))"
          },
          "size": {
            "scale": "size",
            "field": "data.round(eruptions)"
          },
          "opacity": {
            "value": 0.6
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "title": "~ duration (m)",
      "values": [2, 3, 4, 5],
      "fill": "fill",
      "shape": "shape",
      "size": "size"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "eruptions"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id827121110").parseSpec(plot_id827121110_spec);
</script><!--/html_preserve-->

```r
###Legends (2)
# Fix the legend
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions)), shape = ~factor(round(eruptions)), 
        size = ~round(eruptions)) %>% 
  layer_points() %>% 
  add_legend(c("fill", "shape", "size"), 
             title = "~ duration (m)")
```

<!--html_preserve--><div id="plot_id603437321-container" class="ggvis-output-container">
<div id="plot_id603437321" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id603437321_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id603437321" data-renderer="svg">SVG</a>
 | 
<a id="plot_id603437321_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id603437321" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id603437321_download" class="ggvis-download" data-plot-id="plot_id603437321">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id603437321_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "round(eruptions)": "number",
          "waiting": "number",
          "eruptions": "number"
        }
      },
      "values": "\"factor(round(eruptions))\",\"round(eruptions)\",\"waiting\",\"eruptions\"\n\"4\",4,79,3.6\n\"2\",2,54,1.8\n\"3\",3,74,3.333\n\"2\",2,62,2.283\n\"5\",5,85,4.533\n\"3\",3,55,2.883\n\"5\",5,88,4.7\n\"4\",4,85,3.6\n\"2\",2,51,1.95\n\"4\",4,85,4.35\n\"2\",2,54,1.833\n\"4\",4,84,3.917\n\"4\",4,78,4.2\n\"2\",2,47,1.75\n\"5\",5,83,4.7\n\"2\",2,52,2.167\n\"2\",2,62,1.75\n\"5\",5,84,4.8\n\"2\",2,52,1.6\n\"4\",4,79,4.25\n\"2\",2,51,1.8\n\"2\",2,47,1.75\n\"3\",3,78,3.45\n\"3\",3,69,3.067\n\"5\",5,74,4.533\n\"4\",4,83,3.6\n\"2\",2,55,1.967\n\"4\",4,76,4.083\n\"4\",4,78,3.85\n\"4\",4,79,4.433\n\"4\",4,73,4.3\n\"4\",4,77,4.467\n\"3\",3,66,3.367\n\"4\",4,80,4.033\n\"4\",4,74,3.833\n\"2\",2,52,2.017\n\"2\",2,48,1.867\n\"5\",5,80,4.833\n\"2\",2,59,1.833\n\"5\",5,90,4.783\n\"4\",4,80,4.35\n\"2\",2,58,1.883\n\"5\",5,84,4.567\n\"2\",2,58,1.75\n\"5\",5,73,4.533\n\"3\",3,83,3.317\n\"4\",4,64,3.833\n\"2\",2,53,2.1\n\"5\",5,82,4.633\n\"2\",2,59,2\n\"5\",5,75,4.8\n\"5\",5,90,4.716\n\"2\",2,54,1.833\n\"5\",5,80,4.833\n\"2\",2,54,1.733\n\"5\",5,83,4.883\n\"4\",4,71,3.717\n\"2\",2,64,1.667\n\"5\",5,77,4.567\n\"4\",4,81,4.317\n\"2\",2,59,2.233\n\"4\",4,84,4.5\n\"2\",2,48,1.75\n\"5\",5,82,4.8\n\"2\",2,60,1.817\n\"4\",4,92,4.4\n\"4\",4,78,4.167\n\"5\",5,78,4.7\n\"2\",2,65,2.067\n\"5\",5,73,4.7\n\"4\",4,82,4.033\n\"2\",2,56,1.967\n\"4\",4,79,4.5\n\"4\",4,71,4\n\"2\",2,62,1.983\n\"5\",5,76,5.067\n\"2\",2,60,2.017\n\"5\",5,78,4.567\n\"4\",4,76,3.883\n\"4\",4,83,3.6\n\"4\",4,75,4.133\n\"4\",4,82,4.333\n\"4\",4,70,4.1\n\"3\",3,65,2.633\n\"4\",4,73,4.067\n\"5\",5,88,4.933\n\"4\",4,76,3.95\n\"5\",5,80,4.517\n\"2\",2,48,2.167\n\"4\",4,86,4\n\"2\",2,60,2.2\n\"4\",4,90,4.333\n\"2\",2,50,1.867\n\"5\",5,78,4.817\n\"2\",2,63,1.833\n\"4\",4,72,4.3\n\"5\",5,84,4.667\n\"4\",4,75,3.75\n\"2\",2,51,1.867\n\"5\",5,82,4.9\n\"2\",2,62,2.483\n\"4\",4,88,4.367\n\"2\",2,49,2.1\n\"4\",4,83,4.5\n\"4\",4,81,4.05\n\"2\",2,47,1.867\n\"5\",5,84,4.7\n\"2\",2,52,1.783\n\"5\",5,86,4.85\n\"4\",4,81,3.683\n\"5\",5,75,4.733\n\"2\",2,59,2.3\n\"5\",5,89,4.9\n\"4\",4,79,4.417\n\"2\",2,59,1.7\n\"5\",5,81,4.633\n\"2\",2,50,2.317\n\"5\",5,85,4.6\n\"2\",2,59,1.817\n\"4\",4,87,4.417\n\"3\",3,53,2.617\n\"4\",4,69,4.067\n\"4\",4,77,4.25\n\"2\",2,56,1.967\n\"5\",5,88,4.6\n\"4\",4,81,3.767\n\"2\",2,45,1.917\n\"4\",4,82,4.5\n\"2\",2,55,2.267\n\"5\",5,90,4.65\n\"2\",2,45,1.867\n\"4\",4,83,4.167\n\"3\",3,56,2.8\n\"4\",4,89,4.333\n\"2\",2,46,1.833\n\"4\",4,82,4.383\n\"2\",2,51,1.883\n\"5\",5,86,4.933\n\"2\",2,53,2.033\n\"4\",4,79,3.733\n\"4\",4,81,4.233\n\"2\",2,60,2.233\n\"5\",5,82,4.533\n\"5\",5,77,4.817\n\"4\",4,76,4.333\n\"2\",2,59,1.983\n\"5\",5,80,4.633\n\"2\",2,49,2.017\n\"5\",5,96,5.1\n\"2\",2,53,1.8\n\"5\",5,77,5.033\n\"4\",4,77,4\n\"2\",2,65,2.4\n\"5\",5,81,4.6\n\"4\",4,71,3.567\n\"4\",4,70,4\n\"4\",4,81,4.5\n\"4\",4,93,4.083\n\"2\",2,53,1.8\n\"4\",4,89,3.967\n\"2\",2,45,2.2\n\"4\",4,86,4.15\n\"2\",2,58,2\n\"4\",4,78,3.833\n\"4\",4,66,3.5\n\"5\",5,76,4.583\n\"2\",2,63,2.367\n\"5\",5,88,5\n\"2\",2,52,1.933\n\"5\",5,93,4.617\n\"2\",2,49,1.917\n\"2\",2,57,2.083\n\"5\",5,77,4.583\n\"3\",3,68,3.333\n\"4\",4,81,4.167\n\"4\",4,81,4.333\n\"4\",4,73,4.5\n\"2\",2,50,2.417\n\"4\",4,85,4\n\"4\",4,74,4.167\n\"2\",2,55,1.883\n\"5\",5,77,4.583\n\"4\",4,83,4.25\n\"4\",4,83,3.767\n\"2\",2,51,2.033\n\"4\",4,78,4.433\n\"4\",4,84,4.083\n\"2\",2,46,1.833\n\"4\",4,83,4.417\n\"2\",2,55,2.183\n\"5\",5,81,4.8\n\"2\",2,57,1.833\n\"5\",5,76,4.8\n\"4\",4,84,4.1\n\"4\",4,77,3.966\n\"4\",4,81,4.233\n\"4\",4,87,3.5\n\"4\",4,77,4.366\n\"2\",2,51,2.25\n\"5\",5,78,4.667\n\"2\",2,60,2.1\n\"4\",4,82,4.35\n\"4\",4,91,4.133\n\"2\",2,53,1.867\n\"5\",5,78,4.6\n\"2\",2,46,1.783\n\"4\",4,77,4.367\n\"4\",4,84,3.85\n\"2\",2,49,1.933\n\"4\",4,83,4.5\n\"2\",2,71,2.383\n\"5\",5,80,4.7\n\"2\",2,49,1.867\n\"4\",4,75,3.833\n\"3\",3,64,3.417\n\"4\",4,76,4.233\n\"2\",2,53,2.4\n\"5\",5,94,4.8\n\"2\",2,55,2\n\"4\",4,76,4.15\n\"2\",2,50,1.867\n\"4\",4,82,4.267\n\"2\",2,54,1.75\n\"4\",4,75,4.483\n\"4\",4,78,4\n\"4\",4,79,4.117\n\"4\",4,78,4.083\n\"4\",4,78,4.267\n\"4\",4,70,3.917\n\"5\",5,79,4.55\n\"4\",4,70,4.083\n\"2\",2,54,2.417\n\"4\",4,86,4.183\n\"2\",2,50,2.217\n\"4\",4,90,4.45\n\"2\",2,54,1.883\n\"2\",2,54,1.85\n\"4\",4,77,4.283\n\"4\",4,79,3.95\n\"2\",2,64,2.333\n\"4\",4,75,4.15\n\"2\",2,47,2.35\n\"5\",5,86,4.933\n\"3\",3,63,2.9\n\"5\",5,85,4.583\n\"4\",4,82,3.833\n\"2\",2,57,2.083\n\"4\",4,82,4.367\n\"2\",2,67,2.133\n\"4\",4,74,4.35\n\"2\",2,54,2.2\n\"4\",4,83,4.45\n\"4\",4,73,3.567\n\"4\",4,73,4.5\n\"4\",4,88,4.15\n\"4\",4,80,3.817\n\"4\",4,71,3.917\n\"4\",4,83,4.45\n\"2\",2,56,2\n\"4\",4,79,4.283\n\"5\",5,78,4.767\n\"5\",5,84,4.533\n\"2\",2,58,1.85\n\"4\",4,83,4.25\n\"2\",2,43,1.983\n\"2\",2,60,2.25\n\"5\",5,75,4.75\n\"4\",4,81,4.117\n\"2\",2,46,2.15\n\"4\",4,90,4.417\n\"2\",2,46,1.817\n\"4\",4,74,4.467"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"2\"\n\"3\"\n\"4\"\n\"5\""
    },
    {
      "name": "scale/shape",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"2\"\n\"3\"\n\"4\"\n\"5\""
    },
    {
      "name": "scale/size",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n2\n5"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n40.35\n98.65"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.425\n5.275"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "name": "shape",
      "type": "ordinal",
      "domain": {
        "data": "scale/shape",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "shapes"
    },
    {
      "name": "size",
      "domain": {
        "data": "scale/size",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": [20, 100]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "fill": {
            "scale": "fill",
            "field": "data.factor(round(eruptions))"
          },
          "shape": {
            "scale": "shape",
            "field": "data.factor(round(eruptions))"
          },
          "size": {
            "scale": "size",
            "field": "data.round(eruptions)"
          },
          "opacity": {
            "value": 0.6
          },
          "x": {
            "scale": "x",
            "field": "data.waiting"
          },
          "y": {
            "scale": "y",
            "field": "data.eruptions"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "title": "~ duration (m)",
      "fill": "fill",
      "shape": "shape",
      "size": "size"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "waiting"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "eruptions"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id603437321").parseSpec(plot_id603437321_spec);
</script><!--/html_preserve-->

```r
###Scale Types
# Add a scale_numeric() function to the code below to make the stroke color range from "darkred" to "orange".
mtcars %>% 
  ggvis(~wt, ~mpg, fill = ~disp, stroke = ~disp, strokeWidth := 2) %>%
  layer_points() %>%
  scale_numeric("fill", range = c("red", "yellow")) %>%
  scale_numeric("stroke", range = c("darkred", "orange")) 
```

<!--html_preserve--><div id="plot_id460073082-container" class="ggvis-output-container">
<div id="plot_id460073082" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id460073082_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id460073082" data-renderer="svg">SVG</a>
 | 
<a id="plot_id460073082_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id460073082" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id460073082_download" class="ggvis-download" data-plot-id="plot_id460073082">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id460073082_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "disp": "number",
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"disp\",\"wt\",\"mpg\"\n160,2.62,21\n160,2.875,21\n108,2.32,22.8\n258,3.215,21.4\n360,3.44,18.7\n225,3.46,18.1\n360,3.57,14.3\n146.7,3.19,24.4\n140.8,3.15,22.8\n167.6,3.44,19.2\n167.6,3.44,17.8\n275.8,4.07,16.4\n275.8,3.73,17.3\n275.8,3.78,15.2\n472,5.25,10.4\n460,5.424,10.4\n440,5.345,14.7\n78.7,2.2,32.4\n75.7,1.615,30.4\n71.1,1.835,33.9\n120.1,2.465,21.5\n318,3.52,15.5\n304,3.435,15.2\n350,3.84,13.3\n400,3.845,19.2\n79,1.935,27.3\n120.3,2.14,26\n95.1,1.513,30.4\n351,3.17,15.8\n145,2.77,19.7\n301,3.57,15\n121,2.78,21.4"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n71.1\n472"
    },
    {
      "name": "scale/stroke",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n71.1\n472"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "name": "fill",
      "range": ["red", "yellow"],
      "zero": false,
      "nice": false,
      "clamp": false
    },
    {
      "domain": {
        "data": "scale/stroke",
        "field": "data.domain"
      },
      "name": "stroke",
      "range": ["darkred", "orange"],
      "zero": false,
      "nice": false,
      "clamp": false
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.disp"
          },
          "stroke": {
            "scale": "stroke",
            "field": "data.disp"
          },
          "strokeWidth": {
            "value": 2
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "disp"
    },
    {
      "orient": "right",
      "stroke": "stroke",
      "title": "disp"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id460073082").parseSpec(plot_id460073082_spec);
</script><!--/html_preserve-->

```r
# Change the graph below to make the fill colors range from green to beige.
mtcars %>% ggvis(~wt, ~mpg, fill = ~hp) %>%
  layer_points() %>%
  scale_numeric("fill", range = c("green", "beige"))
```

<!--html_preserve--><div id="plot_id171011749-container" class="ggvis-output-container">
<div id="plot_id171011749" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id171011749_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id171011749" data-renderer="svg">SVG</a>
 | 
<a id="plot_id171011749_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id171011749" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id171011749_download" class="ggvis-download" data-plot-id="plot_id171011749">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id171011749_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "hp": "number",
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"hp\",\"wt\",\"mpg\"\n110,2.62,21\n110,2.875,21\n93,2.32,22.8\n110,3.215,21.4\n175,3.44,18.7\n105,3.46,18.1\n245,3.57,14.3\n62,3.19,24.4\n95,3.15,22.8\n123,3.44,19.2\n123,3.44,17.8\n180,4.07,16.4\n180,3.73,17.3\n180,3.78,15.2\n205,5.25,10.4\n215,5.424,10.4\n230,5.345,14.7\n66,2.2,32.4\n52,1.615,30.4\n65,1.835,33.9\n97,2.465,21.5\n150,3.52,15.5\n150,3.435,15.2\n245,3.84,13.3\n175,3.845,19.2\n66,1.935,27.3\n91,2.14,26\n113,1.513,30.4\n264,3.17,15.8\n175,2.77,19.7\n335,3.57,15\n109,2.78,21.4"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n52\n335"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "name": "fill",
      "range": ["green", "beige"],
      "zero": false,
      "nice": false,
      "clamp": false
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.hp"
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "hp"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id171011749").parseSpec(plot_id171011749_spec);
</script><!--/html_preserve-->

```r
# Create a scale that will map factor(cyl) to a new range of colors: purple, blue, and green. 
mtcars %>% ggvis(~wt, ~mpg, fill = ~factor(cyl)) %>%
  layer_points() %>%
  scale_nominal("fill", range = c("purple", "blue", "green"))
```

<!--html_preserve--><div id="plot_id236421379-container" class="ggvis-output-container">
<div id="plot_id236421379" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id236421379_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id236421379" data-renderer="svg">SVG</a>
 | 
<a id="plot_id236421379_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id236421379" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id236421379_download" class="ggvis-download" data-plot-id="plot_id236421379">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id236421379_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"factor(cyl)\",\"wt\",\"mpg\"\n\"6\",2.62,21\n\"6\",2.875,21\n\"4\",2.32,22.8\n\"6\",3.215,21.4\n\"8\",3.44,18.7\n\"6\",3.46,18.1\n\"8\",3.57,14.3\n\"4\",3.19,24.4\n\"4\",3.15,22.8\n\"6\",3.44,19.2\n\"6\",3.44,17.8\n\"8\",4.07,16.4\n\"8\",3.73,17.3\n\"8\",3.78,15.2\n\"8\",5.25,10.4\n\"8\",5.424,10.4\n\"8\",5.345,14.7\n\"4\",2.2,32.4\n\"4\",1.615,30.4\n\"4\",1.835,33.9\n\"4\",2.465,21.5\n\"8\",3.52,15.5\n\"8\",3.435,15.2\n\"8\",3.84,13.3\n\"8\",3.845,19.2\n\"4\",1.935,27.3\n\"4\",2.14,26\n\"4\",1.513,30.4\n\"8\",3.17,15.8\n\"6\",2.77,19.7\n\"8\",3.57,15\n\"4\",2.78,21.4"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"4\"\n\"6\"\n\"8\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "name": "fill",
      "type": "ordinal",
      "range": ["purple", "blue", "green"],
      "points": true,
      "sort": false
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.factor(cyl)"
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "factor(cyl)"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id236421379").parseSpec(plot_id236421379_spec);
</script><!--/html_preserve-->

```r
###Adjust Any Visual Property
# Add a scale that limits the range of opacity from 0.2 to 1. 
mtcars %>% ggvis(x = ~wt, y = ~mpg, fill = ~factor(cyl), opacity = ~hp) %>%
  layer_points() %>%
  scale_numeric("opacity", range = c(0.2, 1))
```

<!--html_preserve--><div id="plot_id325196293-container" class="ggvis-output-container">
<div id="plot_id325196293" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id325196293_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id325196293" data-renderer="svg">SVG</a>
 | 
<a id="plot_id325196293_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id325196293" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id325196293_download" class="ggvis-download" data-plot-id="plot_id325196293">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id325196293_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "wt": "number",
          "mpg": "number",
          "hp": "number"
        }
      },
      "values": "\"wt\",\"mpg\",\"factor(cyl)\",\"hp\"\n2.62,21,\"6\",110\n2.875,21,\"6\",110\n2.32,22.8,\"4\",93\n3.215,21.4,\"6\",110\n3.44,18.7,\"8\",175\n3.46,18.1,\"6\",105\n3.57,14.3,\"8\",245\n3.19,24.4,\"4\",62\n3.15,22.8,\"4\",95\n3.44,19.2,\"6\",123\n3.44,17.8,\"6\",123\n4.07,16.4,\"8\",180\n3.73,17.3,\"8\",180\n3.78,15.2,\"8\",180\n5.25,10.4,\"8\",205\n5.424,10.4,\"8\",215\n5.345,14.7,\"8\",230\n2.2,32.4,\"4\",66\n1.615,30.4,\"4\",52\n1.835,33.9,\"4\",65\n2.465,21.5,\"4\",97\n3.52,15.5,\"8\",150\n3.435,15.2,\"8\",150\n3.84,13.3,\"8\",245\n3.845,19.2,\"8\",175\n1.935,27.3,\"4\",66\n2.14,26,\"4\",91\n1.513,30.4,\"4\",113\n3.17,15.8,\"8\",264\n2.77,19.7,\"6\",175\n3.57,15,\"8\",335\n2.78,21.4,\"4\",109"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {}
      },
      "values": "\"domain\"\n\"4\"\n\"6\"\n\"8\""
    },
    {
      "name": "scale/opacity",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n52\n335"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "type": "ordinal",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "points": true,
      "sort": false,
      "range": "category10"
    },
    {
      "domain": {
        "data": "scale/opacity",
        "field": "data.domain"
      },
      "name": "opacity",
      "range": [0.2, 1],
      "zero": false,
      "nice": false,
      "clamp": false
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          },
          "fill": {
            "scale": "fill",
            "field": "data.factor(cyl)"
          },
          "opacity": {
            "scale": "opacity",
            "field": "data.hp"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "factor(cyl)"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id325196293").parseSpec(plot_id325196293_spec);
</script><!--/html_preserve-->

```r
# Add a second scale that will expand the x axis to cover data values from 0 to 6.
mtcars %>% ggvis(~wt, ~mpg, fill = ~disp) %>%
  layer_points() %>%
  scale_numeric("y", domain = c(0, NA)) %>%
  scale_numeric("x", domain = c(0, 6))
```

<!--html_preserve--><div id="plot_id787321357-container" class="ggvis-output-container">
<div id="plot_id787321357" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id787321357_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id787321357" data-renderer="svg">SVG</a>
 | 
<a id="plot_id787321357_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id787321357" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id787321357_download" class="ggvis-download" data-plot-id="plot_id787321357">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id787321357_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "disp": "number",
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"disp\",\"wt\",\"mpg\"\n160,2.62,21\n160,2.875,21\n108,2.32,22.8\n258,3.215,21.4\n360,3.44,18.7\n225,3.46,18.1\n360,3.57,14.3\n146.7,3.19,24.4\n140.8,3.15,22.8\n167.6,3.44,19.2\n167.6,3.44,17.8\n275.8,4.07,16.4\n275.8,3.73,17.3\n275.8,3.78,15.2\n472,5.25,10.4\n460,5.424,10.4\n440,5.345,14.7\n78.7,2.2,32.4\n75.7,1.615,30.4\n71.1,1.835,33.9\n120.1,2.465,21.5\n318,3.52,15.5\n304,3.435,15.2\n350,3.84,13.3\n400,3.845,19.2\n79,1.935,27.3\n120.3,2.14,26\n95.1,1.513,30.4\n351,3.17,15.8\n145,2.77,19.7\n301,3.57,15\n121,2.78,21.4"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n71.1\n472"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-0.3\n6.3"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-1.695\n35.595"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.disp"
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "disp"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id787321357").parseSpec(plot_id787321357_spec);
</script><!--/html_preserve-->

```r
###Adjust Any Visual Property (2)
# Add a second scale to set domain for x
mtcars %>% ggvis(~wt, ~mpg, fill = ~disp) %>%
  layer_points() %>%
  scale_numeric("y", domain = c(0, NA)) %>%
  scale_numeric("x", domain = c(0, 6))
```

<!--html_preserve--><div id="plot_id805986817-container" class="ggvis-output-container">
<div id="plot_id805986817" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id805986817_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id805986817" data-renderer="svg">SVG</a>
 | 
<a id="plot_id805986817_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id805986817" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id805986817_download" class="ggvis-download" data-plot-id="plot_id805986817">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id805986817_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "disp": "number",
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"disp\",\"wt\",\"mpg\"\n160,2.62,21\n160,2.875,21\n108,2.32,22.8\n258,3.215,21.4\n360,3.44,18.7\n225,3.46,18.1\n360,3.57,14.3\n146.7,3.19,24.4\n140.8,3.15,22.8\n167.6,3.44,19.2\n167.6,3.44,17.8\n275.8,4.07,16.4\n275.8,3.73,17.3\n275.8,3.78,15.2\n472,5.25,10.4\n460,5.424,10.4\n440,5.345,14.7\n78.7,2.2,32.4\n75.7,1.615,30.4\n71.1,1.835,33.9\n120.1,2.465,21.5\n318,3.52,15.5\n304,3.435,15.2\n350,3.84,13.3\n400,3.845,19.2\n79,1.935,27.3\n120.3,2.14,26\n95.1,1.513,30.4\n351,3.17,15.8\n145,2.77,19.7\n301,3.57,15\n121,2.78,21.4"
    },
    {
      "name": "scale/fill",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n71.1\n472"
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-0.3\n6.3"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n-1.695\n35.595"
    }
  ],
  "scales": [
    {
      "name": "fill",
      "domain": {
        "data": "scale/fill",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": ["#132B43", "#56B1F7"]
    },
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "fill": {
            "scale": "fill",
            "field": "data.disp"
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [
    {
      "orient": "right",
      "fill": "fill",
      "title": "disp"
    }
  ],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id805986817").parseSpec(plot_id805986817_spec);
</script><!--/html_preserve-->

```r
###"=" Versus ":="
# Set the fill value to the color variable instead of mapping it, and see what happens
mtcars$color <- c("red", "teal", "#cccccc", "tan")
mtcars %>% ggvis(x = ~wt, y = ~mpg, fill := ~color) %>% layer_points()
```

<!--html_preserve--><div id="plot_id112082335-container" class="ggvis-output-container">
<div id="plot_id112082335" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id112082335_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id112082335" data-renderer="svg">SVG</a>
 | 
<a id="plot_id112082335_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id112082335" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id112082335_download" class="ggvis-download" data-plot-id="plot_id112082335">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id112082335_spec = {
  "data": [
    {
      "name": ".0",
      "format": {
        "type": "csv",
        "parse": {
          "wt": "number",
          "mpg": "number"
        }
      },
      "values": "\"wt\",\"mpg\",\"color\"\n2.62,21,\"red\"\n2.875,21,\"teal\"\n2.32,22.8,\"#cccccc\"\n3.215,21.4,\"tan\"\n3.44,18.7,\"red\"\n3.46,18.1,\"teal\"\n3.57,14.3,\"#cccccc\"\n3.19,24.4,\"tan\"\n3.15,22.8,\"red\"\n3.44,19.2,\"teal\"\n3.44,17.8,\"#cccccc\"\n4.07,16.4,\"tan\"\n3.73,17.3,\"red\"\n3.78,15.2,\"teal\"\n5.25,10.4,\"#cccccc\"\n5.424,10.4,\"tan\"\n5.345,14.7,\"red\"\n2.2,32.4,\"teal\"\n1.615,30.4,\"#cccccc\"\n1.835,33.9,\"tan\"\n2.465,21.5,\"red\"\n3.52,15.5,\"teal\"\n3.435,15.2,\"#cccccc\"\n3.84,13.3,\"tan\"\n3.845,19.2,\"red\"\n1.935,27.3,\"teal\"\n2.14,26,\"#cccccc\"\n1.513,30.4,\"tan\"\n3.17,15.8,\"red\"\n2.77,19.7,\"teal\"\n3.57,15,\"#cccccc\"\n2.78,21.4,\"tan\""
    },
    {
      "name": "scale/x",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n1.31745\n5.61955"
    },
    {
      "name": "scale/y",
      "format": {
        "type": "csv",
        "parse": {
          "domain": "number"
        }
      },
      "values": "\"domain\"\n9.225\n35.075"
    }
  ],
  "scales": [
    {
      "name": "x",
      "domain": {
        "data": "scale/x",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "width"
    },
    {
      "name": "y",
      "domain": {
        "data": "scale/y",
        "field": "data.domain"
      },
      "zero": false,
      "nice": false,
      "clamp": false,
      "range": "height"
    }
  ],
  "marks": [
    {
      "type": "symbol",
      "properties": {
        "update": {
          "size": {
            "value": 50
          },
          "x": {
            "scale": "x",
            "field": "data.wt"
          },
          "y": {
            "scale": "y",
            "field": "data.mpg"
          },
          "fill": {
            "field": "data.color"
          }
        },
        "ggvis": {
          "data": {
            "value": ".0"
          }
        }
      },
      "from": {
        "data": ".0"
      }
    }
  ],
  "legends": [],
  "axes": [
    {
      "type": "x",
      "scale": "x",
      "orient": "bottom",
      "layer": "back",
      "grid": true,
      "title": "wt"
    },
    {
      "type": "y",
      "scale": "y",
      "orient": "left",
      "layer": "back",
      "grid": true,
      "title": "mpg"
    }
  ],
  "padding": null,
  "ggvis_opts": {
    "keep_aspect": false,
    "resizable": true,
    "padding": {},
    "duration": 250,
    "renderer": "svg",
    "hover_duration": 0,
    "width": 1152,
    "height": 576
  },
  "handlers": null
};
ggvis.getPlot("plot_id112082335").parseSpec(plot_id112082335_spec);
</script><!--/html_preserve-->

