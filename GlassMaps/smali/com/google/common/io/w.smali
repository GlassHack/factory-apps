.class final Lcom/google/common/io/w;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Readable;


# direct methods
.method constructor <init>(Ljava/lang/Readable;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/common/io/w;->a:Ljava/lang/Readable;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/common/io/w;->a:Ljava/lang/Readable;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 492
    return-void
.end method

.method public final read(Ljava/nio/CharBuffer;)I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/common/io/w;->a:Ljava/lang/Readable;

    invoke-interface {v0, p1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method

.method public final read([CII)I
    .locals 1

    .prologue
    .line 481
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/w;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    return v0
.end method
