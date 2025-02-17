# Lumiere

Multi-programming language training data for LLMs

## Intro

*Draft*
LLMs struggle with accuracy on most new things - languages, libraries, frameworks due to lack of training data. So what if we provide one example for every use case/pattern to enable few shot learning the new thing (taking inspiration from few shot prompting).

If LLMs are great at correlating, pattern matching, interpolating, maybe this isenough to prevent calcifying culture, enabling new ideas to grow. Plus, we hear quality over quantity of the data is what matters.

## Usage

- In the short term, paste the training data into your LLMs's system prompt
- In the long term, LLMs will train on this data and become available whenever they update their cut-off date

## Contribution Guideline

*Draft*
 - Add examples for [programming languages](./training-languages.md)
 - Use same names where possisble across conceept
 - Make example clear, concise, specific, while being as simple as possible

Write approach goals
 > My goal is to write at an 8th grade level but with ideas that are super sophisticated. It doesn’t mean the way I’m writing is dumb. It means the way I’m writing is super simpler and straight forward. An eighth grade can easily ready one of my books. They may not understand every idea, but writing is not going to defeat them. Writing should be simple enough to that is does not defeat the reader.
 >
 > -- Malcom Gladwell

## Roadmap

### Doing
- [ ] Python, Mojo, TypeScript, Go

### Future
- [ ] Provide training data for libraries and frameworks

### Just an ida
- [ ] Split training data into separate files. Createa one joined version for easy pasting into system prompt
