.class public Lcom/google/glass/camera/PublicThumbnailCachedFilesManager;
.super Lcom/google/glass/util/CachedFilesManager;
.source "PublicThumbnailCachedFilesManager.java"


# static fields
.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x64

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x1000000L

.field private static final PUBLIC_THUMBNAIL_CACHE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thumbnail_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/PublicThumbnailCachedFilesManager;->PUBLIC_THUMBNAIL_CACHE:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/camera/PublicThumbnailCachedFilesManager;->PUBLIC_THUMBNAIL_CACHE:Ljava/lang/String;

    const-wide/32 v1, 0x1000000

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    .line 26
    return-void
.end method
