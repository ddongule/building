/* order */
var select_list = [];

Array.prototype.remove = function(index){
  this.splice(index,1);
}

function select(shop,item){
  var isExist = false;
  var isExistIndex = 0;

  shop = shop.replace(" ","_");
  item = item.replace(" ","_");

  var ordered_wine = {wineshop: shop, wine: item};

  for(var i = 0; i<select_list.length; i++){
      if(select_list[i].wineshop === shop && select_list[i].wine === item){
          isExist = true;
          isExistIndex = i;
      }
  }
  
  if(isExist){
      select_list.remove(isExistIndex);
  }
  else{
  select_list.push(ordered_wine);
  }
};

function receive(){
  var listBox = document.getElementById('list');
  listBox.value = JSON.stringify(select_list);
};


/* payment */
var nameStack = new Array();
var shopStack = new Array();

function send(){
  var infoBox = document.getElementById('info');
  infoBox.value = nameStack;

  var shopBox = document.getElementById('shop');
  shopBox.value = shopStack;
  alert(shopStack);
  var sum = 0;
  for(var i = 0; i< nameStack.length; i++){
    sum += parseInt(document.getElementById(i).value);
  }
  
  if(sum < 12){
    alert('최소 주문 갯수는 12개입니다.');
    return false;
  }
  else{
    alert('성공!');
  }
}

function namePush(item){
  nameStack.push(item);
}

function shopPush(item){
  shopStack.push(item);
}
/* receipt */
Date.prototype.yyyymmdd = function() {
  var mm = this.getMonth() + 1; // getMonth() is zero-based
  var dd = this.getDate();

  return [this.getFullYear(),
          (mm>9 ? '' : '0') + mm,
          (dd>9 ? '' : '0') + dd
        ].join('');
};

var date = new Date();
var orderList = [];

function writeUserData(userEmail) {
  var newdate = date.yyyymmdd();

  for(var i = 0; i<orderList.length; i++){
    firebase.database().ref('users/' + userEmail + '/' + newdate ).push(orderList[i]);
  }
}

makeList = function(name,amount){
  var newList = {와인: name, 개수: amount};
  orderList.push(newList);
};
