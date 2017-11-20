.class Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "HeadWakeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadWakeStateChangeListener"
.end annotation


# instance fields
.field final enableState:Z

.field final synthetic this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Z)V
    .locals 0
    .param p2, "enableState"    # Z

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    .line 76
    iput-boolean p2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->enableState:Z

    .line 77
    return-void
.end method

.method private getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->enableState:Z

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
    .line 81
    invoke-static {}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Turn %s head wake cancelled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public onDone()V
    .locals 5

    .prologue
    .line 86
    invoke-static {}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Turn %s head wake confirmed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$100(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    invoke-static {v1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$200(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->enableState:Z

    invoke-static {v0, v1, v2}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->setHeadWakeEnabledPersistent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Z)V

    .line 88
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    iget-boolean v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->enableState:Z

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$300(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Z)V

    .line 89
    return-void
.end method
