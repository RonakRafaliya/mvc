<?php
namespace Block\Admin\Admin;

\Mage::loadClassByFileName('block\core\edit');

class Edit extends \Block\Core\Edit
{
    public function __Construct()
    {
        parent::__Construct();
        $this->setTabClass('block\admin\admin\edit\tabs');
    }
}


?>