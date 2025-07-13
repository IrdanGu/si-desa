@extends('constra_template.master')

@section('title')
    Surat Kurang Mampu
@endsection

@section('content')
<div id="banner-area" class="banner-area" style="background-image:url({{asset('constra/images/banner/satu.jpg')}})">
    <div class="banner-text">
       <div class="container">
          <div class="row">
             <div class="col-xs-12">
                <div class="banner-heading">
                   <h1 class="banner-title">Surat</h1>
                   <ol class="breadcrumb">
                      <li></li>
                   </ol>
                </div>
             </div><!-- Col end -->
          </div><!-- Row end -->
       </div><!-- Container end -->
    </div><!-- Banner text end -->
</div><!-- Banner area end -->

<section id="main-container" class="main-container test">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h3 style="margin-top:-40px;" class="column-title text-center">Pelayanan Surat Online</h3>
                @if(session('status'))
                    <div class="alert alert-success">
                        {{session('status')}}
                    </div>
                @endif
                <form style="margin-top:40px" action="{{route('suratsimpan')}}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="error-container"></div>
                    <div style="margin-top:-20px;" class="row">
                        <div class="col-md-12">
                            <div class="form-group {{$errors->has('nik') ? 'has-error' : ''}}">
                                <label for="nik">Nomor NIK</label>
                                <input type="text" onkeyup="isi_otomatis()" name="nik" class="form-control" id="nik" value="{{old('nik')}}">
                                @if ($errors->has('nik'))
                                    <span class="help-block">{{$errors->first('nik')}}</span>
                                @endif
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="no_kk">Nomor KK</label>
                                <input type="text" readonly name="no_kk" class="form-control" id="no_kk" value="{{old('no_kk')}}">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nama">Nama</label>
                        <input type="text" readonly name="nama" class="form-control" id="nama" value="{{old('nama')}}">
                    </div>

                    <div class="form-group">
                        <label for="pilihsurat">Jenis Surat</label>
                        <select name="pilihsurat" class="form-control {{ $errors->first('pilihsurat') ? 'is-invalid' : '' }}" id="pilihsurat">
                            <option value="">Pilih Surat</option>
                            <option value="Surat Keterangan Tidak Mampu">Surat Keterangan Tidak Mampu</option>
                            <option value="Surat Keterangan Usaha">Surat Keterangan Usaha</option>
                        </select>
                        <div class="invalid-feedback">
                            {{ $errors->first('pilihsurat') }}
                        </div>
                    </div>

                    <!-- Div untuk syarat Surat Keterangan Tidak Mampu -->
                    <div id="syaratSKTM" style="display:none;">
                        <div class="form-group">
                            <label for="foto_ktp">Foto Ktp</label>
                            <input type="file" class="form-control {{$errors->first('foto_ktp') ? 'is-invalid' : ''}}" id="foto_ktp" name="foto_ktp">
                            <div class="invalid-feedback">
                                {{$errors->first('fotoktp')}}
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="foto_kk">Foto KK</label>
                            <input type="file" class="form-control {{$errors->first('foto_kk') ? 'is-invalid' : ''}}" id="foto_kk" name="foto_kk">
                            <div class="invalid-feedback">
                                {{$errors->first('foto_kk')}}
                            </div>
                        </div>
                    </div>

                    <!-- Div untuk syarat Surat Keterangan Usaha -->
                    <div id="syaratSKU" style="display:none;">
                        <div class="form-group">
                            <label for="fotoktp">Foto Ktp</label>
                            <input type="file" class="form-control {{$errors->first('fotoktp') ? 'is-invalid' : ''}}" id="fotoktp" name="fotoktp">
                            <div class="invalid-feedback">
                                {{$errors->first('fotoktp')}}
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="fotokk">Foto KK</label>
                            <input type="file" class="form-control {{$errors->first('fotokk') ? 'is-invalid' : ''}}" id="fotokk" name="fotokk">
                            <div class="invalid-feedback">
                                {{$errors->first('fotokk')}}
                            </div>
                        </div>

                        {{-- <div class="form-group">
                            <label for="template_permohonan">Template Surat Permohonan</label>
                            <p><a href="{{ asset('storage/template_permohonan.docx') }}" download>Download Template</a></p>
                        </div>

                        <div class="form-group">
                            <label for="permohonan">Unggah Surat Permohonan</label>
                            <input type="file" class="form-control {{$errors->first('permohonan') ? 'is-invalid' : ''}}" id="permohonan" name="permohonan">
                            <div class="invalid-feedback">
                                {{$errors->first('permohonan')}}
                            </div>
                        </div> --}}
                    </div>

                    <div class="form-group">
                        <label for="permohonan">Deskripsi Keperluan</label>
                        <input type="text" name="permohonan" class="form-control {{$errors->first('permohonan') ? 'is-invalid' : ''}}" id="permohonan" value="{{old('permohonan')}}">
                        <div class="invalid-feedback">
                            {{$errors->first('permohonan')}}
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="no_hp">Nomor HP</label>
                        <input type="textarea" name="no_hp" class="form-control {{$errors->first('no_hp') ? 'is-invalid' : ''}}" id="no_hp" value="{{old('no_hp')}}">
                        <div class="invalid-feedback">
                            {{$errors->first('no_hp')}}
                        </div>
                    </div>

                    <div class="text-right"><br>
                        <button class="btn btn-primary solid blank" type="submit">Buat Surat</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection

@push('script')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    function isi_otomatis() {
        var nik = $("#nik").val();
        $.ajax({
            url: '/penduduk/' + nik,
            method: 'GET',
            headers: {
                'X-Requested-With': 'XMLHttpRequest'
            },
            success: function(data) {
                if (data) {
                    $('#no_kk').val(data.no_kk);
                    $('#nama').val(data.nama_lengkap);
                } else {
                    $('#no_kk').val('');
                    $('#nama').val('');
                }
            },
            error: function(xhr, status, error) {
                console.log(error);
            }
        });
    }

    document.getElementById('pilihsurat').addEventListener('change', function() {
        var value = this.value;
        document.getElementById('syaratSKTM').style.display = 'none';
        document.getElementById('syaratSKU').style.display = 'none';

        if (value === 'Surat Keterangan Tidak Mampu') {
            document.getElementById('syaratSKTM').style.display = 'block';
        } else if (value === 'Surat Keterangan Usaha') {
            document.getElementById('syaratSKU').style.display = 'block';
        }
    });
</script>
@endpush
