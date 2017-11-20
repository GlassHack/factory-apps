.class public final Lcom/google/android/youtube/core/model/SubtitleWindowSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANCHOR_BOTTOM:I = 0x20

.field public static final ANCHOR_CENTER_HORIZONTAL:I = 0x2

.field public static final ANCHOR_CENTER_VERTICAL:I = 0x10

.field public static final ANCHOR_LEFT:I = 0x1

.field public static final ANCHOR_POS_MAX:I = 0x64

.field public static final ANCHOR_POS_MIN:I = 0x0

.field public static final ANCHOR_RIGHT:I = 0x4

.field public static final ANCHOR_TOP:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final DEFAULT_ANCHOR_HORIZONTAL_POS:I = 0x32

.field public static final DEFAULT_ANCHOR_POINT:I = 0x22

.field public static final DEFAULT_ANCHOR_VERTICAL_POS:I = 0x5f

.field public static final DEFAULT_SUBTITLE_WINDOW_SETTINGS:Lcom/google/android/youtube/core/model/SubtitleWindowSettings;


# instance fields
.field public final anchorHorizontalPos:I

.field public final anchorPoint:I

.field public final anchorVerticalPos:I

.field public final visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/youtube/core/model/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/k;-><init>(Lcom/google/android/youtube/core/model/k;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    .line 35
    const/16 v1, 0x22

    .line 36
    const/16 v2, 0x32

    .line 37
    const/16 v3, 0x5f

    .line 38
    const/4 v4, 0x1

    .line 34
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;-><init>(IIIZ)V

    .line 33
    sput-object v0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->DEFAULT_SUBTITLE_WINDOW_SETTINGS:Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    .line 15
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-ltz p2, :cond_0

    if-gt p2, v5, :cond_0

    move v0, v1

    .line 65
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid anchorHorizontalPos: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 66
    if-ltz p3, :cond_1

    if-gt p3, v5, :cond_1

    .line 67
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid anchorVerticalPos: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 68
    iput p1, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorPoint:I

    .line 69
    iput p2, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorHorizontalPos:I

    .line 70
    iput p3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorVerticalPos:I

    .line 71
    iput-boolean p4, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->visible:Z

    .line 72
    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v1, v2

    .line 66
    goto :goto_1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;-><init>(IIIZ)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "ap=%d, ah=%d, av=%d, vs=%b"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 89
    iget v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorPoint:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 90
    iget v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorHorizontalPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 91
    iget v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorVerticalPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 92
    iget-boolean v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->visible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorPoint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorHorizontalPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorVerticalPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
