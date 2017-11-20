.class Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

.field final synthetic val$data:[B

.field final synthetic val$fingerprint:J


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;J[B)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;->this$0:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    iput-wide p2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;->val$fingerprint:J

    iput-object p4, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;->val$data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;->val$fingerprint:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->b(J)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 325
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;->val$data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 326
    return-void
.end method
