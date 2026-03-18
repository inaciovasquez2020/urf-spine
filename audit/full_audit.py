import subprocess

subprocess.run(["python3","tools/extract_invariants.py"])
subprocess.run(["python3","tools/verify_signature.py"])
subprocess.run(["python3","tools/validate_cross.py"])
subprocess.run(["python3","tools/hash_chain.py"])
print("AUDIT COMPLETE")
