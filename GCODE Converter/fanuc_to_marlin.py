import re

text = "testing..."


rules = [

    (r"o^.*o\d.*\n?", ";deleted o1 line") # delete any line that has o->number in it

    (r"^N\d+ F", "G1"),  # replace index with G1 only when there is an F



    (r"F\s+", "F"),      # Remove space after F

    (r"\(", ";\("),  # comment out brackets


    #### INDIVIDUAL CODE SUBS ####
    (r"G90", "G90"),  # absolute positioning maps over
    (r"G91", "G91"),  # relative positioning maps over
    (r"G64", ""),     # blend mode doesn't exist in marlin?

    (r"M00", "M0")  # stop command is M0 in marlin
    (r"G01", "")  # swtich linear interpolate with blank space since marlin doesnt have it



    (r"", "")


    #### FINAL EDITS ####
    (r"\s+", " "),  # collapse spaces

]

result = re.sub(r'^N\d+', 'G1', text, flags=re.MULTILINE)
