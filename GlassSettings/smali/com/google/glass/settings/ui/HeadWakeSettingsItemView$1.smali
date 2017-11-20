.class final Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;
.super Ljava/lang/Object;
.source "HeadWakeSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->setHeadWakeEnabledPersistent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enableState:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;->val$enableState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "head_wake_up_enabled"

    iget-boolean v2, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;->val$enableState:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 194
    invoke-static {}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "... done setting head wake!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    return-void
.end method
