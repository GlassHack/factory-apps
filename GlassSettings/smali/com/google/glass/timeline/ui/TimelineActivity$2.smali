.class Lcom/google/glass/timeline/ui/TimelineActivity$2;
.super Ljava/lang/Object;
.source "TimelineActivity.java"

# interfaces
.implements Lcom/google/glass/widget/GlassTipsManager$TipsCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineActivity;->handleShowGlassTips(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineActivity;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$2;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowTips()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$2;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$500(Lcom/google/glass/timeline/ui/TimelineActivity;)Z

    move-result v0

    return v0
.end method

.method public getTipsText()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    return-object v0
.end method
