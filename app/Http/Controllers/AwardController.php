<?php

namespace App\Http\Controllers;

use App\Models\Award;
use Illuminate\Http\Request;

use function PHPUnit\Framework\isEmpty;

class AwardController extends Controller
{
    public function index(Request $request)
    {
        $awards = Award::when(request()->point_start, function ($return) {
                $return = $return->where('point_needed', '>=',  request()->point_start);
            })
            ->when(request()->point_end, function ($return) {
                $return = $return->where('point_needed', '<=',  request()->point_end);
            })
            ->when(request()->type, function ($return) {
                if (request()->type != 'all') {
                    $return = $return->whereIn('type', explode(',', request()->type));
                }
            })
            ->paginate(5);

        return response()->json([
            'success' => count($awards) > 0 ? true : false,
            'message' => count($awards) > 0 ? 'Success' : 'Award Not Found',
            'data' => $awards,
        ], 200);
    }
}
