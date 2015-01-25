# chapter-marks-conversion
Little tools to convert chapter marks into each other to make tools like Ultraschall, AndroFlubber, Audacity, Auphonic etc work together

## Audacity Labels to .chapter.txt

    ruby ./audacity_label_to_chapter_txt.rb /path/to/audacity_labels.txt > /path/to/new.chapter.txt

## .chapter.txt to Audacity Labels

    ruby ./chapter_text_to_audacity_labels.rb /path/to/chapter.txt > /path/to/new.audacity_label.txt
