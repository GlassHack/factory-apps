.class Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "NudgeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/NudgeSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NudgeStateChangeListener"
.end annotation


# instance fields
.field final enableState:Z

.field final synthetic this$0:Lcom/google/glass/settings/ui/NudgeSettingsItemView;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)V
    .locals 0
    .param p2, "enableState"    # Z

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    .line 259
    iput-boolean p2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->enableState:Z

    .line 260
    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->enableState:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method


# virtual methods
.method public onDismissed()V
    .locals 5

    .prologue
    .line 264
    invoke-static {}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Turn %s nudge-screen-off cancelled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 269
    new-instance v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;-><init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;)V

    .line 294
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 293
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    return-void
.end method
