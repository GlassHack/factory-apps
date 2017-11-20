.class Lcom/google/glass/widget/FastScrollOverlay$2;
.super Ljava/lang/Object;
.source "FastScrollOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/FastScrollOverlay;->updateLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/FastScrollOverlay;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/FastScrollOverlay;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/glass/widget/FastScrollOverlay$2;->this$0:Lcom/google/glass/widget/FastScrollOverlay;

    iput-object p2, p0, Lcom/google/glass/widget/FastScrollOverlay$2;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 309
    iget-object v0, p0, Lcom/google/glass/widget/FastScrollOverlay$2;->this$0:Lcom/google/glass/widget/FastScrollOverlay;

    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay$2;->val$itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/glass/widget/FastScrollOverlay;->access$100(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lcom/google/glass/widget/FastScrollOverlay$2;->this$0:Lcom/google/glass/widget/FastScrollOverlay;

    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay$2;->val$itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/glass/widget/FastScrollOverlay;->access$000(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V

    .line 311
    return-void
.end method
