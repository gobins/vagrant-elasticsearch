class elasticon{
  require docker

  docker::image { 'elasticsearch':
    image_tag => 'latest'
  } ->

  docker::run { 'run-elasticsearch':
    image   => 'elasticsearch',
    ports   => ['9200:9200', '9300:9300'],
  }

}
