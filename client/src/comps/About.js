import BottomBorder from "./BottomBorder";
function About() {
    return ( 
        <div id="about-container">
            <div id="about-image-blog-content">
               <img src="https://icones.pro/wp-content/uploads/2021/03/avatar-de-personne-icone-femme.png" 
            alt="smiling picture of woman" id="about-liv-image"/>
                <div id="about-wordspace">
                 <h3> Hi, Im Liv</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                        sed do eiusmod tempor incididunt ut labore et dolore magna 
                        aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
                        ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
                        aute irure dolor in reprehenderit in voluptate
                        </p>
                </div>
            </div>
            <BottomBorder />
        </div>
     );
}

export default About;