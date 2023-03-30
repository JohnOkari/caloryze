import MealsList from "../../components/meals/MealsList"
import "./home.css"

function Home({user}) {
  return (
    <div className="container">
    <MealsList className="MealsList" user={user} />
  </div>
  )
}

export default Home