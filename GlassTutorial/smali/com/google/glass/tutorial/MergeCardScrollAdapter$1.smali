.class Lcom/google/glass/tutorial/MergeCardScrollAdapter$1;
.super Landroid/database/DataSetObserver;
.source "MergeCardScrollAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/MergeCardScrollAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/MergeCardScrollAdapter;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/MergeCardScrollAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter$1;->this$0:Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter$1;->this$0:Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->notifyDataSetChanged()V

    .line 24
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter$1;->this$0:Lcom/google/glass/tutorial/MergeCardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->notifyDataSetInvalidated()V

    .line 29
    return-void
.end method
