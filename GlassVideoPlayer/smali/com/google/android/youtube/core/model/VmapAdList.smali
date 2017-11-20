.class public final Lcom/google/android/youtube/core/model/VmapAdList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/google/android/youtube/core/model/u;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/u;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "clientFreqCapSecs must be >= 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 32
    iput p1, p0, Lcom/google/android/youtube/core/model/VmapAdList;->a:I

    .line 33
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdList;->b:Ljava/util/List;

    .line 34
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/VmapAdList;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/model/VmapAdList;-><init>(ILjava/util/List;)V

    .line 133
    return-void
.end method

.method private static a(Landroid/os/Parcel;)Ljava/util/List;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    sget-object v1, Lcom/google/android/youtube/core/model/VmapAdBreak;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    check-cast p1, Lcom/google/android/youtube/core/model/VmapAdList;

    .line 57
    iget v1, p0, Lcom/google/android/youtube/core/model/VmapAdList;->a:I

    iget v2, p1, Lcom/google/android/youtube/core/model/VmapAdList;->a:I

    if-ne v1, v2, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VmapAdList;->b:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VmapAdList;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/youtube/core/model/VmapAdList;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdList;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 123
    return-void
.end method
