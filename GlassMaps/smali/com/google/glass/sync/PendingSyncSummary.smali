.class public final Lcom/google/glass/sync/PendingSyncSummary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final UNINITIALIZED:Lcom/google/glass/sync/PendingSyncSummary;


# instance fields
.field private final syncedMediaCount:I

.field private final unsyncedPhotoBytes:J

.field private final unsyncedPhotos:I

.field private final unsyncedVideoBytes:J

.field private final unsyncedVideos:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 15
    new-instance v0, Lcom/google/glass/sync/PendingSyncSummary;

    move v4, v1

    move-wide v5, v2

    move v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/sync/PendingSyncSummary;-><init>(IJIJI)V

    sput-object v0, Lcom/google/glass/sync/PendingSyncSummary;->UNINITIALIZED:Lcom/google/glass/sync/PendingSyncSummary;

    .line 18
    new-instance v0, Lcom/google/glass/sync/PendingSyncSummary$1;

    invoke-direct {v0}, Lcom/google/glass/sync/PendingSyncSummary$1;-><init>()V

    sput-object v0, Lcom/google/glass/sync/PendingSyncSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJIJI)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedPhotos:I

    .line 41
    iput-wide p2, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedPhotoBytes:J

    .line 42
    iput p4, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedVideos:I

    .line 43
    iput-wide p5, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedVideoBytes:J

    .line 44
    iput p7, p0, Lcom/google/glass/sync/PendingSyncSummary;->syncedMediaCount:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedPhotos:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedPhotoBytes:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedVideos:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedVideoBytes:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->syncedMediaCount:I

    .line 53
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public final getSyncedMediaCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->syncedMediaCount:I

    return v0
.end method

.method public final getUnsyncedPhotoBytes()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedPhotoBytes:J

    return-wide v0
.end method

.method public final getUnsyncedPhotosCount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedPhotos:I

    return v0
.end method

.method public final getUnsyncedVideoBytes()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedVideoBytes:J

    return-wide v0
.end method

.method public final getUnsyncedVideosCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedVideos:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedPhotos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-wide v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedPhotoBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedVideos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-wide v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->unsyncedVideoBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget v0, p0, Lcom/google/glass/sync/PendingSyncSummary;->syncedMediaCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
