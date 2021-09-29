@genType @react.component
let make = () => {
  let (counter, setCounter) = React.useState(_ => 0)
  let onClick = _ => setCounter(_ => counter + 1)
  let amount = React.useMemo(_ =>
    switch counter {
    | 0 => "None"
    | 1 => "One time"
    | 10 => "Wow!! TEN TIMES!!"
    | n => Belt.Int.toString(n) ++ " times"
    }
  )

  <div className="h-screen flex flex-col items-center justify-center">
    <h3> {React.string(amount)} </h3>
    <h2> {React.string("Some realy big large text that goes for a lot of lines")} </h2>
    <Button onClick> {React.string("add")} </Button>
  </div>
}
