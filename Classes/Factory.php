<?php

require_once __DIR__ . "/EchoOutput.php";
require_once __DIR__ . "/Database.php";


// Factory for needed classes
class Factory
{

    /**
     * Creates an instance of EchoOutput
     * @return EchoOutput
     */
    public function createEchoOutput(): EchoOutput
    {
        return new EchoOutput();
    }

    /**
     * Creates an instance of Database
     * @return Database
     */
    public function createDatabase(): Database
    {
        return new Database();
    }


}