"use strict";var Core=Core||{};Core.Agent=Core.Agent||{};Core.Agent.Admin=Core.Agent.Admin||{};Core.Agent.Admin.SysConfig=(function(TargetNS){TargetNS.Init=function(){$('#AdminSysConfig h3 input[type="checkbox"]').click(function(){$(this).parent('h3').parent('fieldset').toggleClass('Invalid');});};return TargetNS;}(Core.Agent.Admin.SysConfig||{}));

