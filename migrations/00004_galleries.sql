-- +goose Up
-- +goose StatementBegin
CREATE TABLE
    galleries (
        id SERIAL PRIMARY KEY,
        user_id INT NOT NULL REFERENCES users (id) ON DELETE CASCADE,
        title TEXT NOT NULL
    );

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
DROP TABLE galleries;

-- +goose StatementEnd