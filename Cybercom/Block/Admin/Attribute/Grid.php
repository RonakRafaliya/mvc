<?php
namespace Block\Admin\Attribute;

\Mage::loadClassByFileName('block\core\edit');

class Grid extends \Block\core\Edit
{
    protected $attributes = null;

    public function __Construct()
    {
        $this->setTemplate('admin/attribute/grid.php');
    }

    public function setAttributes($attributes = null)
    {
        if (!$attributes) {
            $attributes =  \Mage::getModel('model\attribute');
            $attributes = $attributes->fetchAll();
        }
        $this->attributes = $attributes;
        return $this;
    }
    public function getAttributes()
    {
        if (!$this->attributes) {
            $this->setAttributes();
        }
        return $this->attributes;     
    }
        
}

?>