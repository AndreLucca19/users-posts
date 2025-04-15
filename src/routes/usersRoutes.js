const express = require('express');
const router = express.Router();
const UserController = require('../controllers/userControllers');
const upload = require("../config/upload");

/**
 * @swagger
 * tags:
 *   name: Users
 *   description: Gerenciamento de Usuarios
 */

/**
 * @swagger
 * /api/users:
 *   get:
 *     summary: Lista de todos os Usuarios
 *     tags: [Users]
 *     parameters:
 *       - in: query
 *         name: name
 *         schema:
 *           type: string
 *         description: Filtrar por nome
 *     responses:
 *       200:
 *         description: Lista de Usuarios
 */
router.get('/', UserController.getAllUsers);

/**
 * @swagger
 * /api/users/{id}:
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
 * /api/users/{id}:
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
 * /api/users/{id}:
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
 * /api/wizards:
 *   post:
 *     summary: Cria um novo bruxo
 *     tags: [Wizards]
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