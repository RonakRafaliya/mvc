<?php
namespace Model\Attribute;

\Mage::getModel('model\core\table');

class Options extends \Model\Core\Table
{
    public function __construct()
    {
        $this->setPrimaryKey('optionId');
        $this->setTableName('attribute_option');
    }
}
?>