.class public Lcom/google/glass/camera/VideoWrapper$FileScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method scanFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p2, p1}, Lcom/google/glass/camera/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    return-void
.end method
