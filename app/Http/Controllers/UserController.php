<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        return view('librarian.user.index', [
            'users' => User::filter($request->text)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('librarian.user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required',
            'nama_lengkap' => 'required',
            'password' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'level' => 'required',
            // 'username' => 'required',
        ]);

        User::create([
            'username' =>$request->username,
            'nama_lengkap' =>$request->nama_lengkap,
            'password' =>bcrypt($request->password),
            'alamat' =>$request->alamat,
            'email' =>$request->email,
            'level' =>$request->level,
        ]);

        return redirect('/librarian/user')->with(['success' => 'User Berhasil Di Tambah']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('librarian.user.edit', [
            'user' => User::where('id', $id)->get()->first()
        ]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::where('id', $id)->get()->first();

        $request->validate([
            'username' => 'required',
            'nama_lengkap' => 'required',
            // 'password' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'level' => 'required',
            // 'username' => 'required',
        ]);

        if($request->password){
            $user->update([

                 'password' =>bcrypt($request->password),
            ]);
        }

      $user->update([
            'username' =>$request->username,
            'nama_lengkap' =>$request->nama_lengkap,
            'alamat' =>$request->alamat,
            'email' =>$request->email,
            'level' =>$request->level,
        ]);

        return redirect('/librarian/user')->with(['success' => 'User Berhasil Di Update']);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::where('id', $id)->get()->first();
        
        $user->delete();

        return redirect('/librarian/user')->with(['success' => 'User Berhasil Di Hapus']);

    }
}
