
const menu = () => {
   sel = window.location.search.substr(1).split('=')[1];

   sel = (sel==undefined) ? 0 : sel ;

   let xMenu = document.getElementsByClassName("item-menu");
   xMenu[sel].style.backgroundColor = 'red';
}