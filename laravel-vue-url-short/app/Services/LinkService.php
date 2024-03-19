<?php

namespace App\Services;

use App\Models\Link;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class LinkService
{
    public function store($data): string
    {
        // Check if a record with the same long link exists
        $existingLink = Link::where('long_link', $data['long_link'])->first();

        // If an existing link is found, return its short link
        if ($existingLink) {
            return $existingLink->short_link;
        }

        // If not, generate a new short link
        $parsedUrl = parse_url($data['long_link']);
        $shortPart = $parsedUrl['scheme'] . '://' . $parsedUrl['host'] . '/';
        $data['short_link'] = $shortPart . Str::random(6);

        // Save the new link to the database
        Link::create($data);

        // Return the newly created short link
        return $data['short_link'];
    }

    public function get(string $shortLink): array
    {
        // Check if a record with the same short link exists
        $existingLink = Link::where('short_link', $shortLink)->first();

        // If an existing link is found, return its short link
        if ($existingLink) {
            $data['long_link'] = $existingLink->long_link;
        }

        // If not, message
        $data['reply'] = 'Link not found, please first create it';

        // Return the newly created short link
        return $data;
    }
}