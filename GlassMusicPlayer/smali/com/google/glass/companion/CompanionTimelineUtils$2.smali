.class final Lcom/google/glass/companion/CompanionTimelineUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# instance fields
.field final synthetic val$content:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/glass/companion/CompanionTimelineUtils$2;->val$content:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/companion/CompanionTimelineUtils$2;->val$content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final save(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/companion/CompanionTimelineUtils$2;->val$content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 310
    return-void
.end method
