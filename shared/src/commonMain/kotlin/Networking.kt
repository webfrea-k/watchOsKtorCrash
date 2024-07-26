import io.ktor.client.HttpClient
import io.ktor.client.call.body
import io.ktor.client.request.get

class Networking {

    suspend fun callNetworkExample(): String? {
        val client = HttpClient()

        return client.get("https://jsonplaceholder.typicode.com/todos/1").body<String?>()
    }
}