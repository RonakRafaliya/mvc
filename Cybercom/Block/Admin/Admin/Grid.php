<?php
namespace Block\Admin\Admin;

use Block\Core\Edit;

\Mage::loadClassByFileName('block\core\edit');

class Grid extends Edit
{
    protected $admin = null;

    public function __Construct()
    {
        $this->setTemplate('admin/admin/grid.php');
    }

    public function setAdmin($admin = null)
    {
        if (!$admin) {
            $admin = \Mage::getModel('model\admin');
            $admin = $admin->fetchAll();
        }
        $this->admin = $admin;
        return $this;
    }
    public function getAdmin()
    {
        if (!$this->admin) {
            $this->setAdmin();
        }
        return $this->admin;
    }
}
