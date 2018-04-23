"use-strict";

var a = 2;

function init() {
  console.log(n);
  var n = 2;
}
init();
// console.log(a);

let b = 2;

function teste() {
  let b = 10;
  console.log(b);
}

teste();

// console.log(b);
const t = 30;

// console.log(t);
// t.property = 20;
// console.log(t);

const soma = (x, y = 1) => x * y;
// console.log(soma(2));

const sum = (...nums) => nums.reduce((acc, current) => acc + current, 0);

// console.log(sum(1, 3, 4, 0, 12, 21, 12, 4, 0));
import { Router } from "express";
import express from "express";
const app = express();
// app.get
// console.log(Express);
