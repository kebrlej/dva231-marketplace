<?php


class SessionManagement
{

    public static function setUserRole($role)
    {
        $_SESSION['role'] = $role;
    }

    public static function getUserRole()
    {
        return $_SESSION['role'];
    }

    public static function isLoggedIn()
    {
        return isset($_SESSION['role']);
    }

    public static function isAdmin()
    {
        return $_SESSION['role'] === 'ADMIN';
    }

    public static function isUser()
    {
        return $_SESSION['role'] === 'USER';
    }

    public static function logoutUser()
    {
        unset($_SESSION['role']);
        //destroy_session() ?????
    }


}