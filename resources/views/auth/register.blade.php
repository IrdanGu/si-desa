@extends('layouts.auth.app')

@section('content')
    <div class="brand">
        <img src="{{ asset('storage/gambar/logos.png') }}" alt="logo">
    </div>
    <div class="card fat">
        <div class="card-body">
            <h4 class="card-title">{{ __('Register User') }}</h4>
            <form method="POST" action="{{ route('register.user.submit') }}">
                @csrf

                <div class="form-group">
                    <label for="name">Name</label>
                    <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autofocus>
                    @error('name')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="email">E-Mail Address</label>
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required>
                    @error('email')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required>
                    @error('password')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="password-confirm">Confirm Password</label>
                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                </div>

                <div class="form-group m-0">
                    <button type="submit" class="btn btn-primary btn-block">
                        Register
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
