<?php
namespace Model\Core;

class Adapter
{
    private $config = [
        'host' => 'localhost',
        'username' => 'root',
        'password' => '',
        'databasename' => 'Application',
    ];

    private $conn = null;

    public function __construct()
    {
        $this->Connection();
    }
    public function Connection()
    {
        $conn = new \mysqli($this->config['host'], $this->config['username'], $this->config['password'], $this->config['databasename']);
        $this->setConnection($conn);
    }
    public function getConnection()
    {
        return $this->conn;
    }
    public function setConnection(\mysqli $conn)
    {
        $this->conn = $conn;
        return $this;
    }
    public function isConnected()
    {
        if (!$this->getConnection()) {
            return false;
        }
        return true;
    }

    /*INSERT DATA*/
    public function insertData($query)
    {
        if (!$this->isConnected()) {
            return false;
        } else {
            $result = $this->getConnection()->query($query);
            if ($result) {
                return $this->getConnection()->insert_id;
            }
            return $result;
        }
    }

    /*UPDATE DATA*/
    public function updateData($query)
    {
        if (!$this->isConnected()) {
            return false;
        } else {
            $result = $this->getConnection()->query($query);
            return $result;
        }
    }

    /*DELETE DATA*/
    public function deleteData($query)
    {
        if (!$this->isConnected()) {
            return false;
        } else {
            $result = $this->getConnection()->query($query);
            return $result;
        }
    }

    /*FETCH ALL DATA*/
    public function fetchAll($query)
    {
        if (!$this->isConnected()) {
            return false;
        } else {
            $result = $this->getConnection()->query($query);
            $data = $result->fetch_all(MYSQLI_ASSOC);
            return $data;

        }
    }

    /*FETCH PAIRS DATA*/
    public function fetchPairs($query)
    {
        if (!$this->isConnected()) {
            return false;
        } else {
            $result = $this->getConnection()->query($query);
            $row = $result->fetch_all();
            $id = array_column($row, '0');
            $name = array_column($row, '1');
            return array_combine($id, $name);
        }
    }
    /*FETCH ONE ROW*/
    public function fetchRow($query)
    {
        $result = $this->getConnection()->query($query);
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            return $row;
        } else {
            // echo "Record not found";
        }
    }

    /*EXECUTE QUERY */
    public function query($query)
    {
        return $this->getConnection()->query($query);
    }
}
