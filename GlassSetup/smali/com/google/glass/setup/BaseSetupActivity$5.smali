.class Lcom/google/glass/setup/BaseSetupActivity$5;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity;->handleSetupViaBarcode(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$5;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$5;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->isMessageShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$5;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/BaseSetupActivity;->access$900(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_0
    return-void
.end method
