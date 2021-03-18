<?php
namespace Model;

\Mage::loadClassByFileName('model\core\table');

class Customer extends Core\Table
{
    const STATUS_ENABLED = 'Enable';
    const STATUS_DISABLED = 'Disable';
    public function __construct()
    {
        $this->setPrimaryKey('customerId');
        $this->setTableName('customers');
    }
    public function getStatusOption()
    {
        return [
            self::STATUS_ENABLED => 'Enable',
            self::STATUS_DISABLED => 'Disable',
        ];
    }
    public function getCustomerGroup()
    {
        $customerGroup = \Mage::getModel('model\customer\group');
        $groupName = $customerGroup->fetchAll();
        return $groupName;
    }

}
