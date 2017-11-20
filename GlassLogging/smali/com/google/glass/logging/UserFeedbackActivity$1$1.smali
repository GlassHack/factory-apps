.class Lcom/google/glass/logging/UserFeedbackActivity$1$1;
.super Ljava/lang/Object;
.source "UserFeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserFeedbackActivity$1;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserFeedbackActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/logging/UserFeedbackActivity$1;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/glass/logging/UserFeedbackActivity$1$1;->this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 333
    :try_start_0
    new-instance v3, Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {v3}, Lcom/google/userfeedback/android/api/UserFeedback;-><init>()V

    .line 334
    .local v3, "userFeedback":Lcom/google/userfeedback/android/api/UserFeedback;
    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    iget-object v4, p0, Lcom/google/glass/logging/UserFeedbackActivity$1$1;->this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;

    iget-object v4, v4, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    const/4 v5, 0x0

    const-string v6, "com.google.glass.logging.USER_INITIATED_FEEDBACK_REPORT"

    invoke-direct {v2, v4, v5, v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v2, "feedbackSpec":Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    invoke-static {}, Lcom/google/glass/android/accounts/AccountManagerProvider;->getInstance()Lcom/google/glass/android/accounts/AccountManagerProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/logging/UserFeedbackActivity$1$1;->this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;

    iget-object v5, v5, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-virtual {v4, v5}, Lcom/google/glass/android/accounts/AccountManagerProvider;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 339
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    iget-object v4, p0, Lcom/google/glass/logging/UserFeedbackActivity$1$1;->this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;

    iget-object v4, v4, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-virtual {v4, v3, v2, v0}, Lcom/google/glass/logging/UserFeedbackActivity;->sendFeedback(Lcom/google/userfeedback/android/api/UserFeedback;Lcom/google/userfeedback/android/api/UserFeedbackSpec;Landroid/accounts/AccountManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "feedbackSpec":Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .end local v3    # "userFeedback":Lcom/google/userfeedback/android/api/UserFeedback;
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/google/glass/logging/UserFeedbackActivity$1$1;->this$1:Lcom/google/glass/logging/UserFeedbackActivity$1;

    iget-object v4, v4, Lcom/google/glass/logging/UserFeedbackActivity$1;->this$0:Lcom/google/glass/logging/UserFeedbackActivity;

    invoke-static {v4}, Lcom/google/glass/logging/UserFeedbackActivity;->access$000(Lcom/google/glass/logging/UserFeedbackActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Failed to create and send feedback."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
