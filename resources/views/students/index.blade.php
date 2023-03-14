@extends('layouts.app')

@section('content')
    <style>
        td, th {
            padding-left: 15px !important;
        }

        td {
            padding-top: 5px !important;
            padding-bottom: 5px !important;
        }
    </style>
    <!-- ========== title-wrapper start ========== -->
    <div class="title-wrapper pt-30">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="title mb-30">
                    <h2>{{ __('Students') }}</h2>
                </div>
            </div>
            <div class="col-md-6 text-end">
                <button class="main-btn primary-btn btn-hover btn-sm"
                        data-bs-toggle="modal" data-bs-target="#AddModal">Add New
                </button>

            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>



    <div class="card-styles">
        <div class="card-style-3 mb-30">
            <div class="card-content">
                <div class="table-wrapper">
                    {!! $dataTable->table(['class' => 'table']) !!}
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="AddModal">
        <div class="modal-dialog">
            <form action="{{route('students.store')}}" method="post">
                @method('POST')
                @csrf
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add New Translation</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="input-style-1">
                            <label for="he_name">Hebrew Name</label>
                            <input type="text" id="he_name" name="he_name" placeholder="Hebrew Name">
                        </div>
                        <div class="input-style-1">
                            <label for="ar_name">Arabic Name</label>
                            <input type="text" id="ar_name" name="ar_name" placeholder="Arabic Name">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="main-btn dark-btn btn-hover btn-sm" data-bs-dismiss="modal">Close
                        </button>
                        <button type="submit" class="main-btn primary-btn btn-hover btn-sm">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>


    <div class="modal fade" id="UpdateModal">
        <div class="modal-dialog">
            <form    method="post">
                @method('PUT')
                @csrf
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add New Translation</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="input-style-1">
                            <label for="he_name">Hebrew Name</label>
                            <input type="text" id="he_name_update" name="he_name" placeholder="Hebrew Name">
                        </div>
                        <div class="input-style-1">
                            <label for="ar_name">Arabic Name</label>
                            <input type="text" id="ar_name_update" name="ar_name" placeholder="Arabic Name">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="main-btn dark-btn btn-hover btn-sm" data-bs-dismiss="modal">Close
                        </button>
                        <button type="submit" class="main-btn primary-btn btn-hover btn-sm">Update</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

@endsection
@push('scripts')
    {{ $dataTable->scripts(attributes: ['type' => 'module']) }}
    <script>
        function editStudent(btn, id) {
            var myModal = new bootstrap.Modal(document.getElementById("UpdateModal"), {});
            myModal.show();

            var newAction = "{{route('students.update',-1)}}".replace("-1", id);
            var action = $('#UpdateModal form').attr('action',newAction);
            $('#he_name_update').val($(btn).data('he-name'));
            $('#ar_name_update').val($(btn).data('ar-name'));
        }


    </script>
@endpush
