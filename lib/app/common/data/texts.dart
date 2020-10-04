/* Contribution Required */

List<String> quotes = [
  '"A baby learns to crawl, walk and then run.  We are in the crawling stage when it comes to applying machine learning." ~Dave Waters',
  '“We have some catching up to do in the area of machine learning and artificial intelligence.” ~Klaus Froehlich',
  '“Artificial Intelligence, deep learning, machine learning — whatever you’re doing if you don’t understand it — learn it. Because otherwise you’re going to be a dinosaur within 3 years.” ~Mark Cuban',
  '“Just as electricity transformed almost everything 100 years ago, today I actually have a hard time thinking of an industry that I don’t think AI (Artificial Intelligence) will transform in the next several years.” ~Andrew Ng',
  'The field of Artificial Intelligence is set to conquer most of the human disciplines; from art and literature to commerce and sociology; from computational biology and decision analysis to games and puzzles.” ~Anand Krish',
  '“Machine intelligence is the last invention that humanity will ever need to make.” ~Nick Bostrom',
  '“Artificial intelligence would be the ultimate version of Google. The ultimate search engine that would understand everything on the web. It would understand exactly what you wanted, and it would give you the right thing. We’re nowhere near doing that now. However, we can get incrementally closer to that, and that is basically what we work on.” ~Larry Page',
  '“The future is ours to shape. I feel we are in a race that we need to win. It’s a race between the growing power of the technology and the growing wisdom we need to manage it.” ~Max Tegmark'
];

List<String> contexts = [
  'Sunset is the time of day when our sky meets the outer space solar winds. There are blue, pink, and purple swirls, spinning and twisting, like clouds of balloons caught in a whirlwind. The sun moves slowly to hide behind the line of horizon, while the moon races to take its place in prominence atop the night sky. People slow to a crawl, entranced, fully forgetting the deeds that must still be done. There is a coolness, a calmness, when the sun does set.',
  'On July 16, 1969, the Apollo 11 spacecraft launched from the Kennedy Space Center in Florida. Its mission was to go where no human being had gone before—the moon! The crew consisted of Neil Armstrong, Michael Collins, and Buzz Aldrin. The spacecraft landed on the moon in the Sea of Tranquility, a basaltic flood plain, on July 20, 1969. The moonwalk took place the following day. On July 21, 1969, at precisely 10:56 EDT, Commander Neil Armstrong emerged from the Lunar Module and took his famous first step onto the moon’s surface. He declared, “That’s one small step for man, one giant leap for mankind.” It was a monumental moment in human history!',
  'Here is the perfect system for cleaning your room. First, move all of the items that do not have a proper place to the center of the room. Get rid of at least five things that you have not used within the last year. Take out all of the trash, and place all of the dirty dishes in the kitchen sink. Now find a location for each of the items you had placed in the center of the room. For any remaining items, see if you can squeeze them in under your bed or stuff them into the back of your closet. See, that was easy!',
  'Oceans and lakes have much in common, but they are also quite different. Both are bodies of water, but oceans are very large bodies of salt water, while lakes are much smaller bodies of fresh water. Lakes are usually surrounded by land, while oceans are what surround continents. Both have plants and animals living in them. The ocean is home to the largest animals on the planet, whereas lakes support much smaller forms of life. When it is time for a vacation, both will make a great place to visit and enjoy.',
  'The school fair is right around the corner, and tickets have just gone on sale. Even though you may be busy, you will still want to reserve just one day out of an entire year to relax and have fun with us. Even if you don’t have much money, you don’t have to worry. A school fair is a community event, and therefore prices are kept low. Perhaps, you are still not convinced. Maybe you feel you are too old for fairs, or you just don’t like them. Well, that’s what my grandfather thought, but he came to last year’s school fair and had this to say about it: “I had the best time of my life!” While it’s true that you may be able to think of a reason not to come, I’m also sure that you can think of several reasons why you must come.  We look forward to seeing you at the school fair!',
  'The Blue Whales just played their first baseball game of the new season; I believe there is much to be excited about. Although they lost, it was against an excellent team that had won the championship last year. The Blue Whales fell behind early but showed excellent teamwork and came back to tie the game. The team had 15 hits and scored 8 runs. That’s excellent! Unfortunately, they had 5 fielding errors, which kept the other team in the lead the entire game. The game ended with the umpire making a bad call, and if the call had gone the other way, the Blue Whales might have actually won the game. It wasn’t a victory, but I say the Blue Whales look like they have a shot at the championship, especially if they continue to improve.',
  'Aspirin can be a fatal poison. People are used to taking aspirin whenever they feel pain. It is true that aspirin is an efficacious pain-killer for example in headache cases. However, aspirin is like any other medicine can be dangerously harmful. Any unregulated use of it may result into the damage to the lining of the stomach, prolonged bleeding time, nausea, vomiting, ulcers, liver damage, and hepatitis. It is scientifically proven that excessive use of aspirin turns it into a toxin. Its toxic effects are Kidney Damage, severe metabolic derangements, respiratory and central nervous system effects, strokes, fatal haemorrhages of the brain, intestines & lungs and eventually death. Thus, the careful and regulated use of aspirin is most advisable so as not to turn into a deadly poison.',
];

