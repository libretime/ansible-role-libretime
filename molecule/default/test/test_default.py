import os
import pytest
from testinfra.utils.ansible_runner import AnsibleRunner

testinfra_hosts = AnsibleRunner(os.environ["MOLECULE_INVENTORY_FILE"]).get_hosts("all")


def test_is_listening_on_required_port(host):
    assert host.socket("tcp://0.0.0.0:8888").is_listening


@pytest.mark.parametrize(
    "service_name",
    [
        "libretime-analyzer",
        "libretime-api",
        "libretime-playout",
        "libretime-liquidsoap",
        "libretime-worker",
    ],
)
def test_services_are_enabled_and_running(host, service_name):
    assert host.service(service_name).is_running
    assert host.service(service_name).is_enabled


def test_config_is_deployed(host):
    config = host.file("/etc/libretime/config.yml")
    assert config.user == "libretime"
    assert config.group == "libretime"
    assert config.mode == 0o640
