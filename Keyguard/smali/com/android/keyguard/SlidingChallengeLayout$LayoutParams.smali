.class public Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public childType:I

.field public maxHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1257
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(II)V

    .line 1258
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1261
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1247
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 1279
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1247
    iput v2, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1281
    sget-object v1, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1283
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1285
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    .line 1287
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1288
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1247
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1266
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1247
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1270
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    .prologue
    .line 1273
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1247
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1275
    iget v0, p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1276
    return-void
.end method
