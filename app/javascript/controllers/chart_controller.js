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
            '#FFB6C1',  /* Light Pink for Entertainment */
            '#B0E0E6',  /* Pastel Blue for Tools */
            '#FFDAB9'   /* Peach Puff for Toys */
          ],
          borderColor: '#ffffff', // Adds white border between slices for better separation
          borderWidth: 1,
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            position: 'bottom',
            labels: {
              color: '#000000',  // Legend text color black
            }
          },
          title: {
            display: true,
            text: 'Spending Categories',
            color: '#000000',  // Title text color black
            font: {
              size: 16,
              weight: 'bold'
            }
          }
        },
        cutout: '70%'  // Defines the size of the center cutout
      }
    });
  }
}
