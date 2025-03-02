<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit Cinema') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">

                    <form action="{{ route('app.cinema.update', $cinema->id) }}" method="post">
                    @csrf
                    @method('patch')

                        <input class="border" name="name" value="{{ old('name', $cinema->name) }}" />
                        <input class="border" name="name" value="{{ old('name') }}" />
                        <br>
                        <select name="id_location">
                            @foreach($location as $l)
                                <option value="$l->id_location">{{$l->location_name}}</option>
                            @endforeach
                        </select>
                        <br/>
                        <select name="cinema_type">
                            @foreach($cinema_type as $ct)
                                <option value="{{$ct->id}}">{{$ct->name}}</option>
                            @endforeach
                        </select>
                        <button>{{ __('Submit') }}</button>
                    </form>

                </div>
            </div>
        </div>
    </div>

</x-app-layout>
