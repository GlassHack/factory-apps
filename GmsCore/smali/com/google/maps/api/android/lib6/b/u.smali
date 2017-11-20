.class public final Lcom/google/maps/api/android/lib6/b/u;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/g/a/b/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/g/a/b/b/f;
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->c()Lcom/google/g/a/b/x;

    move-result-object v0

    const-string v1, "ShortbreadToken"

    invoke-interface {v0, v1}, Lcom/google/g/a/b/x;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    sget-object v1, Lcom/google/n/c/a/a/n;->c:Lcom/google/g/a/b/b/h;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/n;->c:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/u;->a:Lcom/google/g/a/b/b/f;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
