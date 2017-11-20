.class Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollInfo"
.end annotation


# instance fields
.field id:J

.field index:I

.field mainPos:F

.field secondPos:F

.field viewLocation:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    .line 332
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 338
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    .line 339
    return-void
.end method

.method copyFrom(Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;)V
    .locals 2
    .param p1, "other"    # Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    .prologue
    .line 341
    iget v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 342
    iget-wide v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    iput-wide v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    .line 343
    iget v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    .line 344
    iget v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    .line 345
    iget v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->viewLocation:I

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->viewLocation:I

    .line 346
    return-void
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
