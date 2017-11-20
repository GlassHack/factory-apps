.class public final Lcom/google/c/e/c;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/c/e/c;->a:J

    return-wide v0
.end method

.method public final write(I)V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/c/e/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-wide v0, p0, Lcom/google/c/e/c;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/c/e/c;->a:J

    .line 58
    return-void
.end method

.method public final write([BII)V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/c/e/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    iget-wide v0, p0, Lcom/google/c/e/c;->a:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/c/e/c;->a:J

    .line 53
    return-void
.end method
