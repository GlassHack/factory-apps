.class Lcom/google/glass/lockrecovery/FetchCodeActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "FetchCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/lockrecovery/FetchCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/lockrecovery/FetchCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/lockrecovery/FetchCodeActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$1;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$1;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-static {v0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->access$100(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onDone called!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$1;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-virtual {v0, v3}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->setResult(I)V

    .line 97
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$1;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-virtual {v0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->finish()V

    .line 98
    return-void
.end method
