<?php
namespace Block\Admin\Customer;

\Mage::loadClassByFileName('block\core\edit');

class Grid extends \Block\Core\Template
{
    protected $customer = null;

    public function __construct()
    {
        $this->setTemplate('admin/Customer/grid.php');
    }
    public function setCustomer($customer = null)
    {
        if (!$customer) {
            $customer = \Mage::getModel('model\customer');
            $customer = $customer->fetchAll();
        }
        $this->customer = $customer;
        return $this;
    }
    public function getCustomer()
    {
        if (!$this->customer) {
            $this->setCustomer();
        }
        return $this->customer;
    }
    public function getGroupName($id)
    {
        $customerGroup = \Mage::getModel('model\customer\group');
        $customerData = $customerGroup->load($id);
        return $customerData->groupName;
    }

}
