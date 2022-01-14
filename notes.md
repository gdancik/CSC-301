---
layout: page
title: Course Notes 
permalink: /notes/
order: 2
exclude_from_nav: false
---

<style>
.hide {
  display:none
}

</style>

<div id = 'hidden' class = 'hide' markdown="1">
</div>

* [Course Introduction]({{ site.baseurl }}/data/notes/Intro.pdf)
    * [Example web page]({{ site.baseurl }}/data/notes/example.html)
* [HTML Tags]({{ site.baseurl }}/data/notes/HTML.pdf) 
    * [example]({{ site.baseurl }}/data/notes/tags.html)

{% comment %}
- Form examples
    - Examples: [forms.html]({{ site.baseurl }}/data/notes/forms.html) |
    [demo.php]({{ site.baseurl }}/data/notes/demo.php)
* [CSS]({{ site.baseurl }}/data/notes/CSS.pdf) 
    - Examples:  [display.html]({{ site.baseurl }}/data/notes/display.html) |
[navbar.html]({{ site.baseurl }}/data/notes/navbar.html) |
[hide.html]({{ site.baseurl }}/data/notes/hide.html)
* A closer look at the position [position.html]({{ site.baseurl }}/data/notes/position.html) property
* [JavaScript]({{ site.baseurl }}/data/notes/JavaScript.pdf) 
    * Examples: [JS Basics]({{ site.baseurl }}/data/notes/js_basics.html) |
     [JS Array]({{ site.baseurl }}/data/notes/js_array.html) |
     [JS Objects]({{ site.baseurl }}/data/notes/js_objects.html) |
     [JS Inputs]({{ site.baseurl }}/data/notes/js_inputs.html) |
     [JS onclick change]({{ site.baseurl }}/data/notes/js_change_onclick.html) 
