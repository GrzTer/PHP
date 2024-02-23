<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=google">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/main.css">
    <link rel="icon" href="styles/favico.ico" />
    <title>Strona Główna</title>
</head>

<body>
    <header>
        <div class="header_container">
            <h4>Strona Główna</h4>
            <nav>
                <ul>
                    <li><a href="Home.php">Strona Główna</a></li>
                    <li><a href="Onas.php">Projekty</a></li>
                    <li><a href="Kontakt.php">Kontakt</a></li>
                    <li><a href="Login.php">Zaloguj się</a></li>
                    <li><a href="RegisterPage.php">Zarejestruj się</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <section id="about-me">
      <h2>About Me</h2>
      <p>Hi there, I'm Gregory Tereszkiewicz with over [Number of Years] years of experience in the field.<br><br>
          I received my [Degree] from [University/College] and have since gone on to achieve a number of professional accomplishments, including [Professional Accomplishment 1], [Professional Accomplishment 2], and [Professional Accomplishment 3].<br><br>
          My areas of expertise include [Expertise 1], [Expertise 2], and [Expertise 3]. Outside of work, I enjoy [Hobby/Interest 1], [Hobby/Interest 2], and [Hobby/Interest 3]. I am motivated by [What Motivates You] and am always striving to [What You Are Striving To Do].<br><br>
          What sets me apart from others in my field is [What Sets You Apart]. For anyone starting out in this industry, my advice would be [Your Advice]. Looking ahead, my future goals and aspirations include [Future Goal 1], [Future Goal 2], and [Future Goal 3].<br><br>
          I'm excited to continue growing and learning in my field and am always looking for new challenges and opportunities to make a positive impact.</p>
    <img src="{{ url_for('static', filename='[removal.ai]_tmp-64198bbda4618.png') }}"/></section>

    <section id="projects">
      <h2>Projects</h2>
      <ul>
        <li>
          <h3>Project 1</h3>
          <p>Description of project 1.</p>
          <a href="#">Link to project 1</a>
        </li>
        <li>
          <h3>Project 2</h3>
          <p>Description of project 2.</p>
          <a href="#">Link to project 2</a>
        </li>
      </ul>
    </section>

    <section id="contact-me">
      <h2>Contact Me</h2>
      <form action="{{ url_for('contact') }}" method="POST">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="message">Message</label>
        <textarea id="message" name="message" required></textarea>

        <button type="submit">Send Message</button>
      </form>
    </section>
    <footer>
        <div class="container">
            <p>&copy; 2023 Grzegorz Tereszkiewicz</p>
        </div>
    </footer>
</body>

</html>