.class Lcom/google/glass/tutorial/TutorialCardScrollAdapter$3;
.super Landroid/database/DataSetObserver;
.source "TutorialCardScrollAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialCardScrollAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/TutorialCardScrollAdapter;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$3;->this$0:Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$3;->this$0:Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    invoke-static {v0}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->access$300(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;)V

    .line 65
    return-void
.end method
