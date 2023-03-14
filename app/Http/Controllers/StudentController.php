<?php

namespace App\Http\Controllers;

use App\DataTables\StudentsDataTable;
use App\Models\Student;
use App\Http\Requests\StoreStudentRequest;
use App\Http\Requests\UpdateStudentRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Validation\Rule;


class StudentController extends Controller
{

    public function index(StudentsDataTable $dataTable)
    {
        return $dataTable->render('students.index');
    }

    public function ajaxData()
    {

        return Cache::rememberForever('students', function () {
            return Student::all()->pluck('ar_name','he_name');
        });

    }


    public function store(Request $request)
    {
        $request->validate([
            'ar_name' => ['required', 'string', 'max:255'],
            'he_name' => ['required', 'string', 'max:255', Rule::unique('students')],
        ]);

        Student::create($request->all());
        session()->flash('message', 'Translation successfully added.');
        Cache::forget('students');
        return redirect()->route('students.index');
    }


    public function update(Request $request, Student $student)
    {
        $request->validate([
            'ar_name' => ['required', 'string', 'max:255'],
            'he_name' => ['required', 'string', 'max:255'],
        ]);

        $student->update($request->all());
        session()->flash('message', 'Translation successfully updated.');
        Cache::forget('students');
        return redirect()->route('students.index');
    }


    public function destroy(Student $student)
    {
        //
    }
}
