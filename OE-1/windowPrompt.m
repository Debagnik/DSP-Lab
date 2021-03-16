function [abc, winName] = windowPrompt(a,n)
    switch a
        case 1
            abc = barthannwin(n+1)
        case 2
            abc = bartlett(n+1)
        case 3
            abc = blackmanharris(n+1)
        case 4
            abc = blackman(n+1)
        case 5
            abc = bohmanwin(n+1)
        case 6
            abc = chebwin(n+1)
        case 7
            abc = flattopwin(n+1)
        case 8
            abc = gausswin(n+1)
        case 9
            abc = hamming(n+1)
        case 10
            abc = hann(n+1)
        case 11
            abc = kaiser(n+1)
        case 12
            abc = nuttallwin(n+1)
        case 13
            abc = parzenwin(n+1)
        case 14
            abc = rectwin(n+1)
        case 15
            abc = tukeywin(n+1)
        case 16
            abc = triang(n+1)
    end
    
   win = ["barthannwin", "bartlett", "blackmanharris" "blackman" "bohmanwin" "chebwin" "flattopwin" "gausswin" "hamming" "hann" "kaiser" "nuttallwin" "parzenwin" "rectwin" "tukeywin" "triang"] 
   winName = win(a) 
    
end