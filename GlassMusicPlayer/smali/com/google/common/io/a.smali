.class final Lcom/google/common/io/a;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private b:Z


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    iput-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    .line 48
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/common/io/a;->b:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot write to a closed writer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public final append(C)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/common/io/a;->a()V

    .line 105
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 106
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/common/io/a;->a()V

    .line 112
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 113
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/common/io/a;->a()V

    .line 119
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 120
    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/common/io/a;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/common/io/a;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/a;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/io/a;->b:Z

    .line 73
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 76
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/common/io/a;->a()V

    .line 65
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 68
    :cond_0
    return-void
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/common/io/a;->a()V

    .line 86
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 87
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/common/io/a;->a()V

    .line 92
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 93
    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/common/io/a;->a()V

    .line 99
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    add-int v1, p2, p3

    invoke-interface {v0, p1, p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 100
    return-void
.end method

.method public final write([CII)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/common/io/a;->a()V

    .line 59
    iget-object v0, p0, Lcom/google/common/io/a;->a:Ljava/lang/Appendable;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 60
    return-void
.end method