* [Web Frameworks]({{ site.baseurl }}/data/notes/WebFrameworks.pdf)
    * Examples:  [JS functions]({{ site.baseurl }}/data/notes/JS_functions.html) |
   [jQuery Example #1]({{ site.baseurl }}/data/notes/jquery1.html) |
   [jQuery Example #2]({{ site.baseurl }}/data/notes/jquery2.html)
* [Chrome Browser Extensions]({{ site.baseurl }}/data/notes/Extensions.pdf) 
    * Examples:
    [extension_example_1.zip]({{ site.baseurl }}/data/notes/extension_example_1.zip) |
    [extension_with_css.zip]({{ site.baseurl }}/data/notes/extension_with_css.zip) |
    [extension_with_jquery.zip]({{ site.baseurl }}/data/notes/extension_with_jquery.zip)
    * Asynchronous examples: [asynchronous_example.html]({{ site.baseurl }}/data/notes/asynchronous_example.html) |
    [callback.html]({{ site.baseurl }}/data/notes/callback.html)
    * Highlighter extension: [highlighter.zip]({{ site.baseurl }}/data/notes/highlighter.zip)
* [Python programming basics]({{ site.baseurl }}/data/notes/PythonBasics.zip) 
* [Advanced programming]({{ site.baseurl }}/data/notes/PythonAdvanced.zip) 
</div>



* [Web Scraping]({{ site.baseurl }}/data/notes/WebScraping.pdf)
    * [webscraping.zip]({{ site.baseurl }}/data/notes/webscraping.zip)
* [Selenium Example]({{ site.baseurl }}/data/notes/selenium_example.ipynb) 
    * [Unit Testing Example]({{ site.baseurl }}/data/notes/unittest_example.ipynb) 
* JSON and Web APIs
    * [json_example.html]({{ site.baseurl }}/data/notes/json_example.html) |
     [pokemon_api.html]({{ site.baseurl }}/data/notes/pokemon_api.html) |
     [JSON in Python]({{ site.baseurl }}/data/notes/JSON_objects_in_Python.ipynb)
* R Programming ([R-intro.R]({{ site.baseurl }}/data/notes/R-intro.R) |
                [dataframes.R]({{ site.baseurl }}/data/notes/dataframes.R))
* Shiny ([shiny.R]({{ site.baseurl }}/data/notes/shiny.R) |
        [telephones.zip]({{ site.baseurl }}/data/notes/telephones.zip))
* Webscraping in R ([rvest.R]({{ site.baseurl }}/data/notes/rvest.R))
* [WrapUp]({{ site.baseurl }}/data/notes/Wrapup.pdf) 

<br><br>
<center>
<div id = 'clicker'>
<a href = '#' style='font-size:120%' onclick = 'viewAll();'>Click to view all notes</a>   
<script>
function viewAll() {
    document.getElementById('hidden').classList.remove('hide');
    document.getElementById('clicker').classList.add('hide');
}
</script>


</div>
</center>
        
* [CSS]({{ site.baseurl }}/data/notes/CSS.pdf) <a data-toggle="collapse" data-target="#css">(Click to show/hide examples)</a>
<div markdown="1" id = "css" class = "collapse" style = "margin:0px"> 
 - CSS Examples
    - [display.html]({{ site.baseurl }}/data/notes/display.html)
    - [navbar.html]({{ site.baseurl }}/data/notes/navbar.html)
    - [hide.html]({{ site.baseurl }}/data/notes/hide.html)
</div>
* Form Example <a data-toggle="collapse" data-target="#forms">(Click to show/hide examples)</a>
<div markdown="1" id = "forms" class = "collapse" style = "margin:0px">
</div>
* [Javascript]({{ site.baseurl }}/data/notes/Javascript.pdf) 
<a data-toggle="collapse" data-target="#js">(Click to show/hide examples)</a>
<div markdown="1" id = "js" class = "collapse" style = "margin:0px">
- Javascript examples
    * [Javascript Basics]({{ site.baseurl }}/data/notes/js_basics.html)
    * [Javascript Array]({{ site.baseurl }}/data/notes/js_array.html)
    * [Javascript Objects]({{ site.baseurl }}/data/notes/js_objects.html)
    * [Javascript Inputs]({{ site.baseurl }}/data/notes/js_inputs.html)
</div>
* [Javascript Exercises]({{ site.baseurl }}/data/notes/JavascriptExercises.pdf) 
* [Web Frameworks]({{ site.baseurl }}/data/notes/WebFrameworks.pdf) 
<a data-toggle="collapse" data-target="#frameworks">(Click to show/hide examples)</a>
<div markdown="1" id = "frameworks" class = "collapse" style = "margin:0px">
- Web Framework examples
    * [jQuery Example #1]({{ site.baseurl }}/data/notes/jquery.html)
    * [jQuery Example #2]({{ site.baseurl }}/data/notes/jquery2.html)
    * [Angular Basics Example]({{ site.baseurl }}/data/notes/angular_basics.html)
    * [Angular Controller Example]({{ site.baseurl }}/data/notes/angular_controller.html)
</div>
</div>
    * [Python dictionaries]({{ site.baseurl }}/data/notes/dictionary.py) 
* [Selenium Example]({{ site.baseurl }}/data/notes/selenium_ex.py) 
    * [Unit Testing Example]({{ site.baseurl }}/data/notes/unittest_ex.py) 
* JSON and Web APIs
    * [JSON example]({{ site.baseurl }}/data/notes/json_ex.html) 
    * [Pokémon API (HTML)]({{ site.baseurl }}/data/notes/pokemon_api.html) 
    * [Pokémon API (Python)]({{ site.baseurl }}/data/notes/pokemon_api.py) 
* [R/Shiny]({{ site.baseurl }}/data/notes/R.pdf) 
    * [rvest example]({{ site.baseurl }}/data/notes/rvest.R) 
    * [shiny overview]({{ site.baseurl }}/data/notes/shiny.R) 

{% endcomment %}
