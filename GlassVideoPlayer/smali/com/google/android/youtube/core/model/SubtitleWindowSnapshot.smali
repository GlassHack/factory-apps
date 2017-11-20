.class public final Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final settings:Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

.field public final snapshotTimeMillis:I

.field public final text:Ljava/lang/String;

.field public final windowId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/youtube/core/model/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/l;-><init>(Lcom/google/android/youtube/core/model/l;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->windowId:I

    .line 25
    iput p2, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->snapshotTimeMillis:I

    .line 26
    iput-object p3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->text:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->settings:Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 32
    const-class v0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;-><init>(IILjava/lang/String;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;)V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v0, "id: %d time: %d text: %s settings: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 46
    iget v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->windowId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 47
    iget v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->snapshotTimeMillis:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 48
    iget-object v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->text:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 49
    iget-object v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->settings:Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 45
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->windowId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->snapshotTimeMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->settings:Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    return-void
.end method
