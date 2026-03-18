from tools.schema_migrate import migrate

def test_migration():
    data = {"entropy_depth": 5}
    out = migrate(data)
    assert "version" in out