List<Map<String, dynamic>> basics = [
  {
    "title": "What is Machine\nLearning?",
    "description": """Two definitions of Machine Learning are offered. 
Arthur Samuel described it as: 
    "the field of study that gives computers the ability to learn without being explicitly programmed." 
This is an older, informal definition.

Tom Mitchell provides a more modern definition: 
  "A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E."

    """,
    "example": """

    Example: playing checkers.
    E = the experience of playing many games of checkers
    T = the task of playing checkers.
    P = the probability that the program will win the next game.
    """,
    "code": "",
    "images": [
      "https://www.smaartt.com/knowledge/wp-content/uploads/2020/05/CX2.jpeg"
    ],
  },
  {
    "title": "  Supervised Learning",
    "description":
        """In supervised learning, we are given a data set and already know what our correct output should look like, having the idea that there is a relationship between the input and the output.
Supervised learning problems are categorized into "regression" and "classification" problems. In a regression problem, we are trying to predict results within a continuous output, meaning that we are trying to map input variables to some continuous function. In a classification problem, we are instead trying to predict results in a discrete output. In other words, we are trying to map input variables into discrete categories.

    """,
    "example": """

    Example 1:
    Given data about the size of houses on the real estate market, try to predict their price. Price as a function of size is a continuous output, so this is a regression problem.
    We could turn this example into a classification problem by instead making our output about whether the house "sells for more or less than the asking price." Here we are classifying the houses based on price into two discrete categories.
    
    Example 2:
    (a) Regression - Given a picture of a person, we have to predict their age on the basis of the given picture
    (b) Classification - Given a patient with a tumor, we have to predict whether the tumor is malignant or benign.
    """,
    "code": "",
    "images": [
      "https://www.digitalvidya.com/wp-content/uploads/2019/05/Supervised-Learning.jpg"
    ],
  },
  {
    "title": "Unsupervised Learning",
    "description": """
Unsupervised learning allows us to approach problems with little or no idea what our results should look like. We can derive structure from data where we don't necessarily know the effect of the variables.
We can derive this structure by clustering the data based on relationships among the variables in the data.
With unsupervised learning there is no feedback based on the prediction results.

    """,
    "example": """

  Clustering: Take a collection of 1,000,000 different genes, and find a way to automatically group these genes into groups that are somehow similar or related by different variables, such as lifespan, location, roles, and so on.
   
  Non-clustering: The "Cocktail Party Algorithm", allows you to find structure in a chaotic environment. (i.e. identifying individual voices and music from a mesh of sounds at a cocktail party).
""",
    "code": "",
    "images": [
      "https://miro.medium.com/max/1892/0*dMW760AWCDbdQW-z.png",
    ],
  },
  {
    "title": "Model Representation",
    "description": """
To establish notation for future use, we’ll use x^{(i)}x(i) to denote the “input” variables (living area in this example), also called input features, and y^{(i)}y(i) to denote the “output” or target variable that we are trying to predict (price). A pair (x^{(i)} , y^{(i)} )(x(i),y(i)) is called a training example, and the dataset that we’ll be using to learn—a list of m training examples {(x^{(i)} , y^{(i)} ); i = 1, . . . , m}(x(i),y(i));i=1,...,m—is called a training set. Note that the superscript “(i)” in the notation is simply an index into the training set, and has nothing to do with exponentiation. We will also use X to denote the space of input values, and Y to denote the space of output values. In this example, X = Y = ℝ.
To describe the supervised learning problem slightly more formally, our goal is, given a training set, to learn a function h : X → Y so that h(x) is a “good” predictor for the corresponding value of y. For historical reasons, this function h is called a hypothesis. Seen pictorially, the process is therefore like this:
When the target variable that we’re trying to predict is continuous, such as in our housing example, we call the learning problem a regression problem. When y can take on only a small number of discrete values (such as if, given the living area, we wanted to predict if a dwelling is a house or an apartment, say), we call it a classification problem.
    """,
    "example": "",
    "code": "",
    "images": ["assets/images/unsup.png"],
  },
  {
    "title": "Cost Function",
    "description": """
We can measure the accuracy of our hypothesis function by using a cost function. 
This takes an average difference (actually a fancier version of an average) of all the results of the hypothesis with inputs from x's and the actual output y's. 
To break it apart, it is the difference between the predicted value and the actual value.
This function is otherwise called the "Squared error function", or "Mean squared error". The mean is halved as a convenience for the computation of the gradient descent, as the derivative term of the square function will cancel out the term. The following formula summarizes what the cost function does:
  """,
    "example": "",
    "code": "",
    "images": [
      "assets/images/cost_function.png",
    ],
  },
  {
    "title": "Gradient Descent",
    "description": """
 So we have our hypothesis function and we have a way of measuring how well it fits into the data. Now we need to estimate the parameters in the hypothesis function. That's where gradient descent comes in.
 Imagine that we graph our hypothesis function based on its fields \theta_0θ0 and \theta_1θ1 (actually we are graphing the cost function as a function of the parameter estimates). We are not graphing x and y itself, but the parameter range of our hypothesis function and the cost resulting from selecting a particular set of parameters.
 We put \theta_0θ0 on the x axis and \theta_1θ1 on the y axis, with the cost function on the vertical z axis. The points on our graph will be the result of the cost function using our hypothesis with those specific theta parameters. The graph below depicts such a setup.
 We will know that we have succeeded when our cost function is at the very bottom of the pits in our graph, i.e. when its value is the minimum. The red arrows show the minimum points in the graph.
 The way we do this is by taking the derivative (the tangential line to a function) of our cost function. The slope of the tangent is the derivative at that point and it will give us a direction to move towards. We make steps down the cost function in the direction with the steepest descent. The size of each step is determined by the parameter α, which is called the learning rate.
 For example, the distance between each 'star' in the graph above represents a step determined by our parameter α. A smaller α would result in a smaller step and a larger α results in a larger step. The direction in which the step is taken is determined by the partial derivative of J(\theta_0,\theta_1)J(θ0,θ1). Depending on where one starts on the graph, one could end up at different points. The image above shows us two different starting points that end up in two different places.
 The gradient descent algorithm's Graph and formula are as follows:
  

""",
    "example": "",
    "code": "",
    "images": [
      "assets/images/gradient_descent_algo.png",
      "assets/images/gradient_descent_form.png",
    ],
  },
];

List<Map<String, dynamic>> papers = [
  {
    'title':
        'The Lottery Ticket Hypothesis: Finding Sparse, Trainable Neural Networks, by Jonathan Frankle and Michael Carbin',
    'image':
        'https://joblist.mla.org/images/73/default/f23849f7-da74-46de-84c3-ac92f9ff54a5.png',
    'link': 'https://arxiv.org/abs/1803.03635'
  }
];
