//Code for slider
var imgnames=["post1.jpg","post2.jpg","post3.jpg","post4.jpg"];
var i =0;
function moveSlider(){
    
    if(i==imgnames.length)
    {
        i=0;
    }
    document.getElementById("slide").src="images/"+imgnames[i];
    i++;
    window.setTimeout("moveSlider()",2000);
}