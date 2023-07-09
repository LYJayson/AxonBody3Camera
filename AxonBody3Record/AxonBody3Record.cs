using CitizenFX.Core;
using System;
using System.Collections.Generic;
using static CitizenFX.Core.Native.API;

namespace AxonBody3Record
{
    public class AxonBody3Record : BaseScript
    {

        public AxonBody3Record()
        {
            RegisterCommand("recStart", new Action(recStart), false);
            RegisterCommand("recStop", new Action(recStop), false);
        }

        private void recStart()
        {
            FFmpeg.Start("H:\\testRec.mp4");

            TriggerEvent("chat:addMessage", new
            {
                color = new[] { 255, 0, 0 },
                args = new[] { "[Rec]", "start" }
            });
        }
        
        private void recStop()
        {
            FFmpeg.Stop();

            TriggerEvent("chat:addMessage", new
            {
                color = new[] { 255, 0, 0 },
                args = new[] { "[Rec]", "stop" }
            });
        }
    }
}
