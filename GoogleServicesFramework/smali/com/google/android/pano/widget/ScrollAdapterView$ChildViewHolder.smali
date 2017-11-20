.class Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildViewHolder"
.end annotation


# instance fields
.field mExtraSpaceLow:I

.field mItemViewType:I

.field mLocation:F

.field mLocationInParent:F

.field mMaxSize:I

.field mScrollCenter:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "t"    # I

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mItemViewType:I

    .line 298
    return-void
.end method
