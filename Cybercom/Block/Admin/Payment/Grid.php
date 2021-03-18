<?php
namespace Block\Admin\Payment; 

\Mage::loadClassByFileName('block\core\Edit');


class Grid extends \Block\Core\Edit   
{
    protected $payment = null;
    public function __construct()
    {
        $this->setTemplate('admin/Payment/grid.php');
       
    }
    public function setPayment($payment = null)
    {
        if (!$payment) {
            $payment = \Mage::getModel('model\payment');
            $payment = $payment->fetchAll();
        }
        $this->payment = $payment;
        return $this;
    }
    public function getPayment()
    {
       if (!$this->payment) {
           $this->setPayment();
       }
        return $this->payment;     
    }

    
}


?>