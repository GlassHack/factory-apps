.class Lcom/google/glass/home/timeline/MainTimelineActivity$3;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->createTimelineView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 274
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->M_CVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$3;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 277
    :cond_0
    return-void
.end method
