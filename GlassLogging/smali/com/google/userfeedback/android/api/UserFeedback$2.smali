.class Lcom/google/userfeedback/android/api/UserFeedback$2;
.super Ljava/lang/Object;
.source "UserFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedback;->buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedback;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$feedbackText:Ljava/lang/String;

.field final synthetic val$includeScreenshot:Z

.field final synthetic val$includeSystemLogs:Z


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedback;ZZLjava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/userfeedback/android/api/UserFeedback;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    iput-boolean p2, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$includeScreenshot:Z

    iput-boolean p3, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$includeSystemLogs:Z

    iput-object p4, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$feedbackText:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    iget-boolean v1, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$includeScreenshot:Z

    iget-boolean v2, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$includeSystemLogs:Z

    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$feedbackText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/userfeedback/android/api/UserFeedback;->submitFeedback(ZZLjava/lang/String;Z)V

    .line 257
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 258
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 259
    return-void
.end method
