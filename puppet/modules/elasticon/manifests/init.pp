class elasticon{
  require docker

  docker::image { 'elasticsearch':
    image_tag => 'latest'
  } ->

  docker::run { 'run-elasticsearch':
    image   => 'elasticsearch',
    command => 'docker run -d -p 9200:9200 -p 9300:9300 elasticsearch',
  }

}
