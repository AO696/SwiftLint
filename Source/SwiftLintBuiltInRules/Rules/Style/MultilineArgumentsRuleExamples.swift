internal struct MultilineArgumentsRuleExamples {
    static let nonTriggeringExamples = [
        Example("foo()"),
        Example("""
        foo(
        )
        """),
        Example("foo { }"),
        Example("""
        foo {

        }
        """),
        Example("foo(0)"),
        Example("foo(0, 1)"),
        Example("foo(0, 1) { }"),
        Example("foo(0, param1: 1)"),
        Example("foo(0, param1: 1) { }"),
        Example("foo(param1: 1)"),
        Example("foo(param1: 1) { }"),
        Example("foo(param1: 1, param2: true) { }"),
        Example("foo(param1: 1, param2: true, param3: [3]) { }"),
        Example("""
        foo(param1: 1, param2: true, param3: [3]) {
            bar()
        }
        """),
        Example("""
        foo(param1: 1,
            param2: true,
            param3: [3])
        """),
        Example("""
        foo(
            param1: 1, param2: true, param3: [3]
        )
        """),
        Example("""
        foo(
            param1: 1,
            param2: true,
            param3: [3]
        )
        """),
        Example(#"""
        Picker(selection: viewStore.binding(\.$someProperty)) {
           ForEach(SomeEnum.allCases, id: \.rawValue) { someCase in
              Text(someCase.rawValue)
                 .tag(someCase)
           }
        } label: {
           EmptyView()
        }
        """#),
        Example("""
        UIView.animate(withDuration: 1,
                       delay: 0) {
            // sample
            print("a")
        } completion: { _ in
            // sample
            print("b")
        }
        """),
        Example("""
        UIView.animate(withDuration: 1, delay: 0) {
            print("a")
        } completion: { _ in
            print("b")
        }
        """),
        Example("""
        f(
            foo: 1,
            bar: false,
        )
        """),
    ]

    static let triggeringExamples = [
        Example("""
        foo(0,
            param1: 1, ↓param2: true, ↓param3: [3])
        """),
        Example("""
        foo(0, ↓param1: 1,
            param2: true, ↓param3: [3])
        """),
        Example("""
        foo(0, ↓param1: 1, ↓param2: true,
            param3: [3])
        """),
        Example("""
        foo(
            0, ↓param1: 1,
            param2: true, ↓param3: [3]
        )
        """),
    ]
}
