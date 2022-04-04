class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'db.puppet.vm':}
}
