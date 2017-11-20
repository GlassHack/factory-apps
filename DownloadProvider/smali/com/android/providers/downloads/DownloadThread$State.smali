.class Lcom/android/providers/downloads/DownloadThread$State;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field public mBytesNotified:J

.field public mContentDisposition:Ljava/lang/String;

.field public mContentLength:J

.field public mContentLocation:Ljava/lang/String;

.field public mContinuingDownload:Z

.field public mCurrentBytes:J

.field public mFilename:Ljava/lang/String;

.field public mGotData:Z

.field public mHeaderETag:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mNetworkType:I

.field public mRedirectionCount:I

.field public mRequestUri:Ljava/lang/String;

.field public mRetryAfter:I

.field public mSpeed:J

.field public mSpeedSampleBytes:J

.field public mSpeedSampleStart:J

.field public mTimeLastNotification:J

.field public mTotalBytes:J

.field public mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/providers/downloads/DownloadInfo;

    .prologue
    const-wide/16 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 135
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 137
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 138
    iput-wide v1, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 140
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    .line 141
    iput-wide v1, p0, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    .line 142
    iput-wide v1, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mNetworkType:I

    .line 152
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    .line 160
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 163
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 164
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 165
    return-void
.end method


# virtual methods
.method public resetBeforeExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    .line 170
    iput-object v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContentLocation:Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectionCount:I

    .line 173
    return-void
.end method
