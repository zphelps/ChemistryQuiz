//
//  AllQuestionsTableViewController.swift
//  ChemistryQuiz
//
//  Created by Zach Phelps on 10/4/19.
//  Copyright © 2019 Zach Phelps. All rights reserved.
//

import UIKit

class AllQuestionsTableViewCell: UITableViewCell {

    @IBOutlet var questionLabel: UILabel!
    
}

var allQuestionsIndex = 0

var allQuestionsArray = [String]()

var allQuestionAnswersArray = [String]()

var allQuestionExplanations = [String]()


class AllQuestionsTableViewController: UITableViewController {

    @IBOutlet var allQuestionsTableView: UITableView! {
        didSet {
            allQuestionsTableView.dataSource = self
        }
    }
    
    func getQuestions() -> Array<Question> {
        let que1 = Question(difficulty: 5, questionText: "The atomic number is best defined as what?", options: ["Number of Neutrons", "Number of Isotopes", "Number of Protons", "An element's percent abundance"], correctAns: 2, explanation: "The atomic number of an atom refers to the number of protons.", isAnswered: false)
        let que2 = Question(difficulty: 5, questionText: "How many neutrons does Oxygen-16 have if the atomic number is 8?", options: ["16", "8", "7", "None"], correctAns: 1, explanation: "The 16 refers to the atom's mass number. The mass number of an atom is the number of protons and the number neutrons. Therefore, is the number of protons is eight, the number of neutrons must also be 8", isAnswered: false)
        let que3 = Question(difficulty: 5, questionText: "What two subatomic particles on located in the nucleus?", options: ["Neutrons and Electrons", "Protons and Neutrons", "Electrons and Protons", "Atoms and Protons"], correctAns: 1, explanation: "Protons and neutrons are located in the nucleus while electrons orbit around the nucleus.", isAnswered: false)
        let que4 = Question(difficulty: 5, questionText: "Who developed the plum pudding model?", options: ["J.J. Thompson", "Rutherford", "Mrs. Kunz", "Chadwick"], correctAns: 0, explanation: "J.J. Thompson developed the plum pudding models after discovery that there were electrons in atoms.", isAnswered: false)
        let que5 = Question(difficulty: 10, questionText: "How many electrons does a positively charged Carbon atom have? (AN = 6)", options: ["6", "Less than 6", "More than 6", "7"], correctAns: 1, explanation: "In a nuetral atom, the number of protons is equal to the number of electrons. However, if the atom is positively charged, there must be fewer electrons than neutrons." , isAnswered: false)
        let que6 = Question(difficulty: 10, questionText: "Which part of the atom did Rutherford discover?", options: ["Electrons", "Neutron", "Nucleus", "None of the above"], correctAns: 2, explanation: "In his gold foil experiment, Rutherford discovered the nucleus by shooting alpha particles at a thin sheet of gold foil and observing where they are deflected.", isAnswered: false)
        let que7 = Question(difficulty: 10, questionText: "Which subatomic particle is the lightest?", options: ["Electron", "Neutron", "Proton", "Nucleus"], correctAns: 0, explanation: "The electron is the lighest subatomic particle. In fact, its mass is around 1/1835 that of a proton.", isAnswered: false)
        let que8 = Question(difficulty: 15, questionText: "Which best describes an alpha particle?", options: ["A weightless atom", "A radioactive atom", "Negatively charged particle", "Atom stripped of its electrons"], correctAns: 3, explanation: "Alpha particles, also called alpha ray or alpha radiation, consist of two protons and two neutrons bound together into a particle identical to a helium-4 nucleus.", isAnswered: false)
        let que9 = Question(difficulty: 5, questionText: "An atom's nulceus has what charge?", options: ["Positive", "Negative", "No charge", "None of the above"], correctAns: 0, explanation: "Protons and neutrons makle up an atom's nucleus. Since neutrons do not have a charge, the nucleus has a positive charge", isAnswered: false)
        let que10 = Question(difficulty: 10, questionText: "A proton has approximately the same mass as ____.", options: ["Electron", "Beta particle", "Alpha particle", "Neutron"], correctAns: 3, explanation: "Protons and neutrons have around the same mass. A proton's mass is 1.6726219 × 10^-27 kilograms, and a neutron's mass is 1.674929 x 10^-27 kg.", isAnswered: false)
        let que11 = Question(difficulty: 10, questionText: "Which symbols represent an isotope?", options: ["C-14, C-14", "O-16, O-18", "Rn-222, Ra-222", "H-3, He-4"], correctAns: 1, explanation: "An isotope is two or more atoms an element with a different number of neutrons. Therefore, the difference between different isotopes of an element is its mass number.", isAnswered: false)
        let que12 = Question(difficulty: 15, questionText: "What is the atomic number of an ion with 5 protons, 6 neutrons, and a charge of 3+?", options: ["5", "6", "8", "11"], correctAns: 0, explanation: "The atomic number is the number of protons in an atom. The atom in this example is described as having 5 protons.", isAnswered: false)
        let que13 = Question(difficulty: 15, questionText: "What is the mass number of an atom which contains 28 protons, 28 electrons, and 34 neutrons?", options: ["28", "56", "62", "90"], correctAns: 2, explanation: "The mass number is the number of protons and neutrons in an atom, so the mass number of the atom described in this example is the number of protons (28) plus the number of neutrons (34)", isAnswered: false)
        let que14 = Question(difficulty: 10, questionText: "Where is the majority of the mass of an atom located?", options: ["Protons", "Neutrons", "Electrons", "Nucleus"], correctAns: 3, explanation: "Protons and neutrons are both 1835 times the mass of electrons. Additonally, both protons and neutrons are located in the nucleus of the atom. Therefore, the nucleus is where the majority of the mass is located.", isAnswered: false)
        let que15 = Question(difficulty: 15, questionText: "How many neutrons does an atom with mass number of 23 and an atomic number of 11 have?", options: ["11", "12", "23", "44"], correctAns: 1, explanation: "The atomic number is the number of protons, and the mass number is the number of protons and neutrons, so the number of neutrons in an atom when the mass number is 23 and the atomic number is 11 is 12.", isAnswered: false)
        let que16 = Question(difficulty: 15, questionText: "Which of the following is a noble gas?", options: ["H", "He", "N", "O"], correctAns: 1, explanation: "Helium is the only gas of the available choices that is a noble gas.", isAnswered: false)
        let que17 = Question(difficulty: 15, questionText: "What is the family name for Group 1 or 1A elements?", options: ["Alkaline  Earth Metals", "Transition Metals", "Alkali Metals", "Noble Gases"], correctAns: 2, explanation: "The first family in the periodic table is the Alkali metals.", isAnswered: false)
        let que18 = Question(difficulty: 5, questionText: "How many valence electrons does Palladium have? [Kr]4d10", options: ["4", "8", "10", "12"], correctAns: 2, explanation: "The number of valence electrons in an atom is the number of electrons in the outermost subshell. In this case, there are 10.", isAnswered: false)
        let que19 = Question(difficulty: 10, questionText: "A high-frequency wave has _______ than a low-frequency wave", options: ["a shorter wavelength", "a longer wavelength", "the same wavelength", "a stronger source"], correctAns: 0, explanation: "Wavelength and frequency are inversely proportional. The higher the frequency, the shorter the wavelength.", isAnswered: false)
        let que20 = Question(difficulty: 5, questionText: "What charge does a cation have?", options: ["No Charge", "Negative", "Positive", "None of the Above"], correctAns: 2, explanation: "Ions are atoms or molecules which have gained or lost one or more valence electrons, giving the ion a net positive or negative charge. Cations are ions with a net positive charge.", isAnswered: false)
        
        
        questionsArray = [que1, que2, que3, que4, que5, que6, que7, que8, que9, que10, que11, que12, que13, que14, que15, que16, que17, que18, que19, que20]
    
        return questionsArray
    }
    
    lazy var allQuestions = getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allQuestionsTableView.rowHeight = 65
        
        for i in 0...(allQuestions.count - 1) {
            let question = allQuestions[i]
            allQuestionExplanations.append(question.explanation)
            allQuestionsArray.append(question.questionText)
            let correctAns = question.correctAns
            allQuestionAnswersArray.append(question.options[correctAns])
        }
       
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allQuestions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allQuestionsCell", for: indexPath) as! AllQuestionsTableViewCell

        let question = allQuestions[indexPath.row]
        
        cell.questionLabel?.text = question.questionText

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        allQuestionsIndex = indexPath.row
                
        performSegue(withIdentifier: "expandedAllQuestions", sender: nil)
        
    }

}
