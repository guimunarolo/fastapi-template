from http import HTTPStatus


def test_hello_world_response(client):
    response = client.get("/")

    assert response.status_code == HTTPStatus.OK
