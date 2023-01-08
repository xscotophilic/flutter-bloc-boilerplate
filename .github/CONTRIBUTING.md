# Welcome to Flutter Boilerplate contributing guide <!-- omit in toc -->

Thank you for investing your time in contributing to our project! Any contribution you make will be reflected on [Flutter Boilerplate](https://github.com/xscotophilic/flutter-bloc-boilerplate) :sparkles:. 

Read our [Code of Conduct](./CODE_OF_CONDUCT.md) to keep our community approachable and respectable.

In this guide you will get an overview of the contribution workflow from opening an issue, creating a PR, reviewing, and merging the PR.

Use the table of contents icon <img src="./assets/images/table-of-contents.png" width="25" height="25" /> on the top left corner of this document to get to a specific section of this guide quickly.

## New contributor guide

To get an overview of the project, read the [README](./../README.md). Here are some resources to help you get started with open source contributions:

- [Finding ways to contribute to open source on GitHub](https://docs.github.com/en/get-started/exploring-projects-on-github/finding-ways-to-contribute-to-open-source-on-github)
- [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)
- [Collaborating with pull requests](https://docs.github.com/en/github/collaborating-with-pull-requests)

### Issues

#### Create a new issue

If you spot a problem with the docs, [search if an issue already exists](https://docs.github.com/en/github/searching-for-information-on-github/searching-on-github/searching-issues-and-pull-requests#search-by-the-title-body-or-comments). If a related issue doesn't exist, you can open a new issue using a relevant [issue form](https://github.com/xscotophilic/flutter-bloc-boilerplate/issues/new/choose). 

#### Solve an issue

Scan through our [existing issues](https://github.com/xscotophilic/flutter-bloc-boilerplate/issues) to find one that interests you. You can narrow down the search using `labels` as filters. As a general rule, we don’t assign issues to anyone. If you find an issue to work on, you are welcome to open a PR with a fix.

### Make Changes

#### Make changes locally

1. Fork the repository.
- Using the command line:
  - [Fork the repo](https://github.com/xscotophilic/flutter-bloc-boilerplate) so that you can make your changes without affecting the original project until you're ready to merge them.

- Clone the forked repo to your local machine.

2. Create a working branch and start with your changes!
- Using the command line:
  - Create a new branch with a descriptive name. For example, `git checkout -b update-readme`.
  - Make your changes.
  - Commit your changes. For example, `git commit -m "Update README.md"`.
  - Push your changes to your fork. For example, `git push origin update-readme`.

3. Test your changes locally.
- Using the command line:
  - Run `flutter pub get` to install dependencies.
  - Run `flutter analyze` to check for any static analysis issues.
  - Run `flutter test` to run all the tests.
  - Run `flutter run` to run the app.

4. Update the documentation if necessary.

5. Update the CHANGELOG.md file with a description of your changes.

6. Update the version number in pubspec.yaml following [semantic versioning](https://semver.org/).

### Pull Request

When you're finished with the changes, create a pull request, also known as a PR.
- Fill the "Ready for review" template so that we can review your PR. This template helps reviewers understand your changes as well as the purpose of your pull request. 
- Don't forget to [link PR to issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue) if you are solving one.
- Enable the checkbox to [allow maintainer edits](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/allowing-changes-to-a-pull-request-branch-created-from-a-fork) so the branch can be updated for a merge.
Once you submit your PR, a team member will review your proposal. We may ask questions or request additional information.
- We may ask for changes to be made before a PR can be merged, either using [suggested changes](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/incorporating-feedback-in-your-pull-request) or pull request comments. You can apply suggested changes directly through the UI. You can make any other changes in your fork, then commit them to your branch.
- As you update your PR and apply changes, mark each conversation as [resolved](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/commenting-on-a-pull-request#resolving-conversations).
- If you run into any merge issues, checkout this [git tutorial](https://github.com/skills/resolve-merge-conflicts) to help you resolve merge conflicts and other issues.

### Your PR is merged!

Congratulations :tada::tada: The team thanks you :sparkles:. 

Once your PR is merged, your contributions will be publicly visible on the [Flutter Boilerplate](https://github.com/xscotophilic/flutter-bloc-boilerplate). 