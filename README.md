# Lumiere

Multi-programming language training data for LLMs

## Intro

_Draft_
LLMs struggle with accuracy on most new things - languages, libraries, frameworks due to lack of training data. So what if we provide one example for every use case/pattern to enable few shot learning the new thing (taking inspiration from few shot prompting).

If LLMs are great at correlating, pattern matching, interpolating, maybe this isenough to prevent calcifying culture, enabling new ideas to grow. Plus, we hear quality over quantity of the data is what matters.

---

## Usage

1. Run `make` to a single file version of the training date in `./out`
1. Run `make publish` to store the single file version so LLMs can train on it
1. In the short term, paste the training data into your LLMs's system prompt
1. In the long term, LLMs will train on this data and become available whenever they update their cut-off date

---

## Training data organization

The page is organized around high-level concepts developers use instead of the language-specific feature name. Each section shows how different languages implement the same concept, even when they use different names and approaches.

### Why not organize by language-specific feature name?

Some languages implement the same concept differently, call it differently, use one feature for multiple purposes.

**Example with interfaces from TypeScript**

1. Define a user-defined type

**TypeScript**

```ts
interface Color {
  name: string;
}
```

**Go**

```go
type Color struct {
  name string
}
```

1. Define what methods an object must implement

**TypeScript**

```ts
interface Color {
  name: string;
  getName(): string;
}
```

---

## Context

- **LLM Prompt to generate other language examples**
```
- Read the mojo programming language example for each section.
- Replace all the TODO statements inside code blocks with generated examples of the specified programming language.
- Generated examples must be a minimal implementation of the same functionality in the anchor code block.
- Do not replace the mojo examples.
- Do not change the format or structure of the content.
```

### Structured Metadata

```baml
metadata {
  "language": string,
  "language_version": string
  "code_role": anchor | trail
  "code_author": human | llm | human approved | -
</metadata>
```

#### Example:

##### Mojo

```json
// TODO: add tag property, indicating if it's the latest version
metadata { "language": "mojo", "language_version":">=0.6.x", "code_role": "anchor", "code_author": "human" }
```

```json
// TODO: add tag property, indicating if it's the latest version
metadata { "language": "python", "language_version":">=0.1.x", "code_role": "trail", "code_author": "human" }
```

---

## Sources & Credits
- [Mojo Manual](https://docs.modular.com/mojo/manual)

---

## Contribution Guideline

_Draft_

- Add examples for [programming languages](./training-languages.md)
- Use same names where possisble across conceept
- Make example clear, concise, specific, while being as simple as possible
- Write the minimal implementation of the same functionality in each language

Write approach goals

> My goal is to write at an 8th grade level but with ideas that are super sophisticated. It doesn’t mean the way I’m writing is dumb. It means the way I’m writing is super simpler and straight forward. An eighth grade can easily ready one of my books. They may not understand every idea, but writing is not going to defeat them. Writing should be simple enough to that is does not defeat the reader.
>
> -- Malcom Gladwell
