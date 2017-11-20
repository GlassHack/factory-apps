.class Lcom/android/providers/downloads/DownloadScanner$ScanRequest;
.super Ljava/lang/Object;
.source "DownloadScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanRequest"
.end annotation


# instance fields
.field public final id:J

.field public final mimeType:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final requestRealtime:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->id:J

    .line 56
    iput-object p3, p0, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->path:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->mimeType:Ljava/lang/String;

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->requestRealtime:J

    .line 59
    return-void
.end method


# virtual methods
.method public exec(Landroid/media/MediaScannerConnection;)V
    .locals 2
    .param p1, "conn"    # Landroid/media/MediaScannerConnection;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadScanner$ScanRequest;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
