<?php

namespace App\Http\Controllers;

use App\DataTables\SchoolsDataTable;
use App\DataTables\StudentsDataTable;
use App\Http\Requests\StoreSchoolRequest;
use App\Http\Requests\UpdateSchoolRequest;
use App\Models\School;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Validation\Rule;

class SchoolController extends Controller
{

    public function index(SchoolsDataTable $dataTable)
    {
        return $dataTable->render('schools.index');
    }

    public function ajaxData()
    {
        return Cache::rememberForever('schools', function () {
            return School::all()->pluck('ar_name','he_name');
        });
    }


    public function store(Request $request)
    {
        $request->validate([
            'code' => ['required', 'max:255'],
            'ar_name' => ['required', 'string', 'max:255'],
            'he_name' => ['required', 'string', 'max:255', Rule::unique('schools')],
        ]);

        School::create($request->all());
        session()->flash('message', 'Translation successfully added.');
        Cache::forget('schools');
        return redirect()->route('schools.index');
    }

    public function update(Request $request, School $school)
    {
        $request->validate([
            'code' => ['required', 'max:255'],
            'ar_name' => ['required', 'string', 'max:255'],
            'he_name' => ['required', 'string', 'max:255'],
        ]);

        $school->update($request->all());
        session()->flash('message', 'Translation successfully updated.');
        Cache::forget('schools');
        return redirect()->route('schools.index');
    }


    public function destroy(School $school)
    {
        //
    }
}
