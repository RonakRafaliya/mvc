<?php
namespace Block\Admin\Admin\Edit\Tabs;

use Block\Core\Edit;

\Mage::loadClassByFileName('block\core\Edit');

class User extends Edit
{
    public function __construct()
    {
        $this->setTemplate('admin/admin/edit/tabs/user.php');
    }
}
    