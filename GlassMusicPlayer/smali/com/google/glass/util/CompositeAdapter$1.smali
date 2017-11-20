.class Lcom/google/glass/util/CompositeAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CompositeAdapter;


# direct methods
.method constructor <init>(Lcom/google/glass/util/CompositeAdapter;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/util/CompositeAdapter$1;->this$0:Lcom/google/glass/util/CompositeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter$1;->this$0:Lcom/google/glass/util/CompositeAdapter;

    invoke-virtual {v0}, Lcom/google/glass/util/CompositeAdapter;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter$1;->this$0:Lcom/google/glass/util/CompositeAdapter;

    invoke-virtual {v0}, Lcom/google/glass/util/CompositeAdapter;->notifyDataSetInvalidated()V

    .line 30
    return-void
.end method
