.class final Lcom/google/googlenav/common/io/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/io/b/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/google/googlenav/common/io/b/b;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 966
    :try_start_0
    invoke-static {}, Lcom/google/common/io/b;->a()Lcom/google/common/io/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/common/io/b/b;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 968
    :goto_0
    return-object v0

    .line 967
    :catch_0
    move-exception v0

    .line 968
    const-string v1, "[I/O ERROR: %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
