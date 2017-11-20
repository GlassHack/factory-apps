.class Lcom/google/userfeedback/android/api/UserFeedback$3;
.super Ljava/lang/Object;
.source "UserFeedback.java"

# interfaces
.implements Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedback;->buildAndSubmitReport(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedback;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$sendSynchronously:Z


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedback;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/userfeedback/android/api/UserFeedback;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->val$description:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->val$sendSynchronously:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->val$description:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->val$sendSynchronously:Z

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedback;->submitFeedback(ZZLjava/lang/String;Z)V

    .line 307
    return-void
.end method
