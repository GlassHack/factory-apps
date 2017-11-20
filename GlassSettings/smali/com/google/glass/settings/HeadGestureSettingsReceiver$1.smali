.class Lcom/google/glass/settings/HeadGestureSettingsReceiver$1;
.super Ljava/lang/Object;
.source "HeadGestureSettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/HeadGestureSettingsReceiver;->loadAndExecuteSettingsAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/HeadGestureSettingsReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/HeadGestureSettingsReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/HeadGestureSettingsReceiver;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/settings/HeadGestureSettingsReceiver$1;->this$0:Lcom/google/glass/settings/HeadGestureSettingsReceiver;

    iput-object p2, p0, Lcom/google/glass/settings/HeadGestureSettingsReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 35
    iget-object v2, p0, Lcom/google/glass/settings/HeadGestureSettingsReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/settings/HeadGestureUtils;->getHeadWakeAngleDegsFromSettings(Landroid/content/Context;)F

    move-result v0

    .line 36
    .local v0, "angDegs":F
    iget-object v2, p0, Lcom/google/glass/settings/HeadGestureSettingsReceiver$1;->val$context:Landroid/content/Context;

    .line 37
    invoke-static {v2}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->getHeadWakeHysteresisAngleDegs(Landroid/content/Context;)F

    move-result v1

    .line 38
    .local v1, "hysteresisDegs":F
    invoke-static {}, Lcom/google/glass/settings/HeadGestureSettingsReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Setting the head wake angles: trigger=%s hysteresis=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v2, p0, Lcom/google/glass/settings/HeadGestureSettingsReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/google/glass/settings/HeadGestureUtils;->setGlobalLookUpGestureParameters(Landroid/content/Context;FF)Z

    .line 40
    return-void
.end method
