.class final Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3161
    new-instance v0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3175
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3145
    new-instance v1, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-direct {v1}, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 3176
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->itemsOnOffAxis:I

    .line 3177
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->index:I

    .line 3178
    const-class v1, Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3179
    .local v0, "loader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    .line 3180
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    .line 3181
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 3148
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3145
    new-instance v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-direct {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 3149
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3153
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3154
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->itemsOnOffAxis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3155
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3156
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3157
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3158
    return-void
.end method
