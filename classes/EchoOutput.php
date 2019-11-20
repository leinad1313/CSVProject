<?php

//Class to unify the order of HTML code in PHP
class EchoOutput
{
    /**
     * @var string
     */
    private $_output;

    /**
     * Stores strings for later output
     * @param string $string
     */
    public function store(string $string): void
    {
        $this->_output .= $string;
    }

    /**
     * Echos the given string
     */
    public function flush(): void
    {
        echo $this->_output;
    }

}