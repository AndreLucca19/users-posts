const express = require('express');
const router = express.Router();
const UserController = require('../controllers/userControllers');
const upload = require("../config/upload");
const apiKeyMiddleware = require("../config/apiKey"); // 🔐

router.use(apiKeyMiddleware); // 🔒 Aplica para todas as rotas abaixo
/**
 * @swagger
 * tags:
 *   name: Users
 *   description: Gerenciamento de Usuarios
 */

/**
 * @swagger
 * /users:
 *   get:
 *     summary: Lista todos os usuários
 *     tags: [Users]
 *     responses:
 *       200:
 *         description: Lista de usuários
 */
router.get("/users", UserController.getAllUsers);

/**
 * @swagger
 * /users/{id}:
 *   get:
 *     summary: Busca users por ID
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Usuario encontrado
 *       404:
 *         description: Usuario não encontrado
 */
router.get('/:id', UserController.getUserById);

/**
 * @swagger
 * /users/{id}:
 *   delete:
 *     summary: Deleta um Usuario
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Usuario deletado
 */
router.delete('/:id', UserController.deleteUser);

/**
 * @swagger
 * /users/{id}:
 *   put:
 *     summary: Atualiza um Usuario
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
 *               house_id:
 *                 type: integer
 *     responses:
 *       200:
 *         description: Usuario atualizado
 */
router.put('/:id', UserController.updateUser);

/**
 * @swagger
 * /users:
 *   post:
 *     summary: Cria um novo usuario
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
 *               house_id:
 *                 type: integer
 *               photo:
 *                 type: string
 *                 format: binary
 *     responses:
 *       201:
 *         description: Usuario criado
 */

router.post('/', upload.single('photo'), UserController.createUser);

module.exports = router;