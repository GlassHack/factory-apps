.class Lcom/google/glass/util/CompositeAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CompositeAdapter;

.field final synthetic val$adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/util/CompositeAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/util/CompositeAdapter$2;->this$0:Lcom/google/glass/util/CompositeAdapter;

    iput-object p2, p0, Lcom/google/glass/util/CompositeAdapter$2;->val$adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    iput-object p3, p0, Lcom/google/glass/util/CompositeAdapter$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter$2;->val$adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->recycleView(Landroid/view/View;)V

    .line 126
    return-void
.end method
