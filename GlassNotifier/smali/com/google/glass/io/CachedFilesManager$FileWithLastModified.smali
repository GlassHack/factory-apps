.class Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;
.super Ljava/lang/Object;
.source "CachedFilesManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/io/CachedFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileWithLastModified"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;",
        ">;"
    }
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public lastModified:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;->file:Ljava/io/File;

    .line 651
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;->lastModified:J

    .line 652
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;)I
    .locals 4
    .param p1, "o"    # Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;

    .prologue
    .line 655
    iget-wide v0, p0, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;->lastModified:J

    iget-wide v2, p1, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;->lastModified:J

    cmp-long v0, v0, v2

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 645
    check-cast p1, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;

    invoke-virtual {p0, p1}, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;->compareTo(Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;)I

    move-result v0

    return v0
.end method
