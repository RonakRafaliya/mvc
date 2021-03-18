<?php
namespace Block\Admin\Category\Edit\Tabs;

\Mage::loadClassByFileName('block\core\edit');

class Media extends \Block\Core\Edit
{
    public function __construct()
    {
        $this->setTemplate('admin/category/edit/tabs/media.php');
    }
}
