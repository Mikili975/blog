<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
class RegisterController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->only('create');
        //odradi middleware za registraciju
        //Akcija za kreiranje user-a

        $this->middleware('check.age')->only('store');
        //middleware CheckAge primenjen nas store akciju
    }

    public function create()
    {
        return view('/users/new');
    }
    public function store()
    {
        //validacija
        $this->validate(
            request(),
            [
                'firstName' => 'required',
                'lastName' => 'required',
                'username' => 'required',
                'age' => 'required',
                'email' => 'required|email',
                'password' => 'required|confirmed',
            ]
        );
        // napravi korisnika
        $user = new User();
        $user->name = request('username');
        $user->age = request('age');
        $user->email = request('email');
        $user->password = Hash::make(request('password'));
        $user->save();
        //uloguj korisnika
        if (Auth::attempt(['email' => request('email'), 'password' => request('password')])) {
            // Authentication passed...
            return redirect('/');
        } else {
            return 'greska';
        }
        // redirekcija na home page
    }
}
