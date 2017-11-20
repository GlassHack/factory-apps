.class Lcom/google/glass/lockrecovery/FetchCodeActivity$2;
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
    .line 102
    iput-object p1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$2;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$2;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->dismissedEarly:Z

    .line 106
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity$2;->this$0:Lcom/google/glass/lockrecovery/FetchCodeActivity;

    invoke-virtual {v0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->finish()V

    .line 107
    return-void
.end method
