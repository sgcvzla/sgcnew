var menudesplegado = false;

function despliegamenu() {
   if (document.getElementById("menuapp").style.display == "none" || document.getElementById("menuapp").style.display == "") {

      document.getElementById("menuflotante").style.position = "absolute";
      document.getElementById("menuflotante").style.top = "300px";
      document.getElementById("menuflotante").style.border = "solid thin gray";
  
      // document.getElementById("menuapp").style.top = "335px";
      // document.getElementById("menuapp").style.left = "10px";
      document.getElementById("menuapp").style.display = "block";
      menudesplegado = true;
   } else {
      document.getElementById("menuflotante").style.position = "";
      document.getElementById("menuflotante").style.top = "";
      document.getElementById("menuflotante").style.border = "";
      document.getElementById("menuapp").style.display = "none";
      menudesplegado = false;
   }
}

function refresca(id,enlace) {
   document.getElementById("inicio").className = "";
   document.getElementById("nosotros").className = "";
   document.getElementById("productos").className = "";
   document.getElementById("clientes").className = "";
   document.getElementById("recursos").className = "";
   document.getElementById("contacto").className = "";
   document.getElementById("tools").className = "";
   document.getElementById("pagos").className = "";

   id.className = "active";

   document.getElementById("marco").src = "html/"+enlace+".html";
   // document.getElementById("marco").reload();
   if (menudesplegado) {
      despliegamenu();
   }
}
