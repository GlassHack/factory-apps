.class Lcom/google/glass/tutorial/TutorialCardScrollAdapter$2;
.super Ljava/lang/Object;
.source "TutorialCardScrollAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 51
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$2;->this$0:Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 55
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$2;->this$0:Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$2;->this$0:Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    .line 56
    invoke-static {v1}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->access$100(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;)Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialManager;->getTutorials()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->access$200()Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->access$002(Lcom/google/glass/tutorial/TutorialCardScrollAdapter;Ljava/util/List;)Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialCardScrollAdapter$2;->this$0:Lcom/google/glass/tutorial/TutorialCardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialCardScrollAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method
