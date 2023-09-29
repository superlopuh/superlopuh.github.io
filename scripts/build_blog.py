import markdown, pathlib, os, re

writing_folder = pathlib.Path("../writing")

# Delete html files
for html_file in writing_folder.glob("*.html"):
    os.remove(html_file)

md_files = sorted(writing_folder.glob("*.md"))

# Footer to be appended to each post

footer = """

[Writing](./index.html)

"""

# For each markdown file, get the title, and write the html version to disk

md_titles = []

for md_file in md_files:
    with open(md_file, "r") as f:
        md_string = f.read() + footer

    title = re.search(r"^# (.*)$", md_string, re.MULTILINE).group(1)

    html_file = md_file.with_suffix(".html")
    with open(html_file, "w") as f:
        f.write(markdown.markdown(md_string))

    md_titles.append((title, html_file.relative_to(writing_folder)))

# Generate the index markdown string

articles = "\n\n".join(f"[{title}]({link})" for title, link in md_titles)

index_string = f"""

# [Writing](../index.html)

{articles}

"""

with open(writing_folder / "index.html", "w") as f:
    f.write(markdown.markdown(index_string))

