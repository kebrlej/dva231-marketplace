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

    public static function logoutUser()
    {
        unset($_SESSION['role']);
        //destroy_session() ?????
    }


}