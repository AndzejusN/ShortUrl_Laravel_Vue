<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreLinksPostRequest;
use Illuminate\View\View;
use App\Services\LinkService;
use Illuminate\Http\Request;

class LinkController extends Controller
{
    protected LinkService $linkService;

    public function __construct(LinkService $linkService)
    {
        $this->linkService = $linkService;
    }

    public function index(): View
    {
        return view('index');
    }

    public function store(StoreLinksPostRequest $request)
    {
        $shortLink = $this->linkService->store($request->validated());

        return response()->json(['short_link' => $shortLink]);
    }

    public function redirect(Request $request)
    {
        $shortLink = $request->input('short_link');
        $longLink = $this->linkService->get($shortLink);
    
        if (isset($longLink['long_link'])) {
            return response()->json(['long_link' => $longLink['long_link']]);
        } else {
            return response()->json(['reply' => 'Link not found, please first create it']);
        }
    }
}
