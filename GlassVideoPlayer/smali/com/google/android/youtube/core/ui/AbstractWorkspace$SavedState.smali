.class public Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 825
    new-instance v0, Lcom/google/android/youtube/core/ui/c;

    invoke-direct {v0}, Lcom/google/android/youtube/core/ui/c;-><init>()V

    .line 824
    sput-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 805
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 813
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 806
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->a:I

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->a:I

    .line 815
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;)V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 809
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 806
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->a:I

    .line 810
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 819
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 820
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    return-void
.end method
