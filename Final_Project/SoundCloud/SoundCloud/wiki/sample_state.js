{
  entities: {
    users: {
      9: {
        id: 1,
        username: 'Harry Zec',
        comments: [1,2, 3]
      }

      13: {
        id: 3,
        username: 'My Friend',
        comments: [4,5]
      }
    },
    comments: {
      1: {
        id: 1,
        user_id: 9,
        song_id: 1
      }

      2: {
        id:2,
        user_id: 9,
        song_id: 1
      }
      3: {
        id: 3
        user_id: 9,
        song_id: 2
      }

      4: {
        id: 4,
        user_id: 13,
        song_id: 2
      }
      5: {
        id: 5,
        user_id: 13,
        song_id: 1
      }
    songs: {
      1: {
        title: 'Lights Up'
        user_id: '1',
        comments: 'Harry Styles',
        genre: 'rock'
        release_date: 10/11/2019,
        description: 'First Single from Fine Line'
      }
  
      2: {
        title: 'Humble'
        user_id: '2',
        comments: 'Kendrick Lamar',
        genre: 'Hip-Hop'
        likes: 10,
        replays: 4,
        playlist_id: 1,
        release_date: 3/30/2017,
        description: 'Single from Damn'
        }
      }
    },
  }
}