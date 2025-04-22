const UserModel = require("../models/UserModel");

const getAllUsers = async (req, res) => {
    try {
        const users = await UserModel.getUsers();
        res.json(users);
    } catch (error) {
        res.status(500).json({ error: 'Erro ao buscar usuários.' });
    }
};

const getUserById = async (req, res) => {
    const { id } = req.params;
    try {
        const user = await UserModel.getUserById(id);
        if (!user) {
            return res.status(404).json({ error: 'User not found.' });
        }
        res.json(user);
    } catch (error) {
        res.status(500).json({ error: 'Error fetching user.' });
    }
}

const deleteUser = async (req, res) => {
    try {
        const { id } = req.params;
        const result = await UserModel.deleteUser(id); // Corrigido para "deleteUser"
        res.status(200).json(result);
    } catch (error) {
        console.error("Erro ao deletar usuário:", error);
        res.status(500).json({ error: error.message });
    }
};

const updateUser = async (req, res) => {
    try {
        const { id } = req.params;
        const { name, email } = req.body;

        const user = await UserModel.updateUser(id, name, email);

        if (!user) {
            return res.status(404).json({ message: "Usuário não encontrado." });
        }

        res.json(user);
    } catch (error) {
        console.error("Erro ao atualizar o usuário:", error);
        res.status(500).json({ message: "Erro ao atualizar o usuário." });
    }
};

const createUser = async (req, res) => {
    try {
        const { name, email, password } = req.body;
        const user = await UserModel.createUser(name, email, password); // Corrigido para "createUser"
        res.status(201).json(user);
    } catch (error) {
        console.error("Erro ao criar o usuário:", error);
        res.status(500).json({ message: "Erro ao criar o usuário." });
    }
};


module.exports = {getAllUsers, getUserById, deleteUser, updateUser, createUser};