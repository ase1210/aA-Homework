function titleize(arr, fn) {
  let mapped_arr = arr.map((el) => {
    return `Mx. ${el} Jingleheimer Schmidt`;
  });
  mapped_arr.forEach(element => {
    console.log(element);
  });
}

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  let rand_idx = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[rand_idx]}`);
};

// const elep = new Elephant("ele", 62, ['painting a picture', 'fiddling a fiddle', 'jumping for joy']);
// elep.grow();
// elep.trumpet();
// elep.play();
// console.log(elep);

// let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
// let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
// let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
// let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

// let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is skipping along....`);
};

// herd.forEach(Elephant.paradeHelper);

function dinerBreakfast() {
  let order = "I'd like pancakes please.";
  return function (item) {
    order = order.slice(0, order.length - 7);
    order += `and ${item} please.`;
    console.log(order);
  };
}

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate sauce");
bfastOrder("jelly sauce");
bfastOrder("orange juice");