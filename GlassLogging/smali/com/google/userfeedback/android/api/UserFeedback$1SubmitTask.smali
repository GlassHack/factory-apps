.class Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;
.super Landroid/os/AsyncTask;
.source "UserFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedback;->submitFeedback(ZZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubmitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedback;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/userfeedback/android/api/UserFeedback;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->isReportReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->blockOnReportConstruction()V

    .line 202
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 196
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->startSendUserFeedbackIntent()V

    .line 208
    return-void
.end method
