CREATE TABLE gists (
   id INT AUTO_INCREMENT PRIMARY KEY,
   uuid CHAR(36) NOT NULL UNIQUE, -- will be used to generate mask and generate the URL https://gist.github.com/<username>/<uuid>
   user_id INT NOT NULL,
   description TEXT,
   filename VARCHAR(255) NOT NULL,
   content TEXT NOT NULL, -- actual content of the gist
   is_private BOOLEAN DEFAULT TRUE, -- is private (secret) or public
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE INDEX idx_user_id ON gists(user_id);
CREATE INDEX idx_uuid ON gists(uuid);
CREATE INDEX idx_created_at ON gists(created_at);
