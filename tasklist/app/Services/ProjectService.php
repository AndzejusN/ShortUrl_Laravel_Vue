<?php

namespace App\Services;

use App\Models\Project;
use Illuminate\Database\Eloquent\Collection;

class ProjectService
{
    /**
     * Register any application services.
     *
     * @return Collection
     */

    public function getAll()
    {
        return Project::all();
    }
}
