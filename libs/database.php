<?php

class Database
{
    private $dbh;
    private $sth;

    /**
     * __construct
     * Stores database handler
     */
	public function __construct($conf){
        try{
            $this->dbh = new PDO('mysql:dbname='.$conf['database'].';host='.$conf['hostname'], $conf['username'], $conf['password']);
            $this->dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            return ("Unexpected Error: <br\>" . $e->getMessage());
        }
    }

    /**
     * disconnect
     * Destroys the connection
     */
    public function disconnect(){
        $this->dbh = null;
    }

    /**
     * query
     * Executes an query, if params are set, will apply
     */
    public function query($query, $param = null){
        try{
            $this->sth = $this->dbh->prepare($query);
            $this->sth->execute($param);
        } catch(PDOException $e) {
            return $e->getMessage();
        }
    }

    /**
     * fetchAll
     * Fetches the data, associated or as object
     */
    public function fetchAll($mode = 0){
        $result = null;
        switch($mode){
            case 0:
                $result = $this->sth->fetchAll(PDO::FETCH_ASSOC);
                break;
            case 1:
                $result = $this->sth->fetchAll(PDO::FETCH_OBJ);
                break;
        }
        return $result;
    }
}

?>