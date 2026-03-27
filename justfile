target := "local"
docs := "cv letter"
png_specs := "cv:1 cv:2 letter:1"

default: compile-pdf

# Compile all documents to PDF
compile-pdf:
    @for doc in {{ docs }}; do \
        just compile-pdf-doc "$doc"; \
    done

# Compile specific document to PDF
compile-pdf-doc doc:
    @if [ "{{ target }}" = "published" ]; then \
        just _compile template/{{ doc }}.typ template/{{ doc }}.pdf; \
    else \
        just _compile-local {{ doc }} pdf; \
    fi

# Compile all documents to PNG
compile-png:
    @for spec in {{ png_specs }}; do \
        doc="${spec%%:*}"; \
        page="${spec##*:}"; \
        just compile-png-doc "$doc" "$page"; \
    done

# Compile specific document page to PNG
compile-png-doc doc page="1":
    #!/usr/bin/env bash
    if [ "{{ doc }}" = "letter" ]; then
        output="assets/{{ doc }}.png"
    else
        output="assets/{{ doc }}_p{{ page }}.png"
    fi
    if [ "{{ target }}" = "published" ]; then
        just _compile-png template/{{ doc }}.typ $output {{ page }}
    else
        just _compile-local {{ doc }} png {{ page }} $output
    fi

# Clean generated files
clean:
    @rm -f template/*.tmp.typ template/*.pdf assets/cv_p*.png assets/letter.png

# Format source files
format:
    @files=""; \
    for doc in {{ docs }}; do \
        files="$files template/$doc.typ"; \
    done; \
    typstyle -i lib.typ $files

# Compile with local library (for development)
_compile-local doc format page="" output="":
    #!/usr/bin/env bash
    tmp="template/{{ doc }}.tmp.typ"
    sed 's|#import "@preview/neat-cv:[0-9.]*"|#import "../lib.typ"|' template/{{ doc }}.typ > "$tmp"
    if [ "{{ format }}" = "pdf" ]; then
        just _compile "$tmp" template/{{ doc }}.pdf
    elif [ "{{ format }}" = "png" ]; then
        just _compile-png "$tmp" {{ output }} {{ page }}
    fi
    rm "$tmp"

# Compile to PDF
_compile input output:
    @typst compile --root . {{ input }} {{ output }}

# Compile to PNG
_compile-png input output page:
    @typst compile --root . --format png --pages {{ page }} {{ input }} {{ output }}
    @magick {{ output }} -bordercolor black -border 1 {{ output }}
    @oxipng {{ output }}
