function [segment, pole]=fence(lng,seg)
    segment=ceil(lng/seg);
    pole=segment+1;
end