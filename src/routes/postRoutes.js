const express = require('express');
const router = express.Router();
const postController = require("../controllers/postControllers");

/**
 * @swagger
 * tags:
 *   name: Houses
 *   description: Gerenciamento de Posts
 */

/**
 * @swagger
 * /api/posts:
 *   get:
 *     summary: Lista todos os Posts
 *     tags: [Posts]
 *     responses:
 *       200:
 *         description: Lista dos Posts
 */
router.get("/", postController.getAllPosts);

/**
 * @swagger
 * /api/posts/{id}:
 *   get:
 *     summary: Busca Post por ID
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post encontrado
 *       404:
 *         description: Post não encontrado
 */
router.get("/:id", postController.getById);

/**
 * @swagger
 * /api/posts/{id}:
 *   post:
 *     summary: Cria um novo Post
 *     tags: [Posts]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               founder:
 *                 type: string
 *     responses:
 *       201:
 *         description: Post criado
 */
router.post("/", postController.createPost);

/**
 * @swagger
 * /api/posts/{id}:
 *   put:
 *     summary: Atualiza um Post
 *     tags: [Posts]
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
 *               founder:
 *                 type: string
 *     responses:
 *       200:
 *         description: Post atualizado
 */
router.put("/:id", postController.editPost);

/**
 * @swagger
 * /api/posts/{id}:
 *   delete:
 *     summary: Deleta um Post
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post deletado   
 */
router.delete("/:id", postController.deletePost);

module.exports = router;