//created form submission class for maintaining form submissin events.
abstract class FormSubmissionStatus {
  const FormSubmissionStatus();
}

class InitialFormStatus extends FormSubmissionStatus {
  const InitialFormStatus();
}

class FormSubmitting extends FormSubmissionStatus {}

class SubmissionSuccess extends FormSubmissionStatus {
  final String token;
  SubmissionSuccess(this.token);
}

class SubmissionFailed extends FormSubmissionStatus {
  // final Exception exception;

  SubmissionFailed();//(this.exception);
}
