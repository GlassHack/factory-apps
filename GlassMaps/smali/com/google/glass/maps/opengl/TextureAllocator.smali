.class public Lcom/google/glass/maps/opengl/TextureAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_EVERY_OPERATION:Z = false

.field private static final TAG:Ljava/lang/String; = "TextureAllocator"

.field private static final TEXTURE_LIMIT:I = 0x96

.field private static final TEXTURE_TRACKING_START:I = 0x82


# instance fields
.field private final allocationStacks:Ljava/util/Map;

.field private numOutstanding:I

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;

.field private final textureId:[I


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/map/RenderUtil;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->textureId:[I

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->allocationStacks:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 45
    return-void
.end method

.method private trackAllocation(I)V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 78
    iget v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->numOutstanding:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->numOutstanding:I

    .line 86
    iget v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->numOutstanding:I

    const/16 v1, 0x82

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->allocationStacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    iget v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->numOutstanding:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_2

    .line 91
    const-string v0, "TextureAllocator"

    iget v1, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->numOutstanding:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Too many textures allocated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 93
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->allocationStacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 96
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 98
    :cond_1
    const-string v0, "TextureAllocator"

    iget-object v2, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->allocationStacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Last "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stacks:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many textures allocated! Check for leaks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    return-void
.end method

.method private trackDeletion(I)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 107
    iget v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->numOutstanding:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->numOutstanding:I

    .line 115
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->allocationStacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->allocationStacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteTexture(I)V
    .locals 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->textureId:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->textureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized generateTexture()I
    .locals 3

    .prologue
    .line 49
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->textureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureAllocator;->textureId:[I

    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetAllocationCount()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
