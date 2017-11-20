.class Lcom/google/glass/fs/DcimDirectoryTrackerProvider$1;
.super Ljava/lang/Object;
.source "DcimDirectoryTrackerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/fs/DcimDirectoryTrackerProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/fs/DirectoryTracker;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/fs/DcimDirectoryTrackerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/fs/DcimDirectoryTrackerProvider;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/fs/DirectoryTracker;
    .locals 3

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Lcom/google/glass/fs/DirectoryTracker;

    sget-object v2, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/glass/fs/DirectoryTracker;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot create DirectoryTracker"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/glass/fs/DcimDirectoryTrackerProvider$1;->get()Lcom/google/glass/fs/DirectoryTracker;

    move-result-object v0

    return-object v0
.end method
