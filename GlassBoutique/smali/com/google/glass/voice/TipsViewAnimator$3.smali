.class Lcom/google/glass/voice/TipsViewAnimator$3;
.super Landroid/os/AsyncTask;
.source "TipsViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightTipInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/TipsViewAnimator;

.field final synthetic val$immediately:Z


# direct methods
.method constructor <init>(Lcom/google/glass/voice/TipsViewAnimator;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/glass/voice/TipsViewAnimator$3;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    iput-boolean p2, p0, Lcom/google/glass/voice/TipsViewAnimator$3;->val$immediately:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/TipsViewAnimator$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$3;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$700(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator$3;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v1}, Lcom/google/glass/voice/TipsViewAnimator;->access$100(Lcom/google/glass/voice/TipsViewAnimator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/TipsViewAnimator$3;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v2}, Lcom/google/glass/voice/TipsViewAnimator;->access$600(Lcom/google/glass/voice/TipsViewAnimator;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SettingsContract;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/TipsViewAnimator$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "settingsValue"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator$3;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$302(Lcom/google/glass/voice/TipsViewAnimator;I)I

    .line 128
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$3;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    iget-boolean v1, p0, Lcom/google/glass/voice/TipsViewAnimator$3;->val$immediately:Z

    invoke-static {v0, v1}, Lcom/google/glass/voice/TipsViewAnimator;->access$800(Lcom/google/glass/voice/TipsViewAnimator;Z)V

    .line 129
    return-void

    .line 127
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
