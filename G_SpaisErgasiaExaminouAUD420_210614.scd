play{i=Impulse.ar(_);SinOsc.ar(i.(2).lagud(0,1)*250,Integrator.ar(Integrator.ar(i.(20).lag(LFNoise1.ar(2!2,1,1,1,1,1))*20,0.02),0.20).fold2(pi))}
~synth = {a=LocalIn.ar;LocalOut.ar(Mix.ar(x=SinOsc.ar((Decay.ar(Impulse.ar([1,1.01]),1e3*a.abs)*5), a).distort));x;}.play;
