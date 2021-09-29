@genType @react.component
let make = (~onClick, ~children: React.element) => {
  <button className="bg-blue-500 text-white py-1 px-4 rounded-md hover:bg-blue-600" onClick>
    children
  </button>
}
