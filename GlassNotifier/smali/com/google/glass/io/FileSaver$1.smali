.class final Lcom/google/glass/io/FileSaver$1;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lcom/google/glass/io/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/io/FileSaver;->newSaver([B)Lcom/google/glass/io/FileSaver$Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/io/FileSaver$1;->val$content:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/io/FileSaver$1;->val$content:[B

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
    .line 67
    iget-object v0, p0, Lcom/google/glass/io/FileSaver$1;->val$content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 68
    return-void
.end method
