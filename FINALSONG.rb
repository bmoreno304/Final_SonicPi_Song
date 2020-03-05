# Welcome to Sonic Pi v3.1
#Song2 samples
d = "C:/Users/brandon_moreno/Downloads/great Darth Vader quote.wav"
e = "C:/Users/brandon_moreno/Downloads/Darth Vader Breathing Sound Effect#2.wav"
q1 = "C:/Users/brandon_moreno/Downloads/quote1.wav"
q2 = "C:/Users/brandon_moreno/Downloads/quote2.wav"
q3 = "C:/Users/brandon_moreno/Downloads/quote3.wav"
song ="C:/Users/brandon_moreno/Downloads/beat3.wav"

#Song1 samples
a = "C:/Users/brandon_moreno/Downloads/This is my voice one week in Mexico.wav"
b = "C:/Users/brandon_moreno/Downloads/Twinkle Twinkle Little Star.wav"
c = "C:/Users/brandon_moreno/Downloads/Itachi Mangekyou Sharingan Sound Effect.wav"
twinkle_notes = [:c4, :g4, :a4, :f4, :e4, :d4]
x = 1

sample a
sleep 14.706938775510205

define :measure1 do
  play twinkle_notes[0]
  sleep 1
  play twinkle_notes[0]
  sleep 1
  play twinkle_notes[1]
  sleep 1
  play twinkle_notes[1]
  sleep 1
end
define :measure2 do
  play twinkle_notes[2]
  sleep 1
  play twinkle_notes[2]
  sleep 1
  play twinkle_notes[1]
  sleep 1.5
end
define :measure3 do
  play twinkle_notes[3]
  sleep 1
  play twinkle_notes[3]
  sleep 1
  play twinkle_notes[4]
  sleep 1
  play twinkle_notes[4]
  sleep 1
end
define :measure4 do
  play twinkle_notes[5]
  sleep 1
  play twinkle_notes[5]
  sleep 1
  play twinkle_notes[0]
  sleep 1.5
end
define :measure5 do
  play twinkle_notes[1]
  sleep 1
  play twinkle_notes[1]
  sleep 1
  play twinkle_notes[3]
  sleep 1
  play twinkle_notes[3]
  sleep 1
end
define :measure6 do
  play twinkle_notes[4]
  sleep 1
  play twinkle_notes[4]
  sleep 1
  play twinkle_notes[5]
  sleep 1.5
end

#Vocal Loop
live_loop:vocal do
  sample b
  sleep 33.6927664399093
  stop
end

#Melody Loop
use_bpm 80.5
live_loop:twinkle do
  use_synth :piano
  
  # measure 1
  measure1
  
  #measure 2
  measure2
  
  #measure 3
  measure3
  
  #measure 4
  measure4
  
  #measure 5
  measure5
  
  #sixth measure
  measure6
  
  #measure 7
  measure5
  
  #measure 8
  measure6
  
  #measure 9
  measure1
  
  #measure 10
  measure2
  
  #measure 11
  measure3
  
  #measure 12
  measure4
  stop
end
sleep 45

#Outro
x = 1
10.times do
  sample c, amp: x
  sleep 2
  x = x - 0.1
end

#Song 2: Star Wars Main Theme Piano Notes
use_bpm 100

#Variables
x = 1
x = 0
i = 0
b = 0
c = 0
s = 4

#Split intro
quote= [q1,q2,q3]

#Arrays
star1_notes = [:g5, :b4, :a4, :g4, :f4, :e4, :d4, :c4]
star_notes = [:a3, :b3, :g3, :a4, :c4, :d4, :e4, :f4, :g4, :c5]
star2_notes =[:g4, :a3, :b4, :a3, :g4, :g3, :g3]

#Paramterized function
define:notes1 do |n1, n2, n3, n4|
  play n1
  sleep 0.5
  play n2
  sleep 0.5
  play n3
  sleep 0.5
  play n4
  sleep 0.5
end

