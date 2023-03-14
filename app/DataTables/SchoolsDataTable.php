<?php

namespace App\DataTables;

use App\Models\School;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Html\Editor\Editor;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Services\DataTable;

class SchoolsDataTable extends DataTable
{

    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        return (new EloquentDataTable($query))
            ->addColumn('action', function($row) {
                return '<button onclick="editSchool(this,'.$row->id.')" data-he-name="'.$row->he_name.'" data-ar-name="'.$row->ar_name.'" data-code="'.$row->code.'" class="main-btn dark-btn btn-hover btn-sm">Edit</a>';
            })
            ->rawColumns(['action'])
            ->setRowId('id');
    }


    public function query(School $model): QueryBuilder
    {
        return $model->newQuery();
    }


    public function html(): HtmlBuilder
    {
        return $this->builder()
                    ->setTableId('schools-table')
                    ->columns($this->getColumns())
                    ->minifiedAjax()
                    ->dom('frtip')
                    ->orderBy(1);
    }

    /**
     * Get the dataTable columns definition.
     */
    public function getColumns(): array
    {
        return [
            ['name' => 'id', 'title' => 'ID', 'data' => 'id'],
            ['name' => 'code', 'title' => 'Code', 'data' => 'code'],
            ['name' => 'he_name', 'title' => 'Hebrew Name', 'data' => 'he_name'],
            ['name' => 'ar_name', 'title' => 'Arabic Name', 'data' => 'ar_name'],
            ['name' => 'action', 'title' => 'Action', 'data' => 'action'],
        ];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'Schools_' . date('YmdHis');
    }
}
