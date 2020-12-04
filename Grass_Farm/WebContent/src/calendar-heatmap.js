/**
 * 
 */
'use strict';

/* globals d3 */

var calendarHeatmap = {
  settings: {
    gutter: 5,
    item_gutter: 1,
    width: 1000,
    height: 200,
    item_size: 10,
    label_padding: 40,
    max_block_height: 20,
    transition_duration: 500,
    tooltip_width: 250,
    tooltip_padding: 15,
  },


  /**
   * Initialize
   */
  init: function(data, container, color, overview, handler) {
    // Set calendar data
    calendarHeatmap.data = data;

    // Set calendar container
    calendarHeatmap.container = container;

    // Set calendar color
    calendarHeatmap.color = color || '#ff4500';

    // Initialize current overview type and history
    calendarHeatmap.overview = overview || 'global';
    calendarHeatmap.history = ['global'];
    calendarHeatmap.selected = {};

    // Set handler function
    calendarHeatmap.handler = handler;

    // No transition to start with
    calendarHeatmap.in_transition = false;

    // Create html elementsfor the calendar
    calendarHeatmap.createElements();

    // Parse data for summary details
    calendarHeatmap.parseData();

    // Draw the chart
    calendarHeatmap.drawChart();
  },


  /**
   * Create html elements for the calendar
   */
  createElements: function() {
    if (calendarHeatmap.container != null) {
      // Access container for calendar
      var container = document.getElementById(calendarHeatmap.container);
      if (!container || container.tagName != "DIV") {
        throw 'Element not found or not of type div';
      }
      if (!container.classList.contains('calendar-heatmap')) {
        //If the element being passed doesn't have the right class set then set it.
        container.classList.add('calendar-heatmap');
      }
    } else {
      // Create main html container for the calendar
      var container = document.createElement('div');
      container.className = 'calendar-heatmap';
      document.body.appendChild(container);
    }

    // Create svg element
    var svg = d3.select(container).append('svg')
      .attr('class', 'svg');

    // Create other svg elements
    calendarHeatmap.items = svg.append('g');
    calendarHeatmap.labels = svg.append('g');
    calendarHeatmap.buttons = svg.append('g');

    // Add tooltip to the same element as main svg
    calendarHeatmap.tooltip = d3.select(container).append('div')
      .attr('class', 'heatmap-tooltip')
      .style('opacity', 0);

    // Calculate dimensions based on available width
    var calcDimensions = function() {

      var dayIndex = Math.round((moment() - moment().subtract(1, 'year').startOf('week')) / 86400000);
      var colIndex = Math.trunc(dayIndex / 7);
      var numWeeks = colIndex + 1;

      calendarHeatmap.settings.width = container.offsetWidth < 1000 ? 1000 : container.offsetWidth;
      calendarHeatmap.settings.item_size = ((calendarHeatmap.settings.width - calendarHeatmap.settings.label_padding) / numWeeks - calendarHeatmap.settings.gutter);
      calendarHeatmap.settings.height = calendarHeatmap.settings.label_padding + 7 * (calendarHeatmap.settings.item_size + calendarHeatmap.settings.gutter);
      svg.attr('width', calendarHeatmap.settings.width)
        .attr('height', calendarHeatmap.settings.height);

      if (!!calendarHeatmap.data && !!calendarHeatmap.data[0].summary) {
        calendarHeatmap.drawChart();
      }
    };
    calcDimensions();

    window.onresize = function(event) {
      calcDimensions();
    };
  },


  /**
   * Parse data for summary in case it was not provided
   */
  parseData: function() {
    if (!calendarHeatmap.data) { return; }

    // Get daily summary if that was not provided
    if (!calendarHeatmap.data[0].summary) {
      calendarHeatmap.data.map(function(d) {
        var summary = d.details.reduce(function(uniques, project) {
          if (!uniques[project.name]) {
            uniques[project.name] = {
              'value': project.value
            };
          } else {
            uniques[project.name].value += project.value;
          }
          return uniques;
        }, {});
        var unsorted_summary = Object.keys(summary).map(function(key) {
          return {
            'name': key,
            'value': summary[key].value
          };
        });
        d.summary = unsorted_summary.sort(function(a, b) {
          return b.value - a.value;
        });
        return d;
      });
    }
  },


  /**
   * Draw the chart based on the current overview type
   */
  drawChart: function() {
    if (calendarHeatmap.overview === 'global') {
      calendarHeatmap.drawGlobalOverview();
    } else if (calendarHeatmap.overview === 'year') {
      calendarHeatmap.drawYearOverview();
    } else if (calendarHeatmap.overview === 'month') {
      calendarHeatmap.drawMonthOverview();
    } else if (calendarHeatmap.overview === 'week') {
      calendarHeatmap.drawWeekOverview();
    } else if (calendarHeatmap.overview === 'day') {
      calendarHeatmap.drawDayOverview();
    }
  },


  /**
   * Draw global overview (multiple years)
   */
  drawGlobalOverview: function() {

    // Add current overview to the history
    if (calendarHeatmap.history[calendarHeatmap.history.length - 1] !== calendarHeatmap.overview) {
      calendarHeatmap.history.push(calendarHeatmap.overview);
    }

    // Define start and end of the dataset
    var start = moment(calendarHeatmap.data[0].date).startOf('year');
    var end = moment(calendarHeatmap.data[calendarHeatmap.data.length - 1].date).endOf('year');

    // Define array of years and total values
    var year_data = d3.timeYears(start, end).map(function(d) {
      var date = moment(d);
      return {
        'date': date,
        'total': calendarHeatmap.data.reduce(function(prev, current) {
          if (moment(current.date).year() === date.year()) {
            prev += current.total;
          }
          return prev;
        }, 0),
        'summary': function() {
          var summary = calendarHeatmap.data.reduce(function(summary, d) {
            if (moment(d.date).year() === date.year()) {
              for (var i = 0; i < d.summary.length; i++) {
                if (!summary[d.summary[i].name]) {
                  summary[d.summary[i].name] = {
                    'value': d.summary[i].value,
                  };
                } else {
                  summary[d.summary[i].name].value += d.summary[i].value;
                }
              }
            }
            return summary;
          }, {});
          var unsorted_summary = Object.keys(summary).map(function(key) {
            return {
              'name': key,
              'value': summary[key].value
            };
          });
          return unsorted_summary.sort(function(a, b) {
            return b.value - a.value;
          });
        }(),
      };
    });

    // Calculate max value of all the years in the dataset
    var max_value = d3.max(year_data, function(d) {
      return d.total;
    });

    // Define year labels and axis
    var year_labels = d3.timeYears(start, end).map(function(d) {
      return moment(d);
    });
    var yearScale = d3.scaleBand()
      .rangeRound([0, calendarHeatmap.settings.width])
      .padding([0.05])
      .domain(year_labels.map(function(d) {
        return d.year();
      }));

    // Add global data items to the overview
    calendarHeatmap.items.selectAll('.item-block-year').remove();
    var item_block = calendarHeatmap.items.selectAll('.item-block-year')
      .data(year_data)
      .enter()
      .append('rect')
      .attr('class', 'item item-block-year')
      .attr('width', function() {
        return (calendarHeatmap.settings.width - calendarHeatmap.settings.label_padding) / year_labels.length - calendarHeatmap.settings.gutter * 5;
      })
      .attr('height', function() {
        return calendarHeatmap.settings.height - calendarHeatmap.settings.label_padding;
      })
      .attr('transform', function(d) {
        return 'translate(' + yearScale(d.date.year()) + ',' + calendarHeatmap.settings.tooltip_padding * 2 + ')';
      })
      .attr('fill', function(d) {
        var color = d3.scaleLinear()
          .range(['#ffffff', calendarHeatmap.color || '#ff4500'])
          .domain([-0.15 * max_value, max_value]);
        return color(d.total) || '#ff4500';
      })
      .on('click', function(d) {
        if (calendarHeatmap.in_transition) { return; }

        // Set in_transition flag
        calendarHeatmap.in_transition = true;

        // Set selected date to the one clicked on
        calendarHeatmap.selected = d;

        // Hide tooltip
        calendarHeatmap.hideTooltip();

        // Remove all global overview related items and labels
        calendarHeatmap.removeGlobalOverview();

        // Redraw the chart
        calendarHeatmap.overview = 'year';
        calendarHeatmap.drawChart();
      })
      .style('opacity', 0)
      .on('mouseover', function(d) {
        if (calendarHeatmap.in_transition) { return; }

        // Show tooltip
        calendarHeatmap.tooltip.html(tooltip_html)
          .style('left', x + 'px')
          .style('top', y + 'px')
          .transition()
          .duration(calendarHeatmap.settings.transition_duration / 2)
          .ease(d3.easeLinear)
          .style('opacity', 1);
      })
  
      .transition()
      .delay(function(d, i) {
        return calendarHeatmap.settings.transition_duration * (i + 1) / 10;
      })
      .duration(function() {
        return calendarHeatmap.settings.transition_duration;
      })
      .ease(d3.easeLinear)
      .style('opacity', 1)
      .call(function(transition, callback) {
        if (transition.empty()) {
          callback();
        }
        var n = 0;
        transition
          .each(function() {++n; })
          .on('end', function() {
            if (!--n) {
              callback.apply(this, arguments);
            }
          });
      }, function() {
        calendarHeatmap.in_transition = false;
      });

    // Add year labels
    calendarHeatmap.labels.selectAll('.label-year').remove();
    calendarHeatmap.labels.selectAll('.label-year')
      .data(year_labels)
      .enter()
      .append('text')
      .attr('class', 'label label-year')
      .attr('font-size', function() {
        return Math.floor(calendarHeatmap.settings.label_padding / 3) + 'px';
      })
      .text(function(d) {
        return d.year();
      })
      .attr('x', function(d) {
        return yearScale(d.year());
      })
      .attr('y', calendarHeatmap.settings.label_padding / 2)
      .on('mouseenter', function(year_label) {
        if (calendarHeatmap.in_transition) { return; }

        calendarHeatmap.items.selectAll('.item-block-year')
          .transition()
          .duration(calendarHeatmap.settings.transition_duration)
          .ease(d3.easeLinear)
          .style('opacity', function(d) {
            return (moment(d.date).year() === year_label.year()) ? 1 : 0.1;
          });
      })
      .on('mouseout', function() {
        if (calendarHeatmap.in_transition) { return; }

        calendarHeatmap.items.selectAll('.item-block-year')
          .transition()
          .duration(calendarHeatmap.settings.transition_duration)
          .ease(d3.easeLinear)
          .style('opacity', 1);
      })
      .on('click', function(d) {
        if (calendarHeatmap.in_transition) { return; }

        // Set in_transition flag
        calendarHeatmap.in_transition = true;

        // Set selected year to the one clicked on
        calendarHeatmap.selected = { date: d };

        // Hide tooltip
        calendarHeatmap.hideTooltip();

        // Remove all global overview related items and labels
        calendarHeatmap.removeGlobalOverview();

        // Redraw the chart
        calendarHeatmap.overview = 'year';
        calendarHeatmap.drawChart();
      });
  },


  /**
   * Draw year overview
   */
  drawYearOverview: function() {
    // Add current overview to the history
    if (calendarHeatmap.history[calendarHeatmap.history.length - 1] !== calendarHeatmap.overview) {
      calendarHeatmap.history.push(calendarHeatmap.overview);
    }

    // Define start and end date of the selected year
    var start_of_year = moment(calendarHeatmap.selected.date).startOf('year');
    var end_of_year = moment(calendarHeatmap.selected.date).endOf('year');

    // Filter data down to the selected year
    var year_data = calendarHeatmap.data.filter(function(d) {
      return start_of_year <= moment(d.date) && moment(d.date) < end_of_year;
    });

    // Calculate max value of the year data
    var max_value = d3.max(year_data, function(d) {
      return d.total;
    });

    var color = d3.scaleLinear()
      .range(['#ffffff', calendarHeatmap.color || '#ff4500'])
      .domain([-0.15 * max_value, max_value]);

    var calcItemX = function(d) {
      var date = moment(d.date);
      var dayIndex = Math.round((date - moment(start_of_year).startOf('week')) / 86400000);
      var colIndex = Math.trunc(dayIndex / 7);
      return colIndex * (calendarHeatmap.settings.item_size + calendarHeatmap.settings.gutter) + calendarHeatmap.settings.label_padding;
    };
    var calcItemY = function(d) {
      return calendarHeatmap.settings.label_padding + moment(d.date).weekday() * (calendarHeatmap.settings.item_size + calendarHeatmap.settings.gutter);
    };
    var calcItemSize = function(d) {
      if (max_value <= 0) { return calendarHeatmap.settings.item_size; }
      return calendarHeatmap.settings.item_size * 0.75 + (calendarHeatmap.settings.item_size * d.total / max_value) * 0.25;
    };

    calendarHeatmap.items.selectAll('.item-circle').remove();
    calendarHeatmap.items.selectAll('.item-circle')
      .data(year_data)
      .enter()
      .append('rect')
      .attr('class', 'item item-circle')
      .style('opacity', 0)
      .attr('x', function(d) {
        return calcItemX(d) + (calendarHeatmap.settings.item_size - calcItemSize(d)) / 2;
      })
      .attr('y', function(d) {
        return calcItemY(d) + (calendarHeatmap.settings.item_size - calcItemSize(d)) / 2;
      })
      .attr('rx', function(d) {
        return calcItemSize(d);
      })
      .attr('ry', function(d) {
        return calcItemSize(d);
      })
      .attr('width', function(d) {
        return calcItemSize(d);
      })
      .attr('height', function(d) {
        return calcItemSize(d);
      })
      .attr('fill', function(d) {
        return (d.total > 0) ? color(d.total) : 'transparent';
      })
      .on('click', function(d) {
        if (calendarHeatmap.in_transition) { return; }

        // Don't transition if there is no data to show
        if (d.total === 0) { return; }

        calendarHeatmap.in_transition = true;

        // Set selected date to the one clicked on
        calendarHeatmap.selected = d;

        // Hide tooltip
        calendarHeatmap.hideTooltip();

        // Remove all year overview related items and labels
        calendarHeatmap.removeYearOverview();

        // Redraw the chart
        calendarHeatmap.overview = 'day';
        calendarHeatmap.drawChart();
      })
      .on('mouseover', function(d) {
        if (calendarHeatmap.in_transition) { return; }

        // Add summary to the tooltip
        for (var i = 0; i < d.summary.length; i++) {
          tooltip_html += '<div><span><strong>' + d.summary[i].name + '</strong></span>';
          tooltip_html += '<span>' + calendarHeatmap.formatTime(d.summary[i].value) + '</span></div>';
        };

        // Calculate tooltip position
        var x = calcItemX(d) + calendarHeatmap.settings.item_size;
        if (calendarHeatmap.settings.width - x < (calendarHeatmap.settings.tooltip_width + calendarHeatmap.settings.tooltip_padding * 3)) {
          x -= calendarHeatmap.settings.tooltip_width + calendarHeatmap.settings.tooltip_padding * 2;
        }
        var y = this.getBoundingClientRect().top + calendarHeatmap.settings.item_size;

        // Show tooltip
        calendarHeatmap.tooltip.html(tooltip_html)
          .style('left', x + 'px')
          .style('top', y + 'px')
          .transition()
          .duration(calendarHeatmap.settings.transition_duration / 2)
          .ease(d3.easeLinear)
          .style('opacity', 1);
      })
      .on('mouseout', function() {
        if (calendarHeatmap.in_transition) { return; }

        // Set circle radius back to what it's supposed to be
        d3.select(this).transition()
          .duration(calendarHeatmap.settings.transition_duration / 2)
          .ease(d3.easeLinear)
          .attr('x', function(d) {
            return calcItemX(d) + (calendarHeatmap.settings.item_size - calcItemSize(d)) / 2;
          })
          .attr('y', function(d) {
            return calcItemY(d) + (calendarHeatmap.settings.item_size - calcItemSize(d)) / 2;
          })
          .attr('width', function(d) {
            return calcItemSize(d);
          })
          .attr('height', function(d) {
            return calcItemSize(d);
          });

        // Hide tooltip
        // calendarHeatmap.hideTooltip();
      })
      .transition()
      .delay(function() {
        return (Math.cos(Math.PI * Math.random()) + 1) * calendarHeatmap.settings.transition_duration;
      })
      .duration(function() {
        return calendarHeatmap.settings.transition_duration;
      })
      .ease(d3.easeLinear)
      .style('opacity', 1)
      .call(function(transition, callback) {
        if (transition.empty()) {
          callback();
        }
        var n = 0;
        transition
          .each(function() {++n; })
          .on('end', function() {
            if (!--n) {
              callback.apply(this, arguments);
            }
          });
      }, function() {
        calendarHeatmap.in_transition = false;
      });

    // Add month labels
    var month_labels = d3.timeMonths(start_of_year, end_of_year);
    var monthScale = d3.scaleLinear()
      .range([0, calendarHeatmap.settings.width])
      .domain([0, month_labels.length]);
    calendarHeatmap.labels.selectAll('.label-month').remove();
    calendarHeatmap.labels.selectAll('.label-month')
      .data(month_labels)
      .enter()
      .append('text')
      .attr('class', 'label label-month')
      .attr('font-size', function() {
        return Math.floor(calendarHeatmap.settings.label_padding / 3) + 'px';
      })
      .text(function(d) {
        return d.toLocaleDateString('en-us', { month: 'short' });
      })
      .attr('x', function(d, i) {
        return monthScale(i) + (monthScale(i) - monthScale(i - 1)) / 2;
      })
      .attr('y', calendarHeatmap.settings.label_padding / 2)
      .on('mouseenter', function(d) {
        if (calendarHeatmap.in_transition) { return; }

        var selected_month = moment(d);
        calendarHeatmap.items.selectAll('.item-circle')
          .transition()
          .duration(calendarHeatmap.settings.transition_duration)
          .ease(d3.easeLinear)
          .style('opacity', function(d) {
            return moment(d.date).isSame(selected_month, 'month') ? 1 : 0.1;
          });
      })
      .on('mouseout', function() {
        if (calendarHeatmap.in_transition) { return; }

        calendarHeatmap.items.selectAll('.item-circle')
          .transition()
          .duration(calendarHeatmap.settings.transition_duration)
          .ease(d3.easeLinear)
          .style('opacity', 1);
      })
      .on('click', function(d) {
        if (calendarHeatmap.in_transition) { return; }

        // Check month data
        var month_data = calendarHeatmap.data.filter(function(e) {
          return moment(d).startOf('month') <= moment(e.date) && moment(e.date) < moment(d).endOf('month');
        });

        // Don't transition if there is no data to show
        if (!month_data.length) { return; }

        // Set selected month to the one clicked on
        calendarHeatmap.selected = { date: d };

        calendarHeatmap.in_transition = true;

        // Hide tooltip
        calendarHeatmap.hideTooltip();

        // Remove all year overview related items and labels
        calendarHeatmap.removeYearOverview();

        // Redraw the chart
        calendarHeatmap.overview = 'month';
        calendarHeatmap.drawChart();
      });

    // Add day labels
    var day_labels = d3.timeDays(moment().startOf('week'), moment().endOf('week'));
    var dayScale = d3.scaleBand()
      .rangeRound([calendarHeatmap.settings.label_padding, calendarHeatmap.settings.height])
      .domain(day_labels.map(function(d) {
        return moment(d).weekday();
      }));
    calendarHeatmap.labels.selectAll('.label-day').remove();
    calendarHeatmap.labels.selectAll('.label-day')
      .data(day_labels)
      .enter()
      .append('text')
      .attr('class', 'label label-day')
      .attr('x', calendarHeatmap.settings.label_padding / 3)
      .attr('y', function(d, i) {
        return dayScale(i) + dayScale.bandwidth() / 1.75;
      })
      .style('text-anchor', 'left')
      .attr('font-size', function() {
        return Math.floor(calendarHeatmap.settings.label_padding / 3) + 'px';
      })
      .text(function(d) {
        return moment(d).format('dddd')[0];
      })
      .on('mouseenter', function(d) {
        if (calendarHeatmap.in_transition) { return; }

        var selected_day = moment(d);
        calendarHeatmap.items.selectAll('.item-circle')
          .transition()
          .duration(calendarHeatmap.settings.transition_duration)
          .ease(d3.easeLinear)
          .style('opacity', function(d) {
            return (moment(d.date).day() === selected_day.day()) ? 1 : 0.1;
          });
      })
      .on('mouseout', function() {
        if (calendarHeatmap.in_transition) { return; }

        calendarHeatmap.items.selectAll('.item-circle')
          .transition()
          .duration(calendarHeatmap.settings.transition_duration)
          .ease(d3.easeLinear)
          .style('opacity', 1);
      });

    // Add button to switch back to previous overview
    calendarHeatmap.drawButton();
  },
};
