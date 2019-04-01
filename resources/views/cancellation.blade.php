@extends('layout.app')
@section('contents')

<div class="container">
@if($contents->isEmpty())
<h1>Opps..  Nothing to show</h1>
@else
@foreach ($contents as $content)

    <h3 class="h3">{{$content->title}}</h3>
    <br>
    {!! $content->description !!}
    
@endforeach

@endif
</div>

@endsection