<?php
namespace Block\Admin\Product;
use Block\Core\Template;

\Mage::loadClassByFileName('block\core\template');

class Grid extends Template
{
    protected $products = null;

    public function __Construct()
    {
        $this->setTemplate('Admin/product/grid.php');
    }

    public function setProduct($products = null)
    {
        if (!$products) {
            $products = \Mage::getModel('model\product');
            $products = $products->fetchAll();
        }
        $this->products = $products;
        return $this;
    }
    public function getProduct()
    {
        if (!$this->products) {
            $this->setProduct();
        }
        return $this->products;
    }
}
