[Index][home] > Database > Mongo

# MongoDB

## Admin Commands

### Login with mongo cli
```bash
mongo -h localhost -u root
```

## Geospatial Data

### Create a table with indexes for geospatial queries
```javascript
use test
db.places.drop()
db.places.createIndex({mapLocation: "2dsphere"})
db.places.save({
  name: 'MyTestPlace', 
  mapLocation: {type: "Point", coordinates: [72.856077, 12.848447]}
})

```

### Query geospatial indexed table for a radius query
* Find within 50kms
```javascript
db.places.find({ 
  mapLocation: { 
    $nearSphere: { 
        $geometry: { type: "Point", coordinates: [ 72.93414657, 12.82302903 ] }, 
        $maxDistance: 50 * 1000 
    }
  }
})
``` 

[home]: /dev-guide