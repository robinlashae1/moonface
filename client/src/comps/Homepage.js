function HomePage() {
    return ( 
        <div id="homePage">
            <svg width="100%" height="100%" viewBox="0 0 800 500" style={{transform:"translate(0px, -25px)"}} id="home-blob" preserveAspectRatio="none">
                <path stroke="#f00" stroke-width="3" d="M 0 300 L 0 50 L 800 50 L 800 350 C 600 250 800 450 700 400 Q 600 350 500 400 C 450 300 450 350 400 400 C 350 450 200 400 200 450 C 100 550 200 250 0 300" fill="blue"/>
                <text x="400" y="200" font-size="80" fill="white" stroke="black" stroke-width=".06">HomePage</text>
            </svg>
             
        </div>
     );
}

export default HomePage;