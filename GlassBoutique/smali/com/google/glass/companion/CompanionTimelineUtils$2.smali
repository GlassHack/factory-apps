.class final Lcom/google/glass/companion/CompanionTimelineUtils$2;
.super Ljava/lang/Object;
.source "CompanionTimelineUtils.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/companion/CompanionTimelineUtils;->getTimelineitem(Lcom/google/glass/companion/Proto$MultimediaMessage;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


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
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/companion/CompanionTimelineUtils$2;->val$content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/companion/CompanionTimelineUtils$2;->val$content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 310
    return-void
.end method
