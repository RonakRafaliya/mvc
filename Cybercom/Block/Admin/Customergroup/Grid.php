<?php
namespace Block\Admin\Customergroup;

\Mage::loadClassByFileName('block\core\template');

class Grid extends \Block\Core\Template
{
    protected $customerGroup = null;

    public function __construct()
    {
        $this->setTemplate('admin/customergroup/grid.php');
    }
    public function setCustomerGroup($customerGroup = null)
    {
        if (!$customerGroup) {
            $customerGroup = \Mage::getModel('model\customer\group');
            $customerGroup = $customerGroup->fetchAll();
        }
        $this->customerGroup = $customerGroup;
        return $this;
    }
    public function getCustomerGroup()
    {
        if (!$this->customerGroup) {
            $this->setCustomerGroup();
        }
        return $this->customerGroup;
    }

}
