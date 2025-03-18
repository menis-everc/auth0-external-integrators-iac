# Example of usage

Get Auth2 Token
```bash
curl --request POST \
  --url https://everssotest.us.auth0.com/oauth/token \
  --header 'content-type: application/json' \
  --data '{"client_id":"xxxxxx","client_secret":"yyyyyy","audience":"https://api.yourorg.com","grant_type":"client_credentials"}'
```

Response
```bash
{"access_token":"eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlVKellxbWREVVR4TUtTVE5KbjZ5biJ9.eyJpc3MiOiJodHRwczovL2V2ZXJzc290ZXN0LnVzLmF1dGgwLmNvbS8iLCJzdWIiOiJPTHFlR25Xd1lCejNOR1k5c1I2TTRHTHRoaVNyejlRNUBjbGllbnRzIiwiYXVkIjoiaHR0cHM6Ly9hcGkueW91cm9yZy5jb20iLCJpYXQiOjE3NDIyOTMzNjQsImV4cCI6MTc0MjM3OTc2NCwic2NvcGUiOiJyZWFkOmV4dGVybmFsIHdyaXRlOmV4dGVybmFsIGFtczpvcmVuLWFtcyIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyIsImF6cCI6Ik9McWVHbld3WUJ6M05HWTlzUjZNNEdMdGhpU3J6OVE1In0.wBwSXFf59d8gJaHhX_dnclWVrrw0R8y9frCJ1Nu-YWMrQis_RnMMOLstt82_3DEEwJ_D4F0Yqn5WriZHvSN-pDIhqwHcl5JkIqeruhzK3oc1qGUxyHAY5ntdAVmukwEUD1_897wdH6likILDoxrbBNX5il4rULtMH9gF1rvBpsakA3ctIOD5GTMFTbD4LLL6BVWRgN9mq72DcunbkKaUvcZSPzphzj-iEdT0mXd8Iw5gydS0_etmouROdx_a4GnVHo757dr9C6Dqcx5mkoCNmH8uUoYATtZwEmgN9AEa1Xg7OipoPUlnYeASe_o2BXGByQWs3d-YbZfG-7q2HBnaxQ","scope":"read:external write:external ams:oren-ams","expires_in":86400,"token_type":"Bearer"}
```

Decode
```bash
jwt decode eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlVKellxbWREVVR4TUtTVE5KbjZ5biJ9.eyJpc3MiOiJodHRwczovL2V2ZXJzc290ZXN0LnVzLmF1dGgwLmNvbS8iLCJzdWIiOiJPTHFlR25Xd1lCejNOR1k5c1I2TTRHTHRoaVNyejlRNUBjbGllbnRzIiwiYXVkIjoiaHR0cHM6Ly9hcGkueW91cm9yZy5jb20iLCJpYXQiOjE3NDIyOTMzNjQsImV4cCI6MTc0MjM3OTc2NCwic2NvcGUiOiJyZWFkOmV4dGVybmFsIHdyaXRlOmV4dGVybmFsIGFtczpvcmVuLWFtcyIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyIsImF6cCI6Ik9McWVHbld3WUJ6M05HWTlzUjZNNEdMdGhpU3J6OVE1In0.wBwSXFf59d8gJaHhX_dnclWVrrw0R8y9frCJ1Nu-YWMrQis_RnMMOLstt82_3DEEwJ_D4F0Yqn5WriZHvSN-pDIhqwHcl5JkIqeruhzK3oc1qGUxyHAY5ntdAVmukwEUD1_897wdH6likILDoxrbBNX5il4rULtMH9gF1rvBpsakA3ctIOD5GTMFTbD4LLL6BVWRgN9mq72DcunbkKaUvcZSPzphzj-iEdT0mXd8Iw5gydS0_etmouROdx_a4GnVHo757dr9C6Dqcx5mkoCNmH8uUoYATtZwEmgN9AEa1Xg7OipoPUlnYeASe_o2BXGByQWs3d-YbZfG-7q2HBnaxQ

Token header
------------
{
  "typ": "JWT",
  "alg": "RS256",
  "kid": "UJzYqmdDUTxMKSTNJn6yn"
}

Token claims
------------
{
  "aud": "https://api.yourorg.com",
  "azp": "OLqeGnWwYBz3NGY9sR6M4GLthiSrz9Q5",
  "exp": 1742379764,
  "gty": "client-credentials",
  "iat": 1742293364,
  "iss": "https://everssotest.us.auth0.com/",
  "scope": "read:external write:external ams:oren-ams",
  "sub": "OLqeGnWwYBz3NGY9sR6M4GLthiSrz9Q5@clients"
}
```
