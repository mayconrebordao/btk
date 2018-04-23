const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const User = require("../models/User");
const authConfig = require("../../config/auth");
const crypto = require("crypto");

const router = express.Router();

// função para gerar o token do usuário
function generateToken(params = {}) {
  return jwt.sign(params, authConfig.secret, {
  	expiresIn: 86400
  });
}


// rota de registro de usuário

router.post('/register', async (req, res, next) => {
	const { email } =  req.body;
	try{
		if (await User.findOne({email})){
			return res.status(409).send({
				error: "User already exists!"
			})
		}
		User.create(req.body, (error, user) =>{
			if(error){
				return res.status(500).send({
					error: "Intenal error, please trye again."
				})
			}
			const response = {
				id: use._id,
				name: user.name,
				email: user.email,
				nickname: user.nickname
			}
		})
	}
	catch(error){
		return res.status(500).send({
			error: "Registration failed, please tray again."
		})
	}
})


// rota para autenticação de usuários