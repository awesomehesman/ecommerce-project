# Product Publication State

```mermaid
stateDiagram-v2
    [*] --> Draft
    Draft --> Published: Publish after validation
    Published --> Draft: Unpublish
    Draft --> Archived: Archive
    Published --> Archived: Archive
    Archived --> Draft: Restore
```
