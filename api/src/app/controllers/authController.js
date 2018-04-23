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
	try{
		const { email, nickname } =  req.body;
		
		console.log(req.body);
		if (await User.findOne({email})){
			return res.status(409).send({
				error: "User already exists!"
			})
		}
		if (await User.findOne({nickname})){
			return res.status(409).send({
				error: "nickname is already in using!"
			})
		}

		User.create(req.body, (error, user) =>{
			console.clear()
			console.log(user)
			if(error){
				return res.status(500).send({
					error: "Intenal error, please trye again."
				})
			}
			const response = {
				id: user._id,
				name: user.name,
				email: user.email,
				nickname: user.nickname,
				token: generateToken({ id: user._id })
			}
			return res.status(200).send({
				response
			})
		})
	}
	catch(error){
		console.log(error)
		return res.status(500).send({
			error: "Registration failed, please tray again."
		})
	}
})


// rota para autenticação de usuários

router.post('/authenticate', async (req, res, next) => {
	const {email, password } = req.body;
	if ( ! email || ! password){
		return res.status(28).send({
			error: "Password and E-mail can not be null."
		})
	}

	let query =  User.findOne({email}).select('+password');
	query.exec(async (error, user) =>{

		if(error){
			return  res.status(404).send({
				error: "User not found."
			})
		}

		console.log(user);
		console.log(password)
		if(!await bcrypt.compare(password, user.password)) {
			return res.status(401).send({
				error: "Password not match."
			})
		}
		user.password = undefined;
		// console.log(user.id);
		// res.send()
		return res.status(200).send({
			token: generateToken({id: user._id })
		})
	})

})


module.exports = app => app.use('/auth', router);
