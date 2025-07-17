# flutter_docgen

A CLI tool to export Flutter widget trees, generate user manuals, app journey documentation, and draw user flow diagrams in Markdown and Mermaid.

---

## Features

- Parses Flutter widget trees and navigation routes
- Exports structured JSON/YAML of app structure
- Generates user manuals and app journey docs in Markdown
- Creates Mermaid diagrams for navigation flow visualization
- Configurable via `.flutter_docgen.yaml`
- Supports modular CLI commands for each task

---

## Usage

### Export widget tree to JSON

```bash
dart flutter_docgen export --input lib/ --output docs/structure.json
```
