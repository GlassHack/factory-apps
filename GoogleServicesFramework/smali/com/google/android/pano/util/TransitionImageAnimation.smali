.class public Lcom/google/android/pano/util/TransitionImageAnimation;
.super Ljava/lang/Object;
.source "TransitionImageAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/util/TransitionImageAnimation$Listener;
    }
.end annotation


# static fields
.field private static DEFAULT_CANCEL_TRANSITION_MS:J

.field private static DEFAULT_TRANSITION_DURATION_MS:J

.field private static DEFAULT_TRANSITION_START_DELAY_MS:J

.field private static DEFAULT_TRANSITION_TIMEOUT_MS:J

.field private static sTmpRect1:Landroid/graphics/RectF;

.field private static sTmpRect2:Landroid/graphics/RectF;


# instance fields
.field private mCancelTransitionMs:J

.field private mCancelTransitionRunnable:Ljava/lang/Runnable;

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/pano/util/TransitionImage;",
            ">;"
        }
    .end annotation
.end field

.field private mInitializeClip:Landroid/view/View$OnLayoutChangeListener;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

.field private mListeningLayout:Z

.field private mRoot:Landroid/view/ViewGroup;

.field private mState:I

.field private mTransitionDurationMs:J

.field private mTransitionStartDelayMs:J

.field private mTransitionTimeoutMs:J

