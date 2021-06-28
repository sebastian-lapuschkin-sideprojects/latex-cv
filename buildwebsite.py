import shutil

template = './resources/vcard_template.htm'
vcard = './resources/vcard.svg'
vcard_raw = './resources/vcard_raw.svg'
output = './resources/vcard.htm'

template_str = None
vcard_str = None

shutil.copyfile(vcard_raw, vcard)

with open(template, 'rt') as ft:
    template_str = ft.read()

with open(vcard, 'rt') as fv:
    vcard_str = fv.read()

with open(output, 'wt') as fo:
    output_str = template_str.replace('%svgplaceholder%',vcard_str)
    fo.write(output_str)