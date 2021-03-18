<div class="navbar navbar-expand-lg navbar-dark " style="background-color: rgb(0,149,159)">
    <div>
        <a class="navbar-brand" href="#">RonsCart</a>
    </div>

    <div class="collapse navbar-collapse" id="collapsibleNavId" >
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0 float-right">
            <li class="nav-item active">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('index', 'index', [], true); ?>').load();" font>Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'Admin', [], true); ?>').load();">Admin</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'Cms', [], true); ?>').load();">Cms Page</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'product', [], true); ?>').load();">Product</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'Category', [], true); ?>').load()">Category</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'Customer_Group', [], true); ?>').load();">Customer Group</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'Customer', [], true); ?>').load();">Customer</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'Shipping', [], true); ?>').load();">Shipping</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'Payment', [], true); ?>').load();">Payment</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)" onclick="object.setUrl('<?php echo $this->getUrl()->getUrl('gridHtml', 'Attribute', [], true); ?>').load();">Attribute</a>
            </li>
        </ul>
    </div>
</div>
