local synth = {
  frequency = 440, 
  amplitude = 0.2
}

local function set_frequency(synth, frequency)
  synth.frequency = frequency
end

local frequency = 440
local amplitude = 0.2
local duration = 2.0

frequency = frequency * 2 
print(frequency)


local scale = {
  440,
  494,
  523,
  587,
  659,
  698,
  784
}

print(scale[1])
print(scale[2])

for i, frequency in ipairs(scale) do
  print(i, frequency)
end

for _, frequency in ipairs(scale) do
  print("Playing: ", frequency)
end


local notes = {
  {
    name = "C",
    frequency = 261.63
  },
  {
    name = "E",
    frequency = 329.63
  },
  {
    name = "G",
    frequency = 392.00
  }
}

for _, note in ipairs(notes) do
  print(note.name, note.frequency)
end

local function midi_to_frequency(midi)
  return 440 * 2 ^ ((midi - 69) / 12)
end

print(midi_to_frequency(69))


for _, midi in ipairs(scale) do
  local frequency = midi_to_frequency(midi)
  print(frequency)
end

os.execute("sleep 1")

local function play_note(frequency)
  print("Playing: ", frequency)
end

local function play_scale(scale, callback)
  for _, midi in ipairs(scale) do 
  local frequency = midi_to_frequency(midi)
  callback(frequency)
  end
end

play_scale(scale, play_note)

play_scale(scale, function(frequency)
  print("NOTE: ", frequency)
end)

os_note(function(note) 
  print("Received:", note)
end)
