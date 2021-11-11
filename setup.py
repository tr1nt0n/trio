import setuptools


install_requires = [
    "abjad",
    "evans",
    "trinton",
]

keywords = [
    "abjad",
    "music composition",
    "music notation",
    "formalized score control",
    "lilypond",
]

if __name__ == "__main__":
    setuptools.setup(
        author="Trinton Prater",
        author_email="trinton.k.prater@gmail.com",
        install_requires=install_requires,
        keywords=", ".join(keywords),
        name="quartet",
        packages=["quartet"],
        platforms="Any",
        url="https://github.com/trintonprater/quartet.git",
    )
