<?php
namespace Controller\Admin;

\Mage::loadClassByFileName('controller\core\admin');

class index extends \Controller\Core\Admin
{
 public function indexAction()
 {
  $form = \Mage::getBlock('Block\Admin\Index\Grid');
  $layout = $this->getLayout();
  $content = $layout->getChild('Content');
  $content->addChild($form, 'form');
  echo $layout->toHtml();
  // $grid = \Mage::getBLock('block\admin\index\grid')->toHtml();
  // $response = [
  //     'element' => [
  //         [
  //             'selector' => '#contentHtml',
  //             'html' => $grid,
  //         ],
  //         [
  //             'selector' => '#tabHtml',
  //             'html' => null,
  //         ],
  //     ],
  // ];
  // header("Content-type:appliction/json; charset=utf-8");
  // echo json_encode($response);
 }

}
