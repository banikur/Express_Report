@extends('admin.layouts.master')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">{{ $title }}</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                        <li class="breadcrumb-item active">{{ $title }}</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        @can('create cinema')
                        <div class="card-header">
                            <h3 class="card-title">
                                <a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#modal-tambah" data-backdrop="static" data-keyboard="false"><i class="fas fa-plus"></i> Tambah</a>
                                <a href="#" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-import" data-backdrop="static" data-keyboard="false"><i class="fas fa-upload"></i> Upload</a>
                            </h3>
                        </div>
                        @endcan
                        <!-- /.card-header -->
                        <div class="card-body table-responsive">
                            <table class="table table-bordered table-hover datatable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Cinema Brand</th>
                                        <th>Location</th>
                                        <th>Total Studio</th>
                                        <th>Updated</th>
                                        @canany(['update cinema', 'delete cinema'])
                                        <th>Action</th>
                                        @endcanany
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $i)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $i->name }}</td>
                                        <td>{{ $i->CinemaType->name }}</td>
                                        <td>{{ $i->City->name }}, {{ $i->Province->name }}</td>
                                        <td>{{$i->Details->count()}}</td>
                                        <td>{{ $i->updated_at }}</td>
                                        @canany(['update cinema', 'delete cinema'])
                                        <td>
                                            <div class="btn-group">
                                                @can('update cinema')
                                                <button class="btn btn-sm btn-primary btn-edit" data-id="{{ $i->id }}"><i class="fas fa-pencil-alt"></i></button>
                                                @endcan
                                                @can('delete cinema')
                                                <button class="btn btn-sm btn-danger btn-delete" data-id="{{ $i->id }}" data-name="{{ $i->name }}"><i class="fas fa-trash"></i></button>
                                                @endcan
                                            </div>
                                        </td>
                                        @endcanany
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@endsection
@section('modal')
{{-- Modal tambah --}}
<div class="modal fade" id="modal-tambah">
    <div class="modal-dialog modal-xl modal-dialog-centered  modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tambah Data</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('cinema.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group">
                                <label>Name</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Name" name="name" value="{{ old('name') }}">
                                    @error('name')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="input-group">
                                <label>Location</label>
                                <div class="input-group">
                                    <select class="form-control" name="id_location">
                                        @foreach ($location as $province)
                                        <optgroup label="{{ $province->name }}">
                                            @foreach ($province->City as $kab)
                                            <option value="{{ $kab->full_code }}">{{ $kab->name }}</option>
                                            @endforeach
                                        </optgroup>
                                        @endforeach
                                    </select>
                                    @error('id_location')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <label>Cinema Brand</label>
                                <div class="input-group">
                                    <select class="form-control @error('name') is-invalid @enderror" name="cinema_type">
                                        @foreach($cinema_type as $ct)
                                        <option value="{{$ct->id}}">{{$ct->name}}</option>
                                        @endforeach
                                    </select>
                                    @error('cinema_type')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="input-group">
                                <label>Total Studio</label>
                                <div class="input-group">
                                    <select class="form-control @error('name') is-invalid @enderror" name="total_studio" id="total_studio">
                                        @for($i=1; $i<=10; $i++) <option value="{{$i}}">{{$i}} Studio</option>
                                            @endfor
                                    </select>
                                    @error('total_studio')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                        </div>
                    </div>
                    <br />
                    <hr /><br />
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th>Studio</th>
                                        <th>Normal Price</th>
                                        <th>Weekend Price</th>
                                        <th>Holiday Price</th>
                                    </tr>
                                </thead>
                                <tbody id="cinema-details-container"></tbody>
                            </table>
                        </div>
                    </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
{{-- Modal Update --}}
<div class="modal fade" id="modal-edit">
    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit Data</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('cinema.update') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method("PUT")
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group">
                                <label>Name</label>
                                <div class="input-group">
                                    <input type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Name" name="name" value="{{ old('name') }}">
                                    @error('name')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="input-group">
                                <label>Location</label>
                                <div class="input-group">
                                    <select class="form-control" name="id_location">
                                        @foreach ($location as $province)
                                        @foreach ($province->City as $kab)
                                        <option value="{{ $kab->full_code }}">{{ $kab->type }} {{ $kab->name }}</option>
                                        @endforeach
                                        @endforeach
                                    </select>
                                    @error('id_location')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <label>Cinema Brand</label>
                                <div class="input-group">
                                    <select class="form-control @error('cinema_type') is-invalid @enderror" name="cinema_type">
                                        @foreach($cinema_type as $ct)
                                        <option value="{{$ct->id}}">{{$ct->name}}</option>
                                        @endforeach
                                    </select>
                                    @error('cinema_type')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="input-group">
                                <label>Total Studio</label>
                                <div class="input-group">
                                    <select class="form-control @error('name') is-invalid @enderror" name="total_studio" id="total_studio">
                                        @for($i=1; $i<=10; $i++) <option value="{{$i}}">{{$i}} Studio</option>
                                            @endfor
                                    </select>
                                    @error('total_studio')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                        </div>
                    </div>
                    <br />
                    <hr /><br />
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th>Studio</th>
                                        <th>Normal Price</th>
                                        <th>Weekend Price</th>
                                        <th>Holiday Price</th>
                                    </tr>
                                </thead>
                                <tbody id="cinema-edit-container"></tbody>
                            </table>
                        </div>
                    </div>
            </div>
            <div class="modal-footer justify-content-between">
                <input type="hidden" name="id" id="id">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
{{-- Modal delete --}}
<div class="modal fade" id="modal-delete">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Hapus Data</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('cinema.destroy') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('DELETE')
                    <p class="modal-text">Apakah anda yakin akan menghapus? <b id="delete-data"></b></p>
                    <input type="hidden" name="id" id="did">
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-danger">Hapus</button>
            </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<div class="modal fade" id="modal-import">
    <div class="modal-dialog modal-xxl modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Import Data</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('cinema.import') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="input-group">
                        <label>File</label>
                        <div class="input-group">
                            <input type="file" name="file" id="import-file" accept=".xlsx" class="input-group"><br />
                        </div>
                        <small>Ketentuan import data ada disini, <a href="contoh.pdf" target="download">disini</a></small>
                    </div>
                    <br />
                    <button type="button" class="btn btn-default" id="btn-preview">Preview</button>
                    <br />
                    <hr />
                    <br />
                    <table id="preview-table" class="table" style="width: 100%;">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Province Code</th>
                                <th>City Code</th>
                                <th>Cinema Type</th>
                                <th>Studio Number</th>
                                <th>Normal Price</th>
                                <th>Weekend Price</th>
                                <th>Holiday Price</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary">Import</button>
            </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
