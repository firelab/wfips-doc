
Introduction to WFIPS
=====================

This is a simple use case for the current version of WFIPS.  Keep in mind that
the user interface is likely to change, so this document will likely change or
become obsolete.

Basic Steps
-----------

0. Identify simulation/analysis area.
0. Set up large fire simulations.
0. Set the fuel treatment level
0. Select/edit resource configuration.
0. Run the simulation on a number of years.
0. View the results

Detailed Steps
--------------

### Identify simulation/analysis area

Identifying the simulation area can be done in one of three ways:

0. The entire Western US
0. An administrative boundary
0. An arbitrary area delimited by a user-defined box

The first option requires no interaction with the map.  The second two require
selection of a map tool.  To select a feature, use the *Select Feature tool*
![Select Feature Tool](mActionSelect.png), to select an arbitrary rectangle,
use the *Select Rectangle Tool*![Select Rectangle
Tool](mActionSelectRectangle.png).  Then either select a feature from the
currently displayed layer, or draw the desired rectangle.

### Set up large fire simulations

The large fire simulation allows you to specify which escapes are sent to the
simulation.  You may choose the escape type, minimum size, and the probability
that an escape that meets that criteria gets assigned a large fire.

#### Escape definitions

* No Resources Sent

    Resources were not available to be dispatched.  The fire had no IA.

* Time Limit Exceeded

    Resources were unable to extinguish the fire within the allotted time
    limit.

* Size Limit Exceeded

    Resources were unable to extinguish the fire before it reached the
    specified size limit for the FWA.

* Resources Exhausted

    Resources were unable to extinguish the fire before they reached a
    work/rest limit.

The minimum size allows you to set a limit on the size of the fire when it
escaped.  For example, if a fire had a result of **No Resources Sent** and the
size was below 10 acres, it may be an inconsequential fire.  If that is the
case, it should be omitted from the large fire simulation.

These limits are in place to help govern the actual large fire results.  If
shoulder season escapes or very small fires are counted the output for the
large fire stuff can be bloated.

### Set the fuel treatment level

The user may allow a percentage of the ignitions to have fire behavior
characteristics of treated fuels.  This is accomplished by having two sets of
fire behavior data for each ignition point.  A random draw is generated, and if
it is under the specified probability, it is assigned the treated
characteristics.

In future versions, a treatment mask may be provided, as well as a probability
(or the probability may be an attribute from the mask).

These situations may or may not be automatically adjusted for a uniform,
increasing treatment level (e.g., treat 10% randomly, then 10% more for 20%
total, etc.).  This can be set using the *Automatic Reduction* settings.

### Select/edit resource configuration

Currently there are two ways to edit the resource configuration:

* Random reduction limited by resource type and resource agency.

* Usage based reduction.  Resources used relatively little will be removed
  based on usage from some base case.

These situations may or may not be automatically adjusted for a uniform,
increasing reduction (e.g., remove 10% randomly, then 10% more for 20% total,
etc.).  This can be set using the *Automatic Reduction* settings.

### Run the simulation on a number of years

Select the desired number of years to run the simulation.  While investigating,
you may run on a handful of years and view the results before running the
simulation on the entire FIG.  Simulations using the entire FIG should be
considered the canonical run.  It incorporates variablility in weather and
ignitions.

### View the results

Load the results via the results tab.

