.class public final Lcom/google/android/youtube/core/model/VmapAdBreak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Lcom/google/android/youtube/core/model/VastAd;

.field public final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/google/android/youtube/core/model/s;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/s;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 122
    invoke-static {}, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->values()[Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    .line 125
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_2

    move v4, v0

    .line 126
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v0, :cond_0

    move v5, v0

    .line 127
    :cond_0
    const-class v0, Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/model/VastAd;

    .line 128
    invoke-static {p1}, Lcom/google/android/youtube/core/model/VmapAdBreak;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/model/VmapAdBreak;-><init>(Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;IZZZLcom/google/android/youtube/core/model/VastAd;Ljava/util/List;)V

    .line 129
    return-void

    :cond_1
    move v3, v5

    .line 124
    goto :goto_0

    :cond_2
    move v4, v5

    .line 125
    goto :goto_1
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;IZZZLcom/google/android/youtube/core/model/VastAd;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "offsetType must not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->a:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    .line 54
    iput-boolean p3, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->d:Z

    .line 55
    iput-boolean p4, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->e:Z

    .line 56
    iput-boolean p5, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->f:Z

    .line 57
    iput-object p6, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->g:Lcom/google/android/youtube/core/model/VastAd;

    .line 59
    const-string v0, "trackingEvents must not be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->h:Ljava/util/List;

    .line 61
    if-ltz p2, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "offsetValue must be >= 0"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->PRE_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->POST_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    if-ne p1, v0, :cond_3

    :cond_0
    move v0, v2

    .line 63
    :goto_1
    iput v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->b:I

    .line 65
    sget-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->PRE_ROLL:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    if-eq p1, v0, :cond_6

    .line 66
    sget-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->TIME:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_6

    .line 67
    :cond_1
    sget-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->PERCENTAGE:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    if-ne p1, v0, :cond_4

    move v3, v1

    :goto_2
    if-nez p2, :cond_5

    move v0, v1

    :goto_3
    and-int/2addr v0, v3

    if-nez v0, :cond_6

    .line 65
    :goto_4
    iput-boolean v2, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->c:Z

    .line 68
    return-void

    :cond_2
    move v0, v2

    .line 61
    goto :goto_0

    :cond_3
    move v0, p2

    .line 64
    goto :goto_1

    :cond_4
    move v3, v2

    .line 67
    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4
.end method

.method private static a(Landroid/os/Parcel;)Ljava/util/List;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    sget-object v1, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    check-cast p1, Lcom/google/android/youtube/core/model/VmapAdBreak;

    .line 79
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->a:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak;->a:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->b:I

    iget v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak;->b:I

    if-ne v1, v2, :cond_0

    .line 80
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->d:Z

    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak;->d:Z

    if-ne v1, v2, :cond_0

    .line 81
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->e:Z

    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak;->e:Z

    if-ne v1, v2, :cond_0

    .line 82
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->f:Z

    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak;->f:Z

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->g:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak;->g:Lcom/google/android/youtube/core/model/VastAd;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->h:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak;->h:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->a:Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/VmapAdBreak$OffsetType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->f:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->g:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 119
    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    :cond_1
    move v0, v2

    .line 114
    goto :goto_1

    :cond_2
    move v1, v2

    .line 115
    goto :goto_2
.end method
