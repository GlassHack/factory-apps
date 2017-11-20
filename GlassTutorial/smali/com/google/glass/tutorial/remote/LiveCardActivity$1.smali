.class Lcom/google/glass/tutorial/remote/LiveCardActivity$1;
.super Landroid/database/DataSetObserver;
.source "LiveCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/remote/LiveCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/remote/LiveCardActivity;

.field private final updateTutorialsRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/remote/LiveCardActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/tutorial/remote/LiveCardActivity;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1;->this$0:Lcom/google/glass/tutorial/remote/LiveCardActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 22
    new-instance v0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1$1;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/remote/LiveCardActivity$1$1;-><init>(Lcom/google/glass/tutorial/remote/LiveCardActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1;->updateTutorialsRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1;->this$0:Lcom/google/glass/tutorial/remote/LiveCardActivity;

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1;->updateTutorialsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/remote/LiveCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method
