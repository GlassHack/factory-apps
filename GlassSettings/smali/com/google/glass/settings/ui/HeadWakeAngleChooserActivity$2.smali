.class Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$2;
.super Ljava/lang/Object;
.source "HeadWakeAngleChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->onConfirm()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

.field final synthetic val$pitchToSave:F


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$2;->this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    iput p2, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$2;->val$pitchToSave:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$2;->this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    iget v1, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$2;->val$pitchToSave:F

    invoke-static {v0, v1}, Lcom/google/glass/settings/HeadGestureUtils;->saveHeadWakeAngleDegsToSettings(Landroid/content/Context;F)V

    .line 154
    return-void
.end method