.field private mTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/util/TransitionImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 46
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_TIMEOUT_MS:J

    .line 47
    sput-wide v2, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_CANCEL_TRANSITION_MS:J

    .line 48
    sput-wide v2, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_DURATION_MS:J

    .line 49
    const-wide/16 v0, 0xa0

    sput-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_START_DELAY_MS:J

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect1:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect2:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    sget-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionTimeoutMs:J

    .line 54
    sget-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_CANCEL_TRANSITION_MS:J

    iput-wide v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mCancelTransitionMs:J

    .line 55
    sget-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_DURATION_MS:J

    iput-wide v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionDurationMs:J

    .line 56
    sget-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_START_DELAY_MS:J

    iput-wide v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionStartDelayMs:J

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/google/android/pano/util/TransitionImageMatcher;

    invoke-direct {v0}, Lcom/google/android/pano/util/TransitionImageMatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mComparator:Ljava/util/Comparator;

    .line 189
    new-instance v0, Lcom/google/android/pano/util/TransitionImageAnimation$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$1;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mCancelTransitionRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v0, Lcom/google/android/pano/util/TransitionImageAnimation$2;

    invoke-direct {v0, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$2;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mInitializeClip:Landroid/view/View$OnLayoutChangeListener;

    .line 73
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/pano/util/TransitionImageAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListeningLayout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/pano/util/TransitionImageAnimation;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/pano/util/TransitionImageAnimation;->setProgress(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/pano/util/TransitionImageAnimation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/pano/util/TransitionImageAnimation;)Lcom/google/android/pano/util/TransitionImageAnimation$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/pano/util/TransitionImageAnimation;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/pano/util/TransitionImageAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    return p1
.end method

.method private cancelTransition(Landroid/view/View;)V
    .locals 3
    .param p1, "iv"    # Landroid/view/View;

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mCancelTransitionMs:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/pano/util/TransitionImageAnimation$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/pano/util/TransitionImageAnimation$5;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 295
    return-void
.end method

.method private setProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/4 v5, 0x0

    .line 200
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 201
    .local v1, "lastIndex":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 202
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/util/TransitionImageView;

    .line 203
    .local v2, "view":Lcom/google/android/pano/util/TransitionImageView;
    invoke-virtual {v2, p1}, Lcom/google/android/pano/util/TransitionImageView;->setProgress(F)V

    .line 204
    sget-object v3, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect2:Landroid/graphics/RectF;

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 205
    sget-object v3, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect2:Landroid/graphics/RectF;

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 206
    sget-object v3, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect2:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 207
    sget-object v3, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect2:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 208
    sget-object v3, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect2:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Lcom/google/android/pano/util/WindowLocationUtil;->getLocationsInWindow(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 209
    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->clearExcludeClipRect()V

    .line 211
    sget-object v3, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect1:Landroid/graphics/RectF;

    sget-object v4, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect2:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 218
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->invalidate()V

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    :cond_0
    sget-object v3, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect1:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lcom/google/android/pano/util/TransitionImageView;->setExcludeClipRect(Landroid/graphics/RectF;)V

    .line 216
    sget-object v3, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect1:Landroid/graphics/RectF;

    sget-object v4, Lcom/google/android/pano/util/TransitionImageAnimation;->sTmpRect2:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 220
    .end local v2    # "view":Lcom/google/android/pano/util/TransitionImageView;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTransitionSource(Lcom/google/android/pano/util/TransitionImage;)V
    .locals 3
    .param p1, "src"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    .line 165
    iget v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eqz v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Lcom/google/android/pano/util/TransitionImageView;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/pano/util/TransitionImageView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "view":Lcom/google/android/pano/util/TransitionImageView;
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v0, p1}, Lcom/google/android/pano/util/TransitionImageView;->setSourceTransition(Lcom/google/android/pano/util/TransitionImage;)V

    .line 171
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-boolean v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListeningLayout:Z

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListeningLayout:Z

    .line 174
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mInitializeClip:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public addTransitionTarget(Lcom/google/android/pano/util/TransitionImage;)Z
    .locals 7
    .param p1, "dst"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    iget v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eq v5, v4, :cond_1

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eqz v5, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v3

    .line 324
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 325
    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/util/TransitionImageView;

    .line 326
    .local v2, "view":Lcom/google/android/pano/util/TransitionImageView;
    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->getSourceTransition()Lcom/google/android/pano/util/TransitionImage;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    .line 327
    invoke-virtual {v2, p1}, Lcom/google/android/pano/util/TransitionImageView;->setDestTransition(Lcom/google/android/pano/util/TransitionImage;)V

    move v3, v4

    .line 328
    goto :goto_0

    .line 324
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public cancelTransition()V
    .locals 4

    .prologue
    .line 301
    iget v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 307
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/google/android/pano/util/TransitionImageAnimation;->cancelTransition(Landroid/view/View;)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 311
    .end local v1    # "i":I
    :cond_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    .line 312
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    invoke-virtual {v2, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$Listener;->onCancelled(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    goto :goto_0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/google/android/pano/util/TransitionImageAnimation;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 106
    return-object p0
.end method

.method public listener(Lcom/google/android/pano/util/TransitionImageAnimation$Listener;)Lcom/google/android/pano/util/TransitionImageAnimation;
    .locals 0
    .param p1, "listener"    # Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    .line 82
    return-object p0
.end method

.method public startTransition()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 237
    iget v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eqz v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 241
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/util/TransitionImageView;

    .line 242
    .local v2, "view":Lcom/google/android/pano/util/TransitionImageView;
    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->getDestTransition()Lcom/google/android/pano/util/TransitionImage;

    move-result-object v3

    if-nez v3, :cond_2

    .line 243
    invoke-direct {p0, v2}, Lcom/google/android/pano/util/TransitionImageAnimation;->cancelTransition(Landroid/view/View;)V

    .line 244
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 240
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 247
    .end local v2    # "view":Lcom/google/android/pano/util/TransitionImageView;
    :cond_3
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 248
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    .line 249
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    invoke-virtual {v3, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$Listener;->onCancelled(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    goto :goto_0

    .line 254
    :cond_4
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 255
    .local v1, "v":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    iget-wide v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionDurationMs:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 257
    iget-wide v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionStartDelayMs:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 258
    new-instance v3, Lcom/google/android/pano/util/TransitionImageAnimation$3;

    invoke-direct {v3, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$3;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    new-instance v3, Lcom/google/android/pano/util/TransitionImageAnimation$4;

    invoke-direct {v3, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$4;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 284
    iput v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    goto :goto_0

    .line 254
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public transitionDurationMs(J)Lcom/google/android/pano/util/TransitionImageAnimation;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionDurationMs:J

    .line 154
    return-object p0
.end method

.method public transitionStartDelayMs(J)Lcom/google/android/pano/util/TransitionImageAnimation;
    .locals 0
    .param p1, "delay"    # J

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionStartDelayMs:J

    .line 142
    return-object p0
.end method
