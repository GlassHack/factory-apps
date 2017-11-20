.class public final Lcom/google/googlenav/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/common/io/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Lcom/google/googlenav/common/io/b/a;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/f;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 87
    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 88
    return-object v0
.end method

.method private b(Lcom/google/googlenav/common/io/b/a;)Z
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 74
    iget-object v1, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    .line 80
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v1

    .line 81
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/googlenav/common/io/b/a;
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    if-nez v0, :cond_1

    .line 36
    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "ShortbreadToken"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/PersistentStore;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 38
    sget-object v1, Lcom/google/j/b/a/b/f;->c:Lcom/google/googlenav/common/io/b/d;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/google/googlenav/g;->b()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/googlenav/g;->b(Lcom/google/googlenav/common/io/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    .line 61
    :try_start_0
    new-instance v0, Lcom/google/googlenav/common/io/c/b;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/c/b;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    .line 63
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "ShortbreadToken"

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/c/b;->a()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z

    .line 65
    invoke-static {}, Lcom/google/googlenav/f/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/g;->a:Lcom/google/googlenav/common/io/b/a;

    goto :goto_0
.end method
