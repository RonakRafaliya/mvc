<?php
namespace Block\Admin\Attribute;

\Mage::loadClassByFileName('block\core\edit');

class Edit extends \Block\Core\Edit
{
    public function __Construct()
    {
        parent::__Construct();
        $this->setTabClass('block\admin\attribute\edit\tabs');
    }    
}


?>