#Function
define:measure5 do
  play:f4
  sleep 0.5
  play:e4
  sleep 0.5
  play:d4
  sleep 0.5
  play:c4
  sleep 0.5
end

#Function
define :measure17 do
  play:a3
  sleep 0.5
  play:a3
  sleep 0.5
  play:f4
  sleep 0.5
  play:e4
  sleep 0.5
  play:d4
  sleep 0.5
  play:c4
  sleep 0.5
end

#Intro
s = 4
3.times do
  sample quote[i], amp: s
  sleep 5.5
  s = s - 1.5
  i=i+1
end

#Background Beat
live_loop:song do
  1.times do
    sample song, amp: 2.5
    sleep 40
  end
  stop
end

#HIGH NOTES ONLY
use_synth :piano
2.times do
  #measure1
  play star_notes[8]
  sleep 0.5
  
  #measure2
  notes1 :f4,:e4,:d4,:c5
  play star_notes[8]
  sleep 0.5
  
  #measure3
  notes1 :f4,:e4,:d4,:c5
  play star_notes[8]
  sleep 0.5
  
  #measure4
  notes1 :f4,:e4,:f4,:d4
end

#measure5
measure5

#measure6
play star_notes[4]
sleep 0.5
play star_notes[5]
sleep 0.5
play star_notes[6]
sleep 0.5
play star_notes[5]
sleep 0.5

#measure7
measure5

#measure8
play star_notes[8]
sleep 0.5
play star_notes[1]
sleep 0.5

#measure9
measure5

#measure10
play:c4
sleep 0.5
play:d4
sleep 0.5
play:e4
sleep 0.5
play:b4
sleep 0.5
play:g4
sleep 0.5
play:g4
sleep 0.5

#measure11
b = 0
8.times do
  play star1_notes[b], amp: 30
  sleep 0.5
  b = b + 1
end

#FULL SONG That Inlcudes High and Low Notes

#measure12
if x = 0
  use_synth :tri
  2.times do
    play star_notes[2]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    
    #measure13
    play star_notes[4]
    sleep 0.5
    play star_notes[8]
    sleep 0.5
    
    #measure14
    notes1 :f4,:e4,:d4,:c5
    play star_notes[1]
    sleep 0.5
    play star_notes[0]
    sleep 0.5
    play star_notes[8]
    sleep 0.5
    play star_notes[1]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    
    #measure15
    notes1 :f4,:e4,:d4,:c5
    play star_notes[1]
    sleep 0.5
    play star_notes[0]
    sleep 0.5
    play star_notes[8]
    sleep 0.5
    play star_notes[1]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    
    #measure16
    notes1 :f4,:e4,:f4,:d4
    play star_notes[1]
    sleep 0.5
    play star_notes[1]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
  end
  
  #measure17
  measure17
  
  #measure18
  play:c4, amp: 30
  sleep 0.5
  play:d4, amp: 30
  sleep 0.5
  play:e4, amp: 30
  sleep 0.5
  play:a3, amp: 30
  sleep 0.5
  play:d4, amp: 30
  sleep 0.5
  play:a3, amp: 30
  sleep 0.5
  play:g3, amp: 30
  sleep 0.5
  play:g3, amp: 30
  sleep 0.5
  
  #measure19
  measure17
  
  #measure20
  c = 0
  7.times do
    play star2_notes[c]
    sleep 0.5
    c = c + 1
  end
  
  #measure21
  measure17
  
  #measure22
  play:c4
  sleep 0.5
  play:a3
  sleep 0.5
  play:d4
  sleep 0.5
  play:e4
  sleep 0.5
  play:b4
  sleep 0.5
  play:b3
  sleep 0.5
  play:g4
  sleep 0.5
  play:g4
  sleep 0.5
  #measure23
  b = 0
  8.times do
    play star1_notes[b], amp: 30
    sleep 0.5
    b = b + 1
  end
end

#Outro/Fadeout
x = 1
10.times do
  sample e, amp: x
  sleep 2
  x = x - 0.1
end