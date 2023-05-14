
lengths = [5, 10 ,20 ,50 ,100];
n=[];
ti = [];
for i =  1: length(lengths)
    time_start = tic();
    curr_len = lengths(i);
    fprintf('matrix dimension is %d' , lengths(i))
    x = rand(curr_len,curr_len)
    det(x)
    if  det(x) ~=0
        inv(x)

    else 
        fprintf('no inverse')
    end
     
    time_stop = 1000000*toc(time_start);
    n= [n;lengths(i)];
    ti = [ti;time_stop];


end
n
ti





lengths = [5, 10 ,20 ,50 ,100];
n1=[];
ti1 = [];
for i =  1: length(lengths)
    time_start = tic();
    curr_len = lengths(i);
    fprintf('matrix dimension is %d' , lengths(i))
    x = rand(curr_len,curr_len)
    %det(x)
    [L,U] =lu(x)
   
     
     time_stop = 1000000*toc(time_start);
     n1= [n1;lengths(i)];
     ti1 = [ti1;time_stop];


end
n1
ti1

publish('Assignment.m','pdf')


