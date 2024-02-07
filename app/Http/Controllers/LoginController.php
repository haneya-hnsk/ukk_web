<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{


    //Fungsi Untuk logiin
    public function authenticate(Request $request){
        $orang = $request->validate([
            'username' => 'required',
            'password' => 'required',
        ]);
        if(Auth::attempt($orang)){
            Log::info('user' . ' ' . $request->username . ' telah login');
            $request->session()->regenerate();

            return redirect()->intended('/');
        }
        
        return redirect()-> back()->with(['error' => 'username atau password salah']);
    }

    //Fungsi untuk logout
    public function logout(Request $request){
        $request->session()->regenerateToken();
        $request->session()->invalidate();

        Log::info('user' . ' ' . $request->username . ' telah logout');


        Auth::logout();

        return redirect('login');
    }


    //fungsi untuk melakukan registrasi
    public function registrasi(Request $request){

        $request->validate([
            'username' => 'required',
            'nama_lengkap' => 'required',
            'email' => 'required',
            'password' => 'required',
            'alamat' => 'required',
        ]);

        User::create([
            'username' => $request->username,
            'nama_lengkap' => $request->nama_lengkap,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'alamat' => $request->alamat,
            'level' => 'member',
        ]);
        Log::info('user' . ' ' . $request->username . ' telah Dibuat');


        return redirect('login');
    }


    //overide kolom yang digunakan sebagai username login
    public function username(){
        return 'username';
    }
}
