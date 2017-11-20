.class Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public file:Ljava/io/File;

.field public lastModified:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;->file:Ljava/io/File;

    .line 651
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;->lastModified:J

    .line 652
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;)I
    .locals 4

    .prologue
    .line 655
    iget-wide v0, p0, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;->lastModified:J

    iget-wide v2, p1, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;->lastModified:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 645
    check-cast p1, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;

    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;->compareTo(Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;)I

    move-result v0

    return v0
.end method
