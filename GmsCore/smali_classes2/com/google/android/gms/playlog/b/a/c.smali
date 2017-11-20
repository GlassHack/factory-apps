.class final Lcom/google/android/gms/playlog/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/playlog/b/a/e;


# instance fields
.field a:Lcom/google/n/a/b/a/a/i;

.field final synthetic b:Lcom/google/android/gms/playlog/b/a/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/playlog/b/a/a;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/playlog/b/a/a;B)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/google/android/gms/playlog/b/a/c;-><init>(Lcom/google/android/gms/playlog/b/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    invoke-static {v0}, Lcom/google/android/gms/playlog/b/a/a;->b(Lcom/google/android/gms/playlog/b/a/a;)Lcom/google/protobuf/nano/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/c;->a:Lcom/google/n/a/b/a/a/i;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/j;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    invoke-static {v0}, Lcom/google/android/gms/playlog/b/a/a;->c(Lcom/google/android/gms/playlog/b/a/a;)[B
    :try_end_0
    .catch Lcom/google/protobuf/nano/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 300
    :goto_0
    array-length v1, v0

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    invoke-static {v2}, Lcom/google/android/gms/playlog/b/a/a;->b(Lcom/google/android/gms/playlog/b/a/a;)Lcom/google/protobuf/nano/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/nano/b;->a()I

    move-result v2

    sub-int/2addr v1, v2

    .line 301
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    invoke-static {v2}, Lcom/google/android/gms/playlog/b/a/a;->a(Lcom/google/android/gms/playlog/b/a/a;)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    invoke-static {v1}, Lcom/google/android/gms/playlog/b/a/a;->c(Lcom/google/android/gms/playlog/b/a/a;)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v3, v2}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/playlog/b/a/a;->a(Lcom/google/android/gms/playlog/b/a/a;Lcom/google/protobuf/nano/b;)Lcom/google/protobuf/nano/b;

    .line 303
    return-void

    .line 296
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/c;->a:Lcom/google/n/a/b/a/a/i;

    invoke-virtual {v0}, Lcom/google/n/a/b/a/a/i;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [B

    .line 297
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    array-length v2, v0

    invoke-static {v0, v3, v2}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/playlog/b/a/a;->a(Lcom/google/android/gms/playlog/b/a/a;Lcom/google/protobuf/nano/b;)Lcom/google/protobuf/nano/b;

    .line 298
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/c;->b:Lcom/google/android/gms/playlog/b/a/a;

    invoke-static {v1}, Lcom/google/android/gms/playlog/b/a/a;->b(Lcom/google/android/gms/playlog/b/a/a;)Lcom/google/protobuf/nano/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/c;->a:Lcom/google/n/a/b/a/a/i;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0
.end method
