.class Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "HeadWakeAngleChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->showConfirmationMessageThenFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$3;->this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity$3;->this$0:Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/HeadWakeAngleChooserActivity;->finish()V

    .line 198
    return-void
.end method
