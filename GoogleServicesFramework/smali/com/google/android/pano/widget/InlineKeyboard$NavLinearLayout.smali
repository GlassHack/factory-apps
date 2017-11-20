.class public Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;
.super Landroid/widget/RelativeLayout;
.source "InlineKeyboard.java"

# interfaces
.implements Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/InlineKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavLinearLayout"
.end annotation


# instance fields
.field private mCircleSize:I

.field private mKeyCircle:Landroid/view/View;

.field private mKeys:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 620
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 624
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 627
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 628
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$layout;->keyboard_keys_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 629
    sget v0, Lcom/google/android/pano/R$id;->keys:I

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    .line 630
    sget v0, Lcom/google/android/pano/R$id;->circle:I

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    .line 631
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$dimen;->key_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mCircleSize:I

    .line 633
    return-void
.end method

.method private findRelativeKey(II)Landroid/view/View;
    .locals 5
    .param p1, "direction"    # I
    .param p2, "repeats"    # I

    .prologue
    .line 686
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 687
    .local v0, "currentIndex":I
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 688
    .local v2, "numberOfKeys":I
    add-int/lit8 v4, p2, 0x1

    const/16 v3, 0x11

    if-ne p1, v3, :cond_1

    const/4 v3, -0x2

    :goto_0
    mul-int/2addr v3, v4

    add-int v1, v0, v3

    .line 689
    .local v1, "newIndex":I
    add-int/lit8 v3, v2, -0x1

    if-le v1, v3, :cond_2

    .line 690
    add-int/lit8 v1, v2, -0x1

    .line 694
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 688
    .end local v1    # "newIndex":I
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 691
    .restart local v1    # "newIndex":I
    :cond_2
    if-gez v1, :cond_0

    .line 692
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleArrowKey(II)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "repeats"    # I

    .prologue
    .line 698
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->findRelativeKey(II)Landroid/view/View;

    move-result-object v0

    .line 699
    .local v0, "key":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 701
    const/4 v1, 0x1

    .line 703
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addKey(Landroid/view/View;)V
    .locals 1
    .param p1, "key"    # Landroid/view/View;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 645
    return-void
.end method

.method public getKeyAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getKeysHolder()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onNavigationEvent(Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    .prologue
    const/4 v1, 0x5

    .line 677
    iget v2, p1, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move-object v0, p1

    .line 678
    check-cast v0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .line 679
    .local v0, "flingEv":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    if-le v2, v1, :cond_0

    .line 680
    .local v1, "repeats":I
    :goto_0
    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    invoke-direct {p0, v2, v1}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->handleArrowKey(II)Z

    move-result v2

    .line 682
    .end local v0    # "flingEv":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    .end local v1    # "repeats":I
    :goto_1
    return v2

    .line 679
    .restart local v0    # "flingEv":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    :cond_0
    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    goto :goto_0

    .line 682
    .end local v0    # "flingEv":Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeAllKeys()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 637
    return-void
.end method

.method public removeFocus()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 641
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 657
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 658
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    .line 659
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mCircleSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 660
    .local v0, "x":I
    if-gez v0, :cond_1

    .line 661
    const/4 v0, 0x0

    .line 665
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->invalidate()V

    .line 666
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 667
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 668
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :goto_1
    return-void

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mCircleSize:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeys:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mCircleSize:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 670
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->mKeyCircle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method
