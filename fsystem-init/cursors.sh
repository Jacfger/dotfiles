#!/usr/bin/fish

mkdir ./bin/extracted_cursors/
for file in bin/cursors/*;
    tar xzf $file -C ./bin/extracted_cursors/
end
sudo mv ./bin/extracted_cursors/* /usr/share/icons/
