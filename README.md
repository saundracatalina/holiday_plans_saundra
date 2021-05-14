# Holiday Plans Project

## Overview  
It's November, and everyone is planning their holiday vacation. But management is struggling! They need a solution to approve vacation requests while also ensuring that there are still enough employees in the office to achieve end-of-year goals.

Your task is to build one HTTP API that allows employees to make vacation requests, and another that provides managers with an overview of all vacation requests and allows them to decline or approve requests.


## README Content
- [Database Schema](#database-schema)
- [API Contract](#api-contract)
- [Testing](#testing-tools-utilized)
- [Notes](#notes)
- [Tasks](#tasks)
- [Evaluation Criteria](#evaluation-criteria)
- [Author](#author)


## Database Schema

<img width="795" alt="Screen Shot 2021-05-14 at 9 02 19 AM" src="https://user-images.githubusercontent.com/68261312/118303028-3281c880-b4a2-11eb-94e9-1546b5e9fa73.png">


## API Contract

![Screen Shot 2021-05-14 at 2 04 49 PM](https://user-images.githubusercontent.com/68261312/118323120-65858580-b4bd-11eb-8ce6-b4321bf50cb2.png)


## Testing Tools Utilized
- RSpec  
- Capybara  
- SimleCov  


## Notes

I hoped to get to more end points and better testing all around. I got stuck initially with my basic model RSpec tests not running and getting long-winded errors that sent me down some rabbit holes for about an hour and a half.

## Tasks

- Implement assignment using:
    - Language: Ruby
    - Framework: Ruby On Rails
- There should be API routes that allow workers to:
    - See their requests
        - Filter by status (approved, pending, rejected)
    - See their number of remaining vacation days
    - Make a new request if they have not exhausted their total limit (30 per year)
- There should be API routes that allow managers to:
    - See an overview of all requests
        - Filter by pending and approved
    - See an overview for each individual employee
    - See an overview of overlapping requests
    - Process an individual request and either approve or reject it
- Write tests for your business logic

Each request should, at minimum, have the following signature:
```
{
  "id": ENTITY_ID,
  "author": WORKER_ID,
  "status": STATUS_OPTION, // may be one of: "approved", "rejected", "pending"
  "resolved_by": MANAGER_ID,
  "request_created_at": "2020-08-09T12:57:13.506Z",
  "vacation_start_date" "2020-08-24T00:00:00.000Z",
  "vacation_end_date" "2020-09-04T00:00:00.000Z",
}
```
You are expected to design any other required models and routes for your API.

## Evaluation Criteria

- Ruby best practices
- Completeness: Did you include all features?
- Correctness: Does the solution perform in a logical way?
- Maintainability: Is the solution written in a clean, maintainable way?
- Testing: Has the solution been adequately tested?
- Documentation: Is the API well-documented?

## Author

- Saundra Catalina | [github](https://github.com/saundracatalina) | [linkedin](https://www.linkedin.com/in/saundra-catalina/)
