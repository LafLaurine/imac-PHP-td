<?php
class People
{
    private $lastname;
    private $firstname;
    private $birthdDate;

    public function __construct($lastname, $firstname, $birthDate) {
        $this->nom = $lastname;
        $this->prenom = $firstname;
        $this->birthdate = $birthDate;
    }
}
?>