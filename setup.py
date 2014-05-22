from distutils.core import setup

setup(
    name='pandaspark',
    version='0.0.1',
    author='Holden Karau',
    author_email='holden@pigscanfly.ca',
    packages=['pandaspark', 'pandaspark.test'],
    url='https://github.com/holdenk/PandaSpark',
    license='LICENSE.txt',
    description='Enable Pandas on PySpark',
    long_description=open('README.txt').read(),
    install_requires=[
        # Note: we also need PySpark but that has to be installed manually.
        'pandas >= 0.13',
    ],
)
