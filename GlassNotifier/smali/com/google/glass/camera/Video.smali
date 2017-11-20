.class public Lcom/google/glass/camera/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/glass/camera/MediaItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/camera/Video;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected endTimeMillis:J

.field protected filePath:Ljava/lang/String;

.field private isDeleted:Z

.field protected requestTimeMillis:J

.field protected startTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/camera/Video$1;

    invoke-direct {v0}, Lcom/google/glass/camera/Video$1;-><init>()V

    sput-object v0, Lcom/google/glass/camera/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/Video;->isDeleted:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/Video;->isDeleted:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Video;->startTimeMillis:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Video;->endTimeMillis:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/Video;->filePath:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 99
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 101
    iget-boolean v3, p0, Lcom/google/glass/camera/Video;->isDeleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 111
    :goto_0
    monitor-exit p0

    return v2

    .line 104
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-static {p1, v1}, Lcom/google/glass/camera/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/glass/camera/Video;->isDeleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filePath":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 111
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->endTimeMillis:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/Video;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "video/mp4"

    return-object v0
.end method

.method public getRequestTime()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->requestTimeMillis:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->startTimeMillis:J

    return-wide v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/glass/camera/Video;->isDeleted:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->startTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->endTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/camera/Video;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
