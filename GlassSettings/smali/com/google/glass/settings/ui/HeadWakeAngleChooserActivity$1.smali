.class Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;
.super Landroid/os/AsyncTask;
.source "HeadWakeAngleChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->onResumeInternal()V
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;->this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Float;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;->this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    invoke-static {v0}, Lcom/google/glass/settings/HeadGestureUtils;->getHeadWakeAngleDegsFromSettings(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Float;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Float;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;->this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->access$000(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;)Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->setHeadAngleDegs(F)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;->this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->access$100(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;)V

    .line 107
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$1;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method
