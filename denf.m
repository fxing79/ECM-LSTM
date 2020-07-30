
%r=flipud([trainingPV,w])

% den2=[flipud(trainingPV),senti,flipud( w(:,2))];
% den3=[flipud(trainingPV),senti,flipud( w(:,3))];
% den4=[flipud(trainingPV),senti,flipud( w(:,4))];
% den5=[flipud(trainingPV),senti,flipud( w(:,5))];
% den1=[flipud(trainingPV),senti,flipud( w(:,1))];


den1=[flipud(trainingPV),senti, flipud(gtq0t180(:,1))];
den2=[flipud(trainingPV),senti, flipud(gtq0t180(:,2))];
den3=[flipud(trainingPV),senti, flipud(gtq0t180(:,3))];
den4=[flipud(trainingPV),senti, flipud(gtq0t180(:,4))];
den5=[flipud(trainingPV),senti, flipud(gtq0t180(:,5))];
[Tresult] = denfis(den1, parameters);
result=Tresult.Out';
[Tresult] = denfis(den2, parameters);
result=[result, Tresult.Out'];
[Tresult] = denfis(den3, parameters);
result=[result, Tresult.Out'];
[Tresult] = denfis(den4, parameters);
result=[result, Tresult.Out'];
[Tresult] = denfis(den5, parameters);
result=[result, Tresult.Out'];

plot(gtqst180(2600:2800,1))
hold on;
plot(Tresult.Out(2600:2800))

b=[flipud(trainingPV),senti,flipud(gtq0t90)]