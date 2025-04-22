const pool = require("../config/database");

const getUsers = async () => {
    try {
        const result = await pool.query("SELECT * FROM usuarios");
        return result.rows;
    } catch (error) {
        console.error("Error fetching users:", error);
        throw new Error("Failed to fetch users.");
    }
};

const getUserById = async (id) => {
    try {
        const result = await pool.query("SELECT * FROM usuarios WHERE id = $1", [id]);
        if (result.rows.length === 0) {
            throw new Error("User not found.");
        }
        return result.rows[0];
    } catch (error) {
        console.error("Error fetching user by ID:", error);
        throw new Error("Failed to fetch user.");
    }
};

const createUser = async (name, email, photo) => {
    try {
        const result = await pool.query(
            "INSERT INTO usuarios (name, email, photo) VALUES ($1, $2, $3) RETURNING *",
            [name, email, photo]
        );
        return result.rows[0];
    } catch (error) {
        console.error("Error creating user:", error);
        throw new Error("Failed to create user.");
    }
};

const updateUser = async (id, name, email) => {
    try {
        const result = await pool.query(
            "UPDATE usuarios SET name = $1, email = $2 WHERE id = $3 RETURNING *",
            [name, email, id]
        );
        if (result.rows.length === 0) {
            throw new Error("User not found.");
        }
        return result.rows[0];
    } catch (error) {
        console.error("Error updating user:", error);
        throw new Error("Failed to update user.");
    }
};

const deleteUser = async (id) => {
    try {
        const result = await pool.query("DELETE FROM usuarios WHERE id = $1 RETURNING *", [id]);
        if (result.rows.length === 0) {
            throw new Error("User not found.");
        }
        return { message: "User deleted successfully." };
    } catch (error) {
        console.error("Error deleting user:", error);
        throw new Error("Failed to delete user.");
    }
};

module.exports = { getUsers, getUserById, createUser, updateUser, deleteUser };
