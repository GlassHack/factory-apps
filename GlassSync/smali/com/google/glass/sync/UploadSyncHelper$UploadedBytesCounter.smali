.class Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
.super Ljava/lang/Object;
.source "UploadSyncHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/UploadSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadedBytesCounter"
.end annotation


# instance fields
.field private numBytes:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;

    .prologue
    .line 1071
    iget-wide v0, p0, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;
    .param p1, "x1"    # J

    .prologue
    .line 1071
    iput-wide p1, p0, Lcom/google/glass/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J

    return-wide p1
.end method
