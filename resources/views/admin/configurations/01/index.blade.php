@extends('templates.base')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-9">
            @if(Session::has('flash_message'))
            <div class="alert alert-success alert-dismissible" role="alert" data-plugin="alertify">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">×</span>
                </button>
                {{ Session::get('flash_message') }}
            </div>
            @endif
                <div class="panel panel-primary">
                    <div class="panel-heading">Configurations</div>
                    <div class="panel-body">

                        <a href="javascript:openwindows('{{ url('/admin/configurations/create') }}',450,650,true)" class="btn btn-primary btn-xs" title="Add New Configuration"><span class="glyphicon glyphicon-plus" aria-hidden="true"/></a>
                        <br/>
                        <br/>
                        <div class="table-responsive">
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th> Nom Site </th>
                                        <th> Telephone </th>
                                        <th> Numero Whatsapp </th>
                                        <th> Email </th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($configurations as $item)
                                    <tr>
                                        <td>{{ $item->id }}</td>
                                        <td>{{ $item->nom_site }}</td>
                                        <td>{{ $item->telephone }}</td>
                                        <td>{{ $item->cel }}</td>
                                        <td>{{ $item->email }}</td>
                                        <td>
                                            <a href="javascript:openwindows('{{ url('/admin/configurations/' . $item->id) }}',450,650,true)" class="btn btn-success btn-xs" title="View Configuration"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"/></a>
                                            <a href="javascript:openwindows('{{ url('/admin/configurations/' . $item->id . '/edit') }}',450,650,true)" class="btn btn-primary btn-xs" title="Edit Configuration"><span class="glyphicon glyphicon-pencil" aria-hidden="true"/></a>
                                            {!! Form::open([
                                                'method'=>'DELETE',
                                                'url' => ['/admin/configurations', $item->id],
                                                'style' => 'display:inline'
                                            ]) !!}
                                                {!! Form::button('<span class="glyphicon glyphicon-trash" aria-hidden="true" title="Delete Configuration" />', array(
                                                        'type' => 'submit',
                                                        'class' => 'btn btn-danger btn-xs',
                                                        'title' => 'Delete Configuration',
                                                        'onclick'=>'return confirm("Confirm delete?")'
                                                )) !!}
                                            {!! Form::close() !!}
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div class="pagination-wrapper"> {!! $configurations->render() !!} </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection