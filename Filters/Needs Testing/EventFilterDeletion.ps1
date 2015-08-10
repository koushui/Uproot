﻿$props = @{
    'Name' = 'EventFilterCreation';
    'EventNamespace' = 'root/subscription';
    'Query' = "SELECT * FROM __InstanceCreationEvent WITHIN 10 WHERE TargetInstance ISA '__EventFilter'";
    'QueryLanguage' = 'WQL'
}
Add-WMIEventFilter -ComputerName 'localhost' -EventNamespace root\subscription -Name EventFilterDeletion -Query "SELECT * FROM __InstanceDeletionEvent WITHIN 10 WHERE TargetInstance ISA '__EventFilter'"