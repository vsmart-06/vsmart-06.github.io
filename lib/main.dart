import "package:flutter/material.dart";
import "package:personal_website/pages/home_page.dart";
import "package:personal_website/pages/achievements_page.dart";
import "package:personal_website/pages/organizations_page.dart";
import "package:personal_website/pages/projects_page.dart";
import "package:personal_website/widgets/project_template.dart";

void main() {
  runApp(MaterialApp(
    title: "Srivishnu Vusirikala's Website",
    routes: {
      "/": (context) => Home(),
      "/achievements": (context) => Achievements(),
      "/projects": (context) => Projects(),
      "/organizations": (context) => Organizations(),
      "/melanoma-classification": (context) => ProjectPage(
            title: "Machine Learning Research on Self-Supervision",
            text:
                """Collaborating with a PhD candidate from Cornell University, I wrote a research paper that explored the intersection between machine learning and healthcare. I looked into the impact of self-supervision as a pre-training algorithm on the efficacy of neural networks training to classify melanoma patches. With melanoma being one of the most common forms of cancer in India, my research could help provide inroads into solving a huge problem in my country.

The data for this experiment was collected from a publicly available dataset on Kaggle with over 10,000 images. I performed primary data collection as I looked into 3 separate self-supervision algorithms: rotation prediction, missing patch removal, and corruption removal. I then prepared models using state-of-the-art architectures such as Residual Neural Networks, and trained the models on the collected data. These models employed an encoder + decoder architecture and were created using Python and the TensorFlow package. The models were then tested on separate images, and the data collected confirmed our hypothesis on the potential for improvement with self-supervision.

With this data, I wrote a research paper that outlined the results obtained, and especially its impact in the healthcare sector. With high levels of accuracy required in this field, to ensure the best diagnosis possible, any improvements in the performance will be important. I then presented the research paper at the International Conference on Engineering and Advancements in Technology, and published the paper in the International Journal of Science and Innovative Engineering and Technology.""",
            link: "https://arxiv.org/abs/2407.14628v1",
            dates: "March 2023 - August 2023",
            images: [
              "https://i.imgur.com/rnCzwqs.png",
              "https://i.imgur.com/WJ3NtMm.png",
              "https://i.imgur.com/2QDfh2W.png",
              "https://i.imgur.com/5gPg3O6.png",
              "https://i.imgur.com/hbuA3mW.png",
              "https://i.imgur.com/n2LwI41.png"
            ],
          ),
      "/oral-cancer-detection": (context) => ProjectPage(
            title: "Oral Cancer Detection Application",
            text:
                """Working under the guidance of Professor Prasad Sudhakar from IISc Bangalore, I created an application that aimed to diagnose oral cancer from images provided as input. Oral cancer is another extremely common form of cancer in India so the implications of this project were many.

This project helped me acquaint myself with several machine learning frameworks such as Residual Neural Networks and Visual Transformers. This project also intertwined itself with my research work, as I made use of the self-supervision that I had come to admire through my research into the subject. A dataset on Kaggle gave us access to 130 images of oral cancer - not enough to train a model on. Due to the lack of sufficient data, I developed an algorithm that would fragment each image into several smaller patches which would be assigned a label. This algorithm was thus able to expand our dataset of just 131 images to one with over 2000. These patches were then used to train the model which would be able to detect the presence of oral cancer from the images. 

The trained model returned an accuracy of around 80% on images that it had never seen before, which is a good indication of its usefulness, but not nearly good enough to be applied in a real world scenario. However, the experience obtained was useful to pioneer other such future projects.""",
            link: "https://tinyurl.com/oral-cancer-app-presentation",
            dates: "October 2022 - July 2023",
            images: [
              "https://i.imgur.com/MXuHsjm.jpeg",
              "https://i.imgur.com/j8Ig0ji.png"
            ],
          ),
      "/minesweeper-bot": (context) => ProjectPage(
            title: "Minesweeper Bot",
            text:
                "I am the creator of the Minesweeper Bot on Discord. This bot brings a multitude of different games to the platform, apart from minesweeper itself, such as Connect 4, Othello, Mastermind, Battleship, Yahtzee, Hangman, Uno, and more! This bot has achieved a lot of popularity, having been adopted in 2500+ servers on the platform!",
            link: "https://minesweeper-bot.carrd.co",
            dates: "October 2021 - December 2022",
            images: [
              "https://i.imgur.com/FujjsyT.jpeg",
              "https://i.imgur.com/GvKmMEy.jpeg"
            ],
          ),
      "/solving-depressed-polynomials": (context) => ProjectPage(
            title: "Math Research on Solving Depressed Polynomial Equations",
            text:
                """Although the Abel - Ruffini theorem dictates that polynomial equations of degree 5 or higher cannot be solved in general, I sought to explore a novel approach to achieve this impossible dream. I wrote a research paper that extrapolated ideas taken from the solution for cubic equations to special cases of depressed polynomial equations in general. Given that this was a largely unexplored niche, the prospect of furthering the boundaries of mathematics with groundbreaking research was extremely exciting.

Using Cardano's method for solving depressed cubic equations, I obtained solutions for restricted forms of depressed polynomial equations of degrees 5, 6, 7, and 8. Using the patterns observed in the solutions for these equations, I obtained a generalized solution for a depressed polynomial equation of an arbitrary degree. Following this, I deduced the patterns in the restrictions on the coefficients in the polynomial, thereby providing the complete solution for the problem. Furthermore, the solution obtained provided all the roots of the equations, thus increasing the robustness of the result.

The solutions obtained for the depressed polynomial equation of an arbitrary degree conformed to the results observed with the depressed equations of lower degrees, giving some level of confidence regarding the validity of the results. However, a rigorous proof for the problem was not obtained, and future research into this field can seek to prove the observed patterns.
""",
            link: "https://tinyurl.com/solving-depressed-polynomials",
            dates: "February 2023 - January 2024",
            images: [
              "https://i.imgur.com/mZNtiXS.png",
              "https://i.imgur.com/Bsd22nL.png",
              "https://i.imgur.com/j1ujOJ1.png",
              "https://i.imgur.com/apzs1vj.png"
            ],
            fitWidth: false,
          )
    },
    theme: ThemeData(useMaterial3: false),
  ));
}
