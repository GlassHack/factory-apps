.class Lcom/google/glass/widget/MessageDialog$2;
.super Ljava/lang/Object;
.source "MessageDialog.java"

# interfaces
.implements Lcom/google/android/glass/widget/Slider$GracePeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/MessageDialog;->showTemporaryContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/MessageDialog;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$2;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGracePeriodCancel()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$2;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 397
    return-void
.end method

.method public onGracePeriodEnd()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$2;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->access$1300(Lcom/google/glass/widget/MessageDialog;)V

    .line 392
    return-void
.end method
