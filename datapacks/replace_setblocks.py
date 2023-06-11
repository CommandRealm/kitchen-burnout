import re
import os

# Code to replace all setblock commands for signs with text pre-Minecraft 1.20 with the new system
# By Calverin

def replace_text(file_path):
    lines = []
    with open(file_path, "r",  encoding="utf8") as f:
        lines = f.readlines()
        for i,line in enumerate(lines):
            t1 = ''
            t2 = ''
            t3 = ''
            t4 = ''
            t1filtered = '\'{"text":""}\''
            t2filtered = '\'{"text":""}\''
            t3filtered = '\'{"text":""}\''
            t4filtered = '\'{"text":""}\''
            g = ''
            gfiltered = 'false'
            c = ''
            cfiltered = '"black"'
            inserted = False

            # Get old Text elements
            # Filter old Text elements for text elements only
            if re.search("Text1:", line):
                t1 = re.findall(r'''Text1:(?=["'])(?:"[^"\\]*(?:\\[\s\S][^"\\]*)*"|'[^'\\]*(?:\\[\s\S][^'\\]*)*')''', line)[0]
                t1filtered = re.findall(r'''(?=["'])(?:"[^"\\]*(?:\\[\s\S][^"\\]*)*"|'[^'\\]*(?:\\[\s\S][^'\\]*)*')''', t1)[0]
                if t1filtered == "\"\"" or t1filtered == "\'\'":
                    t1filtered = '\'{"text":""}\''
            if re.search("Text2:", line):
                t2 = re.findall(r'''Text2:(?=["'])(?:"[^"\\]*(?:\\[\s\S][^"\\]*)*"|'[^'\\]*(?:\\[\s\S][^'\\]*)*')''', line)[0]
                t2filtered = re.findall(r'''(?=["'])(?:"[^"\\]*(?:\\[\s\S][^"\\]*)*"|'[^'\\]*(?:\\[\s\S][^'\\]*)*')''', t2)[0]
                if t2filtered == "\"\"" or t2filtered == "\'\'":
                    t2filtered = '\'{"text":""}\''
            if re.search("Text3:", line):
                t3 = re.findall(r'''Text3:(?=["'])(?:"[^"\\]*(?:\\[\s\S][^"\\]*)*"|'[^'\\]*(?:\\[\s\S][^'\\]*)*')''', line)[0]
                t3filtered = re.findall(r'''(?=["'])(?:"[^"\\]*(?:\\[\s\S][^"\\]*)*"|'[^'\\]*(?:\\[\s\S][^'\\]*)*')''', t3)[0]
                if t3filtered == "\"\"" or t3filtered == "\'\'":
                    t3filtered = '\'{"text":""}\''
            if re.search("Text4:", line):
                t4 = re.findall(r'''Text4:(?=["'])(?:"[^"\\]*(?:\\[\s\S][^"\\]*)*"|'[^'\\]*(?:\\[\s\S][^'\\]*)*')''', line)[0]
                t4filtered = re.findall(r'''(?=["'])(?:"[^"\\]*(?:\\[\s\S][^"\\]*)*"|'[^'\\]*(?:\\[\s\S][^'\\]*)*')''', t4)[0]
                if t4filtered == "\"\"" or t4filtered == "\'\'":
                    t4filtered = '\'{"text":""}\''

            if re.search("GlowingText:", line):
                g = re.findall(r'GlowingText:(?:true|false|1b|0b)', line, re.I)[0]
                gfiltered = re.findall(r'(?:true|false|1b|0b)', g, re.I)[0]
                if gfiltered == '1b':
                    gfiltered = 'true'
                elif gfiltered == '0b':
                    gfiltered = 'false'
            if re.search("Color:", line):
                c = re.findall(r'Color:"(?:white|orange|magenta|light_blue|yellow|lime|pink|gray|light_gray|cyan|purple|blue|brown|green|red|black)"', line, re.I)[0]
                cfiltered = re.findall(r'"(?:white|orange|magenta|light_blue|yellow|lime|pink|gray|light_gray|cyan|purple|blue|brown|green|red|black)"', c, re.I)[0]


            # Compile new text element
            new_text = 'front_text:{messages:[' + t1filtered + ', ' + t2filtered + ', ' + t3filtered + ', '+ t4filtered +'], has_glowing_text: ' + gfiltered + ', color: ' + cfiltered + '}'

            # Replace old text elements with new text element
            if t1 != '':
                if not inserted:
                    line = line.replace(t1, new_text)
                    inserted = True
                else:
                    line = line.replace(t1, "")
            if t2 != '':
                if not inserted:
                    line = line.replace(t2, new_text)
                    inserted = True
                else:
                    line = line.replace(t2, "")
            if t3 != '':
                if not inserted:
                    line = line.replace(t3, new_text)
                    inserted = True
                else:
                    line = line.replace(t3, "")
            if t4 != '':
                if not inserted:
                    line = line.replace(t4, new_text)
                    inserted = True
                else:
                    line = line.replace(t4, "")

            # Replace old glowing text element
            if g != '':
                # If for some reason someone made a sign with no text elements?
                if not inserted:
                    line = line.replace(g, new_text)
                    inserted = True
                else:
                    line = line.replace(g, "")
            
            # Replace old color element
            if c != '':
                # If for some reason someone made a sign with no text elements?
                if not inserted:
                    line = line.replace(c, new_text)
                    inserted = True
                else:
                    line = line.replace(c, "")

            # Fix formatting leftovers
            for l in range(5):
                line = line.replace(',,', ',')
                line = line.replace('{,,', '{')
                line = line.replace('{,', '{')
                line = line.replace(',,}', '}')
                line = line.replace(',}', '}')

            lines[i] = line.encode("utf-8").decode("utf-8")

    with open(file_path, "w",  encoding="utf8") as f:
        #print(lines)
        # Write lines
        f.writelines(lines)

def main():
    # Get all files in all subdirectories of the current directory
    path = os.path.realpath(__file__).replace("replace_setblocks.py", "")
    print(path)
    for subdir, dirs, files in os.walk(os.path.realpath(path)):
        for file in files:
            file_path = os.path.join(subdir, file)
            print(file_path)
            if file.endswith(".mcfunction"):
                replace_text(file_path)
    print("\n\n\nText components replaced!\n\n\n")

if __name__ == "__main__":
    main()