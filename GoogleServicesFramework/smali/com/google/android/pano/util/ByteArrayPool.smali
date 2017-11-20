.class public final Lcom/google/android/pano/util/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field private static final sChunk16K:Lcom/google/android/pano/util/ByteArrayPool;


# instance fields
.field private final mCachedBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mChunkSize:I

.field private final mMaxNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/pano/util/ByteArrayPool;

    const/16 v1, 0x4000

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/util/ByteArrayPool;-><init>(II)V

    sput-object v0, Lcom/google/android/pano/util/ByteArrayPool;->sChunk16K:Lcom/google/android/pano/util/ByteArrayPool;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .param p1, "chunkSize"    # I
    .param p2, "maxNum"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/android/pano/util/ByteArrayPool;->mChunkSize:I

    .line 21
    iput p2, p0, Lcom/google/android/pano/util/ByteArrayPool;->mMaxNum:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/pano/util/ByteArrayPool;->mMaxNum:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public static get16KBPool()Lcom/google/android/pano/util/ByteArrayPool;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/pano/util/ByteArrayPool;->sChunk16K:Lcom/google/android/pano/util/ByteArrayPool;

    return-object v0
.end method


# virtual methods
.method public allocateChunk()[B
    .locals 4

    .prologue
    .line 33
    iget-object v2, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 35
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    monitor-exit v2

    .line 38
    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lcom/google/android/pano/util/ByteArrayPool;->mChunkSize:I

    new-array v1, v1, [B

    monitor-exit v2

    goto :goto_0

    .line 39
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseChunk([B)V
    .locals 3
    .param p1, "buf"    # [B

    .prologue
    .line 49
    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lcom/google/android/pano/util/ByteArrayPool;->mChunkSize:I

    if-eq v0, v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/google/android/pano/util/ByteArrayPool;->mMaxNum:I

    if-ge v0, v2, :cond_2

    .line 54
    iget-object v0, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseChunks(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "bufs":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v4, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    monitor-enter v4

    .line 61
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "c":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 62
    iget-object v3, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v5, p0, Lcom/google/android/pano/util/ByteArrayPool;->mMaxNum:I

    if-ne v3, v5, :cond_1

    .line 70
    :cond_0
    monitor-exit v4

    .line 71
    return-void

    .line 65
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 66
    .local v0, "buf":[B
    if-eqz v0, :cond_2

    array-length v3, v0

    iget v5, p0, Lcom/google/android/pano/util/ByteArrayPool;->mChunkSize:I

    if-ne v3, v5, :cond_2

    .line 67
    iget-object v3, p0, Lcom/google/android/pano/util/ByteArrayPool;->mCachedBuf:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
