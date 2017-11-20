.class Lcom/google/glass/home/timeline/TimelineApiAdapter$3;
.super Lcom/google/glass/widget/horizontalscroll/TextureViewCard;
.source "TimelineApiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineApiAdapter;->createTextureViewCard(Lcom/google/android/glass/timeline/HostedCard;)Landroid/view/View;
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
    .line 265
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->this$0:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    iput-object p3, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-direct {p0, p2}, Lcom/google/glass/widget/horizontalscroll/TextureViewCard;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private changeOkayGlassStatus()V
    .locals 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->this$0:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-static {v1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->access$100(Lcom/google/glass/home/timeline/TimelineApiAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/voice/OkayGlassClient;

    .line 335
    .local v0, "client":Lcom/google/android/glass/voice/OkayGlassClient;
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {v0}, Lcom/google/android/glass/voice/OkayGlassClient;->start()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/glass/voice/OkayGlassClient;->stop()V

    goto :goto_0
.end method

.method private shouldPauseRendering()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 318
    :goto_0
    return v1

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 311
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 312
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 313
    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 318
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/google/glass/widget/horizontalscroll/TextureViewCard;->dispatchSetSelected(Z)V

    .line 324
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->changeOkayGlassStatus()V

    .line 325
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 283
    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/TextureViewCard;->onAttachedToWindow()V

    .line 286
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 287
    .local v0, "parentVisibility":I
    if-eqz v0, :cond_0

    move v1, v3

    .line 288
    .local v1, "pausing":Z
    :goto_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-virtual {v2, v1}, Lcom/google/android/glass/timeline/HostedCard;->pauseRendering(Z)V

    .line 289
    invoke-static {}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v5, "onAttachedToWindow for card: %s, called pauseRendering with: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    return-void

    .end local v1    # "pausing":Z
    :cond_0
    move v1, v4

    .line 287
    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/HostedCard;->activate()V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 294
    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/TextureViewCard;->onDetachedFromWindow()V

    .line 298
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-virtual {v0, v2}, Lcom/google/android/glass/timeline/HostedCard;->pauseRendering(Z)V

    .line 299
    invoke-static {}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onDetachedToWindow for card: %s, pausing rendering."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/TextureViewCard;->onVisibilityChanged(Landroid/view/View;I)V

    .line 276
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->shouldPauseRendering()Z

    move-result v0

    .line 277
    .local v0, "pausing":Z
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    invoke-virtual {v1, v0}, Lcom/google/android/glass/timeline/HostedCard;->pauseRendering(Z)V

    .line 278
    invoke-static {}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onVisibilityChanged, card: %s, called pauseRendering with: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->val$card:Lcom/google/android/glass/timeline/HostedCard;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/google/glass/widget/horizontalscroll/TextureViewCard;->onWindowFocusChanged(Z)V

    .line 330
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineApiAdapter$3;->changeOkayGlassStatus()V

    .line 331
    return-void
.end method
