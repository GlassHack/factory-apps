.class final Lcom/google/common/io/i;
.super Lcom/google/common/io/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/io/g;

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method private constructor <init>(Lcom/google/common/io/g;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/common/io/i;->a:Lcom/google/common/io/g;

    invoke-direct {p0}, Lcom/google/common/io/t;-><init>()V

    .line 130
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/common/io/i;->b:Ljava/nio/charset/Charset;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/io/g;Ljava/nio/charset/Charset;Lcom/google/common/io/h;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/i;-><init>(Lcom/google/common/io/g;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/Writer;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/google/common/io/i;->a:Lcom/google/common/io/g;

    invoke-virtual {v1}, Lcom/google/common/io/g;->a()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/i;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/io/i;->a:Lcom/google/common/io/g;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".asCharSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/i;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
