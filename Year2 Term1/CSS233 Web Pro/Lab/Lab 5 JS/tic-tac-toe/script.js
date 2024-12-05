const board = document.getElementById("board");
const cells = [];
const turnDisplay = document.getElementById("turn");
const winnerDisplay = document.getElementById("winner");
let currentPlayer = "X";
let gameOver = false;


for (let i = 0; i < 9; i++) {
    const cell = document.createElement("div");
    cell.classList.add("cell");
    cell.setAttribute("data-index", i);
    cell.addEventListener("click", () => makeMove(cell));
    board.appendChild(cell);
    cells.push(cell);
}


function makeMove(cell) {
    if (!gameOver && !cell.textContent) {
        cell.textContent = currentPlayer;
        cell.classList.add(currentPlayer);
        checkWinner();
        currentPlayer = currentPlayer === "X" ? "O" : "X";
        turnDisplay.textContent = `${currentPlayer}'s Turn`;
        if (!gameOver && currentPlayer === "O") {
            setTimeout(makeComputerMove, 500);
        }
    }
}


function makeComputerMove() {
    const emptyCells = cells.filter(cell => !cell.textContent);
    if (emptyCells.length > 0) {
        const randomIndex = Math.floor(Math.random() * emptyCells.length);
        makeMove(emptyCells[randomIndex]);
    }
}


function checkWinner() {
    const winningCombinations = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8], 
        [0, 3, 6], [1, 4, 7], [2, 5, 8], 
        [0, 4, 8], [2, 4, 6] 
    ];

    for (const combo of winningCombinations) {
        const [a, b, c] = combo;
        if (cells[a].textContent && cells[a].textContent === cells[b].textContent && cells[a].textContent === cells[c].textContent) {
            winnerDisplay.textContent = `${currentPlayer === "X" ? "Player" : "Computer"} wins!`;
            gameOver = true;
            return;
        }
    }

    if (!cells.some(cell => !cell.textContent)) {
        winnerDisplay.textContent = "It's a draw!";
        gameOver = true;
    }
}