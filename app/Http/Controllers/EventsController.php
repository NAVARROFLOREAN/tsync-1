<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Events;
use Exception;

class EventsController extends Controller
{
    public function index()
    {
        $events = Events::all();
        return view('calendar', compact('events'));
    }
    public function create(Request $request)
    {


            $request->validate([
                'event_title' => 'required|string',
                'color' => 'nullable|string',
                'event_date' => 'nullable|date'
            ]);

            $event = new Events();
            $event->event_title = $request->input('event_title');
            $event->color = $request->input('color');
            $event->event_date = $request->input('event_date');
            $event->created_at = now(); // Set created_at timestamp
            $event->updated_at = now(); // Set updated_at timestamp
            $event->save(); 

            return response()->json($event);
        
        }

    public function remove(Request $request)
{
    try {
        $request->validate([
            'event_title' => 'required|string',
        ]);

        $eventTitle = $request->input('event_title');

        // Assuming you are using Eloquent ORM
        $event = Events::where('event_title', $eventTitle)->first();

        if ($event) {
            $event->delete();
            return response()->json(['success' => true]);
        } else {
            return response()->json(['success' => false, 'message' => 'Event not found'], 404);
        }
    } catch (Exception $e) {
        return response()->json(['error' => $e->getMessage()], 500);
    }
}
}