@endsection

@section('js')
<script>
    $(document).ready(function() {
        $(document).on("click", '.btn-edit', function() {
            let id = $(this).attr("data-id");

            // Tampilkan loading modal
            $('#modal-loading').modal({
                backdrop: 'static',
                keyboard: false,
                show: true
            });

            $.ajax({
                url: "{{ route('cinema.show') }}",
                type: "POST",
                dataType: "JSON",
                data: {
                    id: id,
                    _token: "{{ csrf_token() }}"
                },
                success: function(response) {
                    let data = response.data;
                    let details = response.data.details; // Data detail studio
                    let region = data.province_code + '' + data.city_code;

                    // Isi form di modal edit
                    $("#modal-edit #id").val(data.id);
                    $("#modal-edit input[name='name']").val(data.name);
                    $("#modal-edit select[name='id_location']").val(region).trigger("change");
                    $("#modal-edit select[name='cinema_type']").val(data.cinema_type_id).trigger("change");
                    // Kosongkan tabel sebelum diisi ulang
                    $("#cinema-edit-container").empty();

                    // Loop untuk mengisi data cinema_detail berdasarkan jumlah studio
                    details.forEach((detail, index) => {
                        $("#cinema-edit-container").append(`
                    <tr>
                        <td>
                            <input type="number" name="cinema_details[${index}][studio_number]" 
                                value="${detail.studio_number}" class="form-control" readonly>
                        </td>
                        <td>
                            <input type="text" name="cinema_details[${index}][normal_price]" 
                                value="${formatRupiah(detail.normal_price)}" class="form-control price-input">
                        </td>
                        <td>
                            <input type="text" name="cinema_details[${index}][weekend_price]" 
                                value="${formatRupiah(detail.weekend_price)}" class="form-control price-input">
                        </td>
                        <td>
                            <input type="text" name="cinema_details[${index}][holiday_price]" 
                                value="${formatRupiah(detail.holiday_price)}" class="form-control price-input">
                        </td>
                    </tr>
                `);
                    });

                    // Sembunyikan loading modal dan tampilkan modal edit
                    $('#modal-loading').modal('hide');
                    $('#modal-edit').modal({
                        backdrop: 'static',
                        keyboard: false,
                        show: true
                    });
                },
                error: function() {
                    alert("Terjadi kesalahan, coba lagi!");
                    $('#modal-loading').modal('hide');
                }
            });
        });

        // Fungsi untuk format angka ke format rupiah
        function formatRupiah(angka) {
            return new Intl.NumberFormat('id-ID').format(angka);
        }


        $(document).on("click", '.btn-delete', function() {
            let id = $(this).attr("data-id");
            let name = $(this).attr("data-name");
            $("#did").val(id);
            $("#delete-data").html(name);
            $('#modal-delete').modal({
                backdrop: 'static',
                keyboard: false,
                show: true
            });
        });
    });
</script>
<script>
    $(document).ready(function() {
        $('#total_studio').change(function() {
            let totalStudio = $(this).val();
            let container = $('#cinema-details-container');
            container.empty(); // Hapus data lama

            for (let i = 1; i <= totalStudio; i++) {
                container.append(`
                    <tr>
                        <td>Studio ${i}</td>
                        <td>
                        <input type="hidden" name="cinema_details[${i}][studio_number]" value="${i}" class="form-control" readonly>
                        <input type="text" name="cinema_details[${i}][normal_price]" class="form-control format-rupiah" required>
                        </td>
                        <td><input type="text" name="cinema_details[${i}][weekend_price]" class="form-control format-rupiah" required></td>
                        <td><input type="text" name="cinema_details[${i}][holiday_price]" class="form-control format-rupiah" required></td>
                    </tr>
                `);
            }
            $('.format-rupiah').on('input', function() {
                let value = $(this).val().replace(/\D/g, ''); // Hapus non-digit
                $(this).val(formatRupiah(value));
            });
        });

        function formatRupiah(angka) {
            return angka.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
    });
</script>
<script>
    $(document).ready(function() {
        
    });
    $("#btn-preview").click(function() {
        let fileInput = $("#import-file")[0];
        let kotaOptions = {!! json_encode($location->flatMap->City) !!};
        let provinsiOptions = {!! json_encode($location) !!};
        let cinemaBrandOptions = {!! json_encode($cinema_type) !!};
        if (!fileInput || !fileInput.files.length) {
            alert("Pilih file terlebih dahulu!");
            return;
        }

        let formData = new FormData();
        formData.append("file", fileInput.files[0]);

        $.ajax({
            url: "cinema/preview",
            type: "POST",
            data: formData,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            processData: false, // Tambahkan ini
            contentType: false, // Tambahkan ini
            success: function(response) {
                console.log("Response dari server:", response);

                if (response.success) {
                    let tableBody = $("#preview-table tbody");
                    tableBody.empty();

                    response.data.forEach((row, index) => {
                        let citySelect = row.city_code === "Tidak Ditemukan" ? `
                            <select class="form-control">
                                <option value="">Pilih Kota</option>
                                ${kotaOptions.map(k => `<option value="${k.id}">${k.name}</option>`).join('')}
                            </select>` :
                            row.city_code;

                        let provinceSelect = row.province_code === "Tidak Ditemukan" ? `
                            <select class="form-control">
                                <option value="">Pilih Provinsi</option>
                                ${provinsiOptions.map(p => `<option value="${p.id}">${p.name}</option>`).join('')}
                            </select>` :
                            row.province_code;

                        let cinemaBrandSelect = row.cinema_brand === "Tidak Ditemukan" ? `
                            <select class="form-control">
                                <option value="">Pilih Brand</option>
                                ${cinemaBrandOptions.map(cb => `<option value="${cb.id}">${cb.name}</option>`).join('')}
                            </select>` :
                            row.cinema_brand;

                        if (index === 0) return;
                        tableBody.append(`
                        <tr>
                            <td>${row.name}</td>
                            <td>${row.city_code === "Tidak Ditemukan" ? citySelect: row.city_code}</td>
                            <td>${row.province_code === "Tidak Ditemukan" ? provinceSelect : row.province_code}</td>
                            <td>${row.cinema_type === "Tidak Ditemukan" ? cinemaBrandSelect : row.cinema_type}</td>
                            <td>${row.studio_number}</td>
                            <td>${row.normal_price}</td>
                            <td>${row.holiday_price}</td>
                            <td>${row.weekend_price}</td>
                        </tr>
                        `);
                    });

                    $("#btn-import-confirm").show();
                }
            }

        });


    });
</script>
@endsection