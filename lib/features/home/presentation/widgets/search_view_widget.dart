import 'package:election_app/features/home/domain/entities/Canditate/candidate.dart';
import 'package:flutter/material.dart';

class ElectionStatus {
  static int electionNotStarted = -1;
  static int electionCompleted = 0;
  static int electionRunning = 1;
}

Widget candidateCardFrom({required Candidate candidate}) {
  if (candidate.status == ElectionStatus.electionCompleted) {
    return buildElectedWidgetFrom(candidate: candidate);
  } else if (candidate.status == ElectionStatus.electionRunning) {
    return const SizedBox();
  } else {
    return const SizedBox();
  }
}

bool didCandidateWinUncontested(Candidate candidate) =>
    candidate.winnerVoteCount == -1;

Widget buildElectedWidgetFrom({required Candidate candidate}) {
  if (didCandidateWinUncontested(candidate)) {
    return buildUncontestedElectedCandidateCardFrom(candidate: candidate);
  } else {
    return buildContestedElectedCandidateFrom(candidate: candidate);
  }
}

Widget buildUncontestedElectedCandidateCardFrom(
    {required Candidate candidate}) {
  return Card(
    child: Column(
      children: [
        Text(candidate.postName),
        buildUncontestedCandidateRow(candidate),
      ],
    ),
  );
}

Widget buildContestedElectedCandidateFrom({required Candidate candidate}) {
  return Card(
    // color: Colors.grey.shade200,
    // shadowColor: ,
    child: Column(
      children: [
        Row(
          children: [
            Text(
              candidate.postName,
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
        buildContestedCandidateRow(candidate),
        const Divider(thickness: 2),
        buildContestedCandidateRow(candidate, false)
      ],
    ),
  );
}

Widget buildUncontestedCandidateRow(Candidate candidate) {
  return Row(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // CircleAvatar(child: Image.network("https://picsum.photos/25")),
              CircleAvatar(
                child: ClipRRect(
                  // borderRadius: 10.0,
                  child: Image.network("https://picsum.photos/30",
                      fit: BoxFit.fill),
                ),
              ),
              Text(
                candidate.winnerPartyName,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            width: 110,
            // color: Colors.green,
            child: Card(
                color: Colors.green,
                child: Stack(
                  children: [
                    Center(
                      child: Row(
                        children: const [
                          SizedBox(width: 5),
                          Text(
                            "निर्वाचित",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 25,
                        )),
                  ],
                )),
          ),
          Row(
            children: [
              Text("${candidate.winnerCanditate} -  निर्बिरोध निर्वाचित",
                  style: const TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget buildContestedCandidateRow(Candidate candidate,
    [bool showWinner = true]) {
  return Row(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // CircleAvatar(child: Image.network("https://picsum.photos/25")),
              CircleAvatar(
                child: ClipRRect(
                  // borderRadius: 10.0,
                  child: Image.network("https://picsum.photos/30",
                      fit: BoxFit.fill),
                ),
              ),
              Text(
                showWinner
                    ? candidate.winnerPartyName
                    : candidate.runnerUpPartyName,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            width: showWinner ? 110 : 150,
            // color: Colors.green,
            child: Card(
                color: showWinner ? Colors.green : Colors.yellow,
                child: Stack(
                  children: [
                    Center(
                      child: showWinner
                          ? Row(
                              children: const [
                                SizedBox(width: 5),
                                Text(
                                  "निर्वाचित",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : const Text(
                              "निकटतम प्रतिद्वन्द्वी",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                    const SizedBox(width: 5),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: showWinner
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 25,
                              )
                            : null),
                  ],
                )),
          ),
          Row(
            children: [
              Text(
                  showWinner
                      ? "${candidate.winnerCanditate} - ${candidate.winnerVoteCount} मत"
                      : "${candidate.runnerUpCanditate} - ${candidate.runnerUpVoteCount} मत",
                  style: const TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    ],
  );
}
