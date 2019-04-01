<!-- Start Cart Item -->
<div class="chart-item table-responsive fix">
    <table class="col-md-12">
        <thead>
            <tr>
                <th class="th-delate">Remove</th>
                <th class="th-product">Images</th>
                <th class="th-details">Product Name</th>
                <th class="th-edit">Edit</th>
                <th class="th-price">Unit Price</th>
                <th class="th-qty">Qty</th>
                <th class="th-total">Subtotal</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($cart as $item)
            <tr>
                <td class="th-delate">
                <form action="/cart/remove/skuid={{$item->id}}" method="post">
                    @csrf
                        <button type="submit" class="btn">X</button>
                </form>
                </td>
                <td class="th-product">
                    <a href="#"><img src="{{Voyager::image(thumbnail(imageValidate($item->attributes->image)))}}" alt="cart"></a>
                </td>
                <td class="th-details">
                    <h2><a href="#">{{$item->name}}</a></h2>
                </td>
                <td class="th-edit"><a href="#">Edit</a></td>
            <td class="th-price">Rs. {{$item->price}}/-</td>
                <td class="th-qty">
                <form action="/cart/update/skuid={{$item->id}}" method="post">
                    @csrf
                    <input type="text" placeholder="" name="qty" class="form-control" value="{{$item->quantity}}">
                    <button type="submit" class="btn" style="margin-top:15px;"><i class="fa fa-refresh" aria-hidden="true"></i></button>
                </form>
                </td>
            <td class="th-total">Rs. {{$item->getPriceSum()}}/-</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div><!-- End Cart Item -->
    