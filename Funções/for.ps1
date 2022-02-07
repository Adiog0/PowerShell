    for ($i = 0; $i -le 10; $i++) { 
        Test-Connection 192.168.0.$i -Count 1
    }