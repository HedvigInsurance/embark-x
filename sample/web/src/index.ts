import * as shared from "@hedviginsurance/shared"
import getStagingValues = shared.com.hedvig.embarkx.store.getStagingValues;
import EmbarkStore = shared.com.hedvig.embarkx.store.EmbarkStore;
import Greeting = shared.com.hedvig.embarkx.Greeting;

const greeting = new Greeting().greeting()
console.log(greeting)

const store = new EmbarkStore()

const stagingValues1 = getStagingValues(store)
console.log(stagingValues1) // Prints: {}
store.put("name", "Stelios")
store.put("age", "30")
const stagingValues2 = getStagingValues(store)
console.log(stagingValues2) // Prints: { name: 'Stelios', age: '30' }
console.log(stagingValues2["name"]) // Prints: Stelios
console.log(stagingValues2["random"]) // Prints: undefined
