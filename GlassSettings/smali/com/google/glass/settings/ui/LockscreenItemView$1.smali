.class Lcom/google/glass/settings/ui/LockscreenItemView$1;
.super Landroid/os/AsyncTask;
.source "LockscreenItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LockscreenItemView;->refreshSettingsUi()V
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/LockscreenItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LockscreenItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/LockscreenItemView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/glass/settings/ui/LockscreenItemView$1;->this$0:Lcom/google/glass/settings/ui/LockscreenItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 9
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
    const/4 v8, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/google/glass/settings/ui/LockscreenItemView$1;->this$0:Lcom/google/glass/settings/ui/LockscreenItemView;

    invoke-virtual {v4}, Lcom/google/glass/settings/ui/LockscreenItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LockscreenItemView$1;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/google/glass/settings/ui/LockscreenItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Fetching lockscreen and dondoff settings."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/google/android/glass/security/LockScreenManager;->get()Lcom/google/android/glass/security/LockScreenManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/glass/security/LockScreenManager;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 84
    .local v2, "lockscreen":Z
    iget-object v4, p0, Lcom/google/glass/settings/ui/LockscreenItemView$1;->this$0:Lcom/google/glass/settings/ui/LockscreenItemView;

    invoke-virtual {v4}, Lcom/google/glass/settings/ui/LockscreenItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "on_head_detection_enabled"

    invoke-static {v4, v5, v8}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 86
    .local v1, "dondoff":Z
    invoke-static {}, Lcom/google/glass/settings/ui/LockscreenItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "lockscreen state is %s, dondoff state is %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 90
    .end local v1    # "dondoff":Z
    .end local v2    # "lockscreen":Z
    :cond_0
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/LockscreenItemView$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
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
    .line 95
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/google/glass/settings/ui/LockscreenItemView$1;->this$0:Lcom/google/glass/settings/ui/LockscreenItemView;

    sget v1, Lcom/google/glass/settings/ui/R$id;->icon:I

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LockscreenItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/glass/settings/ui/LockscreenItemView$1;->this$0:Lcom/google/glass/settings/ui/LockscreenItemView;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/google/glass/settings/ui/LockscreenItemView;->access$102(Lcom/google/glass/settings/ui/LockscreenItemView;Z)Z

    .line 97
    iget-object v1, p0, Lcom/google/glass/settings/ui/LockscreenItemView$1;->this$0:Lcom/google/glass/settings/ui/LockscreenItemView;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/google/glass/settings/ui/LockscreenItemView;->access$202(Lcom/google/glass/settings/ui/LockscreenItemView;Z)Z

    .line 98
    iget-object v0, p0, Lcom/google/glass/settings/ui/LockscreenItemView$1;->this$0:Lcom/google/glass/settings/ui/LockscreenItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/LockscreenItemView;->access$300(Lcom/google/glass/settings/ui/LockscreenItemView;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/LockscreenItemView$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
