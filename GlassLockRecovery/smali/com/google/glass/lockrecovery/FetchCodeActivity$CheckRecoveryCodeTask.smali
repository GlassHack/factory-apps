.class Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;
.super Landroid/os/AsyncTask;
.source "FetchCodeActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/lockrecovery/FetchCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckRecoveryCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/lockrecovery/FetchCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/lockrecovery/FetchCodeActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->getInstance()Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    .line 61
    invoke-virtual {v3, v4}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$002(Lcom/google/glass/lockrecovery/FetchCodeActivity;Lcom/google/glass/lockrecovery/RecoveryCodeManager;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    .line 62
    iget-object v2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v2}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$000(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->hasCode()Z

    move-result v0

    .line 63
    .local v0, "managerHasCode":Z
    iget-object v2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v2}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$000(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->hasTutorialCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 65
    .local v1, "shouldShowTutorial":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 63
    .end local v1    # "shouldShowTutorial":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 70
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 71
    .local v0, "managerHasCode":Z
    iget-object v2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/google/glass/lockrecovery/FetchCodeActivity;->shouldShowTutorial:Z

    .line 73
    if-nez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$100(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "No recovery code present -- attempting to fetch one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$200(Lcom/google/glass/lockrecovery/FetchCodeActivity;)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    iget-boolean v1, v1, Lcom/google/glass/lockrecovery/FetchCodeActivity;->shouldShowTutorial:Z

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$100(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Recovery code present, user hasn\'t seen tutorial -- showing tutorial."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$300(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->showTutorialVideo(Landroid/app/Activity;I)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v1}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$100(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Recovery code present, tutorial shown before -- returning OK"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->setResult(I)V

    .line 87
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-virtual {v1}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
