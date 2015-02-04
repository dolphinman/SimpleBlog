<?php

class SimpleBlog
{
    private $workDirectory;
    private $dbObject;
    private $generateTime;

    /**
     * __construct
     * Stores the work directory, and database object
     */
    public function __construct($workDirectory, Database $db = null){
        $this->workDirectory = $workDirectory;
        $this->dbObject = $db;
        $this->generateTime = microtime(true);
    }

    /**
     * buildBlog
     * Builds the blog
     */
    public function buildBlog(){
        echo $this->getContent('top.html', 0);
        echo $this->getPosts();
        echo $this->getContent('bot.html', 0);
        $this->dbObject->disconnect();
        echo $this->getGenTime();
    }

    /**
     * getPosts
     * Gather the posts from the database and output them in formatted data
     */
    public function getPosts(){
        $this->dbObject->query('SELECT id, title, content, date FROM posts ORDER BY id DESC');
        $rows = $this->dbObject->fetchAll();
        $posts = null;
        foreach($rows as $row){
            $posts .= '<div id="post">';
            $posts .= '<h3>[' . $row['id'] . '] '. $row['title'] . '</h3>';
            $posts .= $row['content'];
            $posts .= '<div id="time">Posted on: ' . $row['date'] . '</div>';
            $posts .= '<div id="divider"/></div>';
            $posts .= '</div>';
        }
        return $posts;
    }

    /**
     * getContent
     * Gets the content from a specified file
     */
    public function getContent($file, $type = 0, $path = null){
        if(!isset($file) || !isset($type)){
            return new Exception("One variable or more have not been set properly");
        }
        if(is_integer($type)){
            switch($type){
                default:
                case 0:
                    //template folder
                    $path = '\assets\template\\';
                    break;
                case 1:
                    //css folder
                    $path = '\assets\css\\';
                    break;
                case 2:
                    //custom folder
                    $path = $path;
                    break;
            }
        }

        if (file_exists($this->workDirectory .$path . $file))
            return file_get_contents($this->workDirectory .$path . $file);
        else
            return "File not found: " . $this->workDirectory .$path . $file;
    }

    /**
     * getGenTime
     * Returns an string containing the time needed to build the page
     **/
    public function getGenTime(){
        return "<center><small>Page Generated In: ".(microtime(true) - $this->generateTime)."s</center></small>";
    }
}

?>