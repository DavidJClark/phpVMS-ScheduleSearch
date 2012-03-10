<?php
//simpilotgroup addon module for phpVMS virtual airline system
//
//Creative Commons Attribution Non-commercial Share Alike (by-nc-sa)
//To view full license text visit http://creativecommons.org/licenses/by-nc-sa/3.0/
//
//@author David Clark (simpilot)
//@copyright Copyright (c) 2009-2012, David Clark
//@license http://creativecommons.org/licenses/by-nc-sa/3.0/
?>
<h4>Schedule Search</h4>
<form action="<?php echo url('/FrontSchedules');?>" method="post" enctype="multipart/form-data">
    <table width="100%" cellpadding="10px">
        <tr>
            <td>Select An Airline</td>
            <td>
                <select class="search" name="airline">
                    <option value="">All</option>
                    <?php
                        foreach ($airlines as $airline)
                            {echo '<option value="'.$airline->code.'">'.$airline->name.'</option>';}
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td>Select An Aircraft Type</td>
            <td>
                <select class="search" name="aircraft">
                    <option value="">All</option>
                    <?php
                        foreach ($aircrafts as $aircraft)
                            {echo '<option value="'.$aircraft->icao.'">'.$aircraft->icao.'</option>';}
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td>Select A Departure Airfield</td>
            <td>
                <select class="search" name="depicao">
                    <option value="">All</option>
                    <?php
                        foreach ($airports as $airport)
                            {echo '<option value="'.$airport->icao.'">'.$airport->icao.' - '.$airport->name.'</option>';}
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td>Select An Arrival Airfield</td>
            <td>
                <select class="search" name="arricao">
                    <option value="">All</option>
                    <?php
                        foreach ($airports as $airport)
                            {echo '<option value="'.$airport->icao.'">'.$airport->icao.' - '.$airport->name.'</option>';}
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="hidden" name="action" value="findflight" />
                <input type="submit" name="submit" value="Search For A Flight" />
            </td>
        </tr>
    </table>
</form>
<br />
<a href="<?php echo url('Schedules'); ?>">View All Today's Flights</a>