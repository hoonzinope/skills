# Review Checklist

## State Management
- [ ] Using `@Observable` instead of `ObservableObject` for new code
- [ ] `@Observable` classes marked with `@MainActor` (if needed)
- [ ] Using `@State` with `@Observable` classes (not `@StateObject`)
- [ ] `@State` and `@StateObject` properties are `private`
- [ ] Passed values NOT declared as `@State` or `@StateObject`
- [ ] `@Binding` only where child modifies parent state
- [ ] `@Bindable` for injected `@Observable` needing bindings

## Modern APIs
- [ ] Use modern API replacements from `references/modern-apis.md`
- [ ] Use `Button` instead of `onTapGesture()` unless gesture-specific behavior is needed
- [ ] Use `NavigationStack` + type-safe destinations

## View/Performance
- [ ] View body is pure and lightweight
- [ ] Stable IDs in `ForEach` (avoid `.indices`)
- [ ] No inline filtering in list rendering hot paths
- [ ] Avoid excessive `GeometryReader`

## Animation
- [ ] Use `.animation(_:value:)` and `withAnimation` correctly
- [ ] Prefer transform animations over layout-thrashing frame changes

## UX/HIG
- [ ] 44x44pt minimum touch targets
- [ ] Dynamic Type and semantic colors validated
- [ ] Native iOS navigation/sheet gestures preserved
- [ ] Accessibility labels/hints/traits present

Use detailed domain checklists in these files when needed:
- `references/sheet-navigation-patterns.md`
- `references/scroll-patterns.md`
- `references/layout-best-practices.md`
- `references/liquid-glass.md`
