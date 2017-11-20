.class public final Lcom/google/g/a/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/g/a/b/x;


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/g/a/e;->a:Lcom/google/g/a/b/x;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/google/g/a/e;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/io/DataInput;
    .locals 3

    iget-object v0, p0, Lcom/google/g/a/e;->a:Lcom/google/g/a/b/x;

    invoke-interface {v0, p1}, Lcom/google/g/a/b/x;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method
