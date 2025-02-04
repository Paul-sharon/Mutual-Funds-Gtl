import 'package:flutter/material.dart';
import '../RiskAssessment/Riskassessment.dart';
import '../components/custom_app_bar.dart';

class ProfilePage extends StatefulWidget {
  final String username;
  final String email;
  final String phoneNumber;

  const ProfilePage({
    Key? key,
    required this.username,
    required this.email,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        username: widget.username,
        email: widget.email,
        phoneNumber: widget.phoneNumber,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // White Container
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  // Image from Assets
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/gold.png', // Ensure this asset is added in pubspec.yaml
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    "Get Started on your Investment Journey!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    "Activate your BSE STAR membership in a few simple steps.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Activate Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Black Container - Membership Details
            Container(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xFF2A2E34),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Membership Details",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Demat",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle, color: Colors.green, size: 12),
                          SizedBox(width: 5),
                          Text(
                            "Active",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Physical",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle, color: Colors.grey, size: 12),
                          SizedBox(width: 5),
                          Text(
                            "Inactive",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Black Container - Contact Details
            Container(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xFF2A2E34),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Contact Details",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Email",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            widget.email,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Mobile",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            widget.phoneNumber,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Black Container - Bank Details
            Container(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xFF2A2E34),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bank Details",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('assets/hdfcimg.png', width: 50, height: 50),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "HDFC BANK LTD",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Acc. No: XXXXXXXXXX3488",
                              style: TextStyle(color: Colors.grey, fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Black Container - Nominee Details
            Container(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xFF2A2E34),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Nominee Details",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add nominee action
                        },
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "   Add Nominee",
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.add, color: Colors.white, size: 18),
                              ],
                            ),
                            const SizedBox(height: 3),
                            // Underline effect
                            Container(
                              width: 101, // Adjust the width based on text length
                              height: 1, // Thickness of the underline
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Center(
                    child: Text(
                      "No nominees added yet.",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFF2A2E34),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text Section
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " Know your risk profile.",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          " Generating your risk profile will help\n geojit to recommend funds based on\n your risk appetite",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            // Navigates to the RiskAssessment screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RiskAssessmentScreen(
                                  questions: [
                                    Question(
                                      questionText: 'What is your primary investment goal?',
                                      options: [
                                        Option(title: 'Capital Preservation', subtitle: 'e.g. Secure initial investment'),
                                        Option(title: 'Steady Income', subtitle: 'e.g. Fixed returns, lower risk'),
                                        Option(title: 'Balanced Growth and Income', subtitle: 'e.g. Moderate risk for moderate returns'),
                                        Option(title: 'Growth', subtitle: 'e.g. Seeking higher returns. Willing to take moderate risks'),
                                        Option(title: 'Aggressive Growth', subtitle: 'e.g. Maximizing returns, Accepting high risks'),
                                      ],
                                    ),
                                    Question(
                                      questionText: 'What is your investment time horizon?',
                                      options: [
                                        Option(title: 'Less than 1 year', subtitle: ''),
                                        Option(title: '1-3 years', subtitle: ''),
                                        Option(title: '3-5 years', subtitle: ''),
                                        Option(title: '5-10 years', subtitle: ''),
                                        Option(title: 'More than 10 years', subtitle: ''),
                                      ],
                                    ),
                                    Question(
                                      questionText: 'What is your risk tolerance with market fluctuations?',
                                      options: [
                                        Option(title: 'Cannot tolerate any losses', subtitle: 'e.g., Uncomfortable with any negative performance'),
                                        Option(title: 'Can tolerate minor losses', subtitle: 'e.g., Loss within 5% of investment'),
                                        Option(title: 'Can tolerate moderate losses', subtitle: 'e.g., Loss within 10-15% of investment'),
                                        Option(title: 'Comfortable with substantial losses', subtitle: 'e.g., Up to 20%'),
                                        Option(title: 'Willing to take significant risks for high potential returns', subtitle: 'e.g., Over 25% loss'),
                                      ],
                                    ),
                                    Question(
                                      questionText: 'How would you react if the value of your investment drops by 20% in a short time?',
                                      options: [
                                        Option(title: 'Immediately sell to prevent further losses', subtitle: ''),
                                        Option(title: 'Sell a portion to reduce risk', subtitle: ''),
                                        Option(title: 'Do nothing and wait for recovery', subtitle: ''),
                                        Option(title: 'Buy more, considering it an opportunity', subtitle: ''),
                                        Option(title: 'Invest more aggressively to increase exposure', subtitle: ''),
                                      ],
                                    ),
                                    Question(
                                      questionText: 'What is your experience with investments like stocks, mutual funds, or bonds?',
                                      options: [
                                        Option(title: 'No experience', subtitle: 'Score: 1'),
                                        Option(title: 'Limited experience', subtitle: 'e.g., Savings accounts or FD'),
                                        Option(title: 'Moderate experience', subtitle: 'e.g., Mutual funds or bonds'),
                                        Option(title: 'Good experience', subtitle: 'e.g., Individual stocks or equity funds'),
                                        Option(title: 'Extensive experience', subtitle: 'e.g., Active trading or derivatives'),
                                      ],
                                    ),
                                    Question(
                                      questionText: 'How much of your overall income are you willing to allocate for Equity Asset Class?',
                                      options: [
                                        Option(title: 'Less than 10%', subtitle: ''),
                                        Option(title: '10% to 20%', subtitle: ''),
                                        Option(title: '20% to 30%', subtitle: ''),
                                        Option(title: '30% to 50%', subtitle: ''),
                                        Option(title: 'More than 50%', subtitle: ''),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 12),
                          ),

                          child: const Text(
                            "Take Assessment",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10), // Space between text and image

                  // Image Section (You can replace this with your actual image)
                  Container(
                    width: 95, // Adjust width as needed
                    height: 150, // Adjust height as needed
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/Riskassessment.png", // Correct path for the image
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
