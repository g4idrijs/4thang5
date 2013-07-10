function displayBmodeChannel(frame,dynamicRange,no_samples)

    array_coordinate = 1:128; 
    max_distance = no_samples * 1500 /40e3;
    distance = 0 : max_distance;
    bf_image1 = abs(hilbert(frame));                  % Envelope detection
    bf_image1 = bf_image1 / max(max(bf_image1));
    imagesc(array_coordinate,distance,20*log10(bf_image1 + 0.001),[-dynamicRange 0]);
    xlabel('Lateral position (mm)');
    ylabel('Axial position (mm)')
    colormap gray;
    colorbar 
    drawnow
end