@gentype @react.component
let make = (~from: int, ~to: option<int>=?, ~start: option<bool>=?) => {
  let value =
    from
    ->Belt.Int.toString
    ->Js.String.split(Js.String.replace("", "", ""))
    ->Belt.Array.map(a => <span> {React.string(a)} </span>)

  <span> {React.array(value)} </span>
}
