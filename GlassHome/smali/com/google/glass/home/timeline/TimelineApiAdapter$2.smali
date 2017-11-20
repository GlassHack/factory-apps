.class Lcom/google/glass/home/timeline/TimelineApiAdapter$2;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "TimelineApiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineApiAdapter;->inflateViewFromCard(Lcom/google/android/glass/timeline/HostedCard;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineApiAdapter;

.field final synthetic val$card:Lcom/google/android/glass/timeline/HostedCard;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineApiAdapter;Landroid/content/Context;Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/TimelineApiAdapter;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    iput-object p3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-direct {p0, p2}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private changeOkayGlassStatus()V
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->this$0:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-static {v1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->access$100(Lcom/google/glass/home/timeline/TimelineApiAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/voice/OkayGlassClient;

    .line 242
    .local v0, "client":Lcom/google/android/glass/voice/OkayGlassClient;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {v0}, Lcom/google/android/glass/voice/OkayGlassClient;->start()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/glass/voice/OkayGlassClient;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;->dispatchSetSelected(Z)V

    .line 231
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->changeOkayGlassStatus()V

    .line 232
    return-void
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/HostedCard;->activate()V

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;->onWindowFocusChanged(Z)V

    .line 237
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$2;->changeOkayGlassStatus()V

    .line 238
    return-void
.end method
