{{--
@if ($errors->any())
    <div class="alert alert-danger">
        <div>
            @foreach ($errors->all() as $error)
                <p>{{ $error }}</p>
            @endforeach
        </div>
    </div>
@endif

@if (Session::has('success'))
    <div class="alert alert-success">
        <div>
            <p>{{ Session::get('success') }}</p>
        </div>
    </div>
@endif

@if (Session::has('error'))
    <div class="alert alert-danger">
        <div>
            <p>{{ Session::get('error') }}</p>
        </div>
    </div>
@endif--}}


{{--show error from ajax start--}}
<div class="alert alert-danger" style="display:none">

</div>

<div class="alert alert-success" style="display:none">
    <div>
        <p> </p>
    </div>
</div>
{{--show error from ajax end--}}
