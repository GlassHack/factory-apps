.class public Lcom/google/glass/maps/NavigationPaneManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HIDE_DELAY_MILLIS:J = 0xf0L


# instance fields
.field private final allowAnimations:Z

.field private curPane:Landroid/view/View;

.field private final handler:Landroid/os/Handler;

.field private final hideLoadingSliderRunnable:Ljava/lang/Runnable;

.field private indeterminateSlider:Lcom/google/android/glass/widget/Slider$Indeterminate;

.field private final panes:Ljava/util/List;

.field private final showLoadingSliderRunnable:Ljava/lang/Runnable;

.field private slider:Lcom/google/android/glass/widget/Slider;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->panes:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/google/glass/maps/NavigationPaneManager$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationPaneManager$1;-><init>(Lcom/google/glass/maps/NavigationPaneManager;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->showLoadingSliderRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/google/glass/maps/NavigationPaneManager$2;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationPaneManager$2;-><init>(Lcom/google/glass/maps/NavigationPaneManager;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->hideLoadingSliderRunnable:Ljava/lang/Runnable;

    .line 98
    sget v0, Lcom/google/glass/maps/R$id;->step_pane_1_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 99
    sget v0, Lcom/google/glass/maps/R$id;->step_pane_2_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 100
    sget v0, Lcom/google/glass/maps/R$id;->route_overview_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 101
    sget v0, Lcom/google/glass/maps/R$id;->loading_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 102
    sget v0, Lcom/google/glass/maps/R$id;->voice_result_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 103
    sget v0, Lcom/google/glass/maps/R$id;->rerouting_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 104
    sget v0, Lcom/google/glass/maps/R$id;->destinations_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 105
    sget v0, Lcom/google/glass/maps/R$id;->trips_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 106
    sget v0, Lcom/google/glass/maps/R$id;->steps_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 107
    sget v0, Lcom/google/glass/maps/R$id;->transit_map_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationPaneManager;->addPane(Landroid/view/ViewGroup;I)V

    .line 108
    iput-boolean p2, p0, Lcom/google/glass/maps/NavigationPaneManager;->allowAnimations:Z

    .line 109
    invoke-static {p1}, Lcom/google/android/glass/widget/Slider;->from(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->slider:Lcom/google/android/glass/widget/Slider;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/NavigationPaneManager;)Lcom/google/android/glass/widget/Slider$Indeterminate;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->indeterminateSlider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/maps/NavigationPaneManager;Lcom/google/android/glass/widget/Slider$Indeterminate;)Lcom/google/android/glass/widget/Slider$Indeterminate;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/maps/NavigationPaneManager;->indeterminateSlider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/maps/NavigationPaneManager;)Lcom/google/android/glass/widget/Slider;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->slider:Lcom/google/android/glass/widget/Slider;

    return-object v0
.end method

.method private addPane(Landroid/view/ViewGroup;I)V
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 274
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->panes:Ljava/util/List;

    new-instance v2, Lcom/google/glass/maps/NavigationPaneManager$Pane;

    invoke-direct {v2, v0}, Lcom/google/glass/maps/NavigationPaneManager$Pane;-><init>(Landroid/view/ViewStub;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method private getPane(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->panes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationPaneManager$Pane;

    .line 265
    iget v2, v0, Lcom/google/glass/maps/NavigationPaneManager$Pane;->id:I

    if-ne v2, p1, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager$Pane;->getView()Landroid/view/View;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStepPane(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 114
    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/glass/maps/R$id;->step_pane_1:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/glass/maps/R$id;->step_pane_2:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLoadingSlider()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->hideLoadingSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->showLoadingSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method private showPane(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationPaneManager;->isStepPane(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/glass/maps/NavigationPaneManager;->isStepPane(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->allowAnimations:Z

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/google/glass/maps/view/Animations;->fadeTransition(Landroid/view/View;Landroid/view/View;)V

    .line 259
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 222
    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    if-ne v0, v1, :cond_5

    .line 224
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationPaneManager;->delayClearLoadingSlider()V

    .line 227
    :cond_5
    iget-boolean v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->allowAnimations:Z

    if-eqz v1, :cond_b

    .line 228
    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/google/glass/maps/R$id;->destinations_pane:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/google/glass/maps/R$id;->steps_pane:I

    if-ne v0, v1, :cond_a

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-static {v0}, Lcom/google/glass/maps/view/Animations;->pullOutFromBottomAndHide(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 239
    :cond_7
    :goto_2
    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 241
    iget-boolean v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->allowAnimations:Z

    if-eqz v1, :cond_e

    .line 242
    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/glass/maps/R$id;->destinations_pane:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/glass/maps/R$id;->steps_pane:I

    if-ne v0, v1, :cond_c

    .line 244
    :cond_8
    invoke-static {p1}, Lcom/google/glass/maps/view/Animations;->pushInFromBottom(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 254
    :goto_3
    sget v1, Lcom/google/glass/maps/R$id;->loading_pane:I

    if-eq v0, v1, :cond_9

    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    if-ne v0, v1, :cond_1

    .line 255
    :cond_9
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationPaneManager;->showLoadingSlider()V

    goto :goto_1

    .line 232
    :cond_a
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-static {v0}, Lcom/google/glass/maps/view/Animations;->pullOutFromTopAndHide(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 235
    :cond_b
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 245
    :cond_c
    sget v1, Lcom/google/glass/maps/R$id;->voice_result_pane:I

    if-ne v0, v1, :cond_d

    .line 246
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 248
    :cond_d
    invoke-static {p1}, Lcom/google/glass/maps/view/Animations;->pushInFromTop(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 251
    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public delayClearLoadingSlider()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->hideLoadingSliderRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    return-void
.end method

.method public getCurPane()Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    return-object v0
.end method

.method public hidePane()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public isPaneShowing(I)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    instance-of v1, v1, Lcom/google/glass/input/InputListener;

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    check-cast v0, Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    instance-of v1, v1, Lcom/google/glass/input/InputListener;

    if-eqz v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    check-cast v0, Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    instance-of v1, v1, Lcom/google/glass/input/InputListener;

    if-eqz v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    check-cast v0, Lcom/google/glass/input/InputListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/glass/input/InputListener;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    goto :goto_0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    instance-of v1, v1, Lcom/google/glass/input/InputListener;

    if-eqz v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    check-cast v0, Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public showPane(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationPaneManager;->getPane(I)Landroid/view/View;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(Landroid/view/View;)V

    .line 142
    return-object v0
.end method

.method public showStepPane()Landroid/view/View;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager;->curPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/glass/maps/R$id;->step_pane_1:I

    if-ne v0, v1, :cond_0

    .line 151
    sget v0, Lcom/google/glass/maps/R$id;->step_pane_2:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/google/glass/maps/R$id;->step_pane_1:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
