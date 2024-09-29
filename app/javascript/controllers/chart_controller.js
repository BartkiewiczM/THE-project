import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chart"
export default class extends Controller {
  connect() {
    document.addEventListener('turbo:load', () => {
      this.initializeChart();
    });

    // Optionally, run the script when the page loads for the first time
    document.addEventListener('DOMContentLoaded', () => {
      this.initializeChart();
    });
  }

  initializeChart(){
    const ctx = document.getElementById('pieChart').getContext('2d');
    new Chart(ctx, {
      type: 'doughnut',
      data: {
        labels: ['Entertainment', 'Tools', 'Toys'],
        datasets: [{
          data: [30, 60, 10],  // Values in percentages
          backgroundColor: [
            '#10B981',  /* Entertainment - Green */
            '#3B82F6',  /* Tools - Blue */
            '#F59E0B'   /* Toys - Yellow */
          ]
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            position: 'bottom',
          },
          title: {
            display: true,
            text: 'Spending Categories',
            color: '#3fb56b',
            font: {
              size: 16,
              weight: 'bold'
            }
          }
        },
        cutout: '70%'
      }
    });
  }
}
