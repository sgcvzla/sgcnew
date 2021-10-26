const login = (usr,pwd) => {
   console.log(usr,pwd);

   switch (usr) {
      case 'a':
         window.open("./menu.html", "_self", "", true);
      break;
      case 'b':
         window.open("./menu2.html", "_self", "", true);
      break;
      case 'c':
         window.open("./menuadm.html", "_self", "", true);
      break;
   }
}