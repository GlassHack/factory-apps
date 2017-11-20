.class public Lcom/google/glass/io/PublicThumbnailCachedFilesManager;
.super Lcom/google/glass/io/CachedFilesManager;
.source "PublicThumbnailCachedFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;
    }
.end annotation


# static fields
.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x64

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x1000000L

.field private static final PUBLIC_THUMBNAIL_CACHE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thumbnail_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/io/PublicThumbnailCachedFilesManager;->PUBLIC_THUMBNAIL_CACHE:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/io/PublicThumbnailCachedFilesManager;->PUBLIC_THUMBNAIL_CACHE:Ljava/lang/String;

    const-wide/32 v2, 0x1000000

    const/16 v1, 0x64

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/glass/io/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    .line 24
    return-void
.end method
