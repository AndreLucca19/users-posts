const express = require('express');
const router = express.Router();
const UserController = require('../controllers/userControllers');
const upload = require("../config/upload");
const apiKeyMiddleware = require("../config/apiKey"); // Middleware para autenticação por API Key

// Aplica o middleware de API Key para todas as rotas abaixo
router.use(apiKeyMiddleware);

/**
 * @swagger
 * tags:
 *   name: Users
 *   description: Gerenciamento de Usuários
 */

// Rota para listar todos os usuários
router.get("/users", UserController.getAllUsers);

/**
 * @swagger
 * /users/{id}:
 *   get:
 *     summary: Busca usuário por ID
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Usuário encontrado
 *       404:
 *         description: Usuário não encontrado
 */
router.get("/users/:id", UserController.getUserById);

// Rota para deletar um usuário por ID
router.delete("/users/:id", UserController.deleteUser);

/**
 * @swagger
 * /users/{id}:
 *   put:
 *     summary: Atualiza um usuário
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               email:
 *                 type: string
 *     responses:
 *       200:
 *         description: Usuário atualizado
 */
router.put("/users/:id", UserController.updateUser);

/**
 * @swagger
 * /users:
 *   post:
 *     summary: Cria um novo usuário
 *     tags: [Users]
 *     requestBody:
 *       required: true
 *       content:
 *         multipart/form-data:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               email:
 *                 type: string
 *               photo:
 *                 type: string
 *                 format: binary
 *     responses:
 *       201:
 *         description: Usuário criado
 */
router.post("/users", upload.single("photo"), UserController.createUser);

module.exports = router;