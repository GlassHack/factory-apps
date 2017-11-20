.class final Lcom/google/android/gms/gcm/az;
.super Lcom/google/android/gms/gcm/bb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/g;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/StringBuilder;

.field final synthetic d:Lcom/google/b/a/a;

.field final synthetic e:Lcom/google/android/gms/gcm/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/ay;Lcom/google/android/gms/gcm/g;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Lcom/google/b/a/a;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/gms/gcm/az;->e:Lcom/google/android/gms/gcm/ay;

    iput-object p2, p0, Lcom/google/android/gms/gcm/az;->a:Lcom/google/android/gms/gcm/g;

    iput-object p3, p0, Lcom/google/android/gms/gcm/az;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/gcm/az;->c:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/google/android/gms/gcm/az;->d:Lcom/google/b/a/a;

    invoke-direct {p0}, Lcom/google/android/gms/gcm/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[B)V
    .locals 4

    .prologue
    .line 427
    int-to-byte v1, p1

    :try_start_0
    invoke-static {v1, p2}, Lcom/google/b/a/f;->a(B[B)Lcom/google/protobuf/a/f;

    move-result-object v2

    .line 428
    instance-of v1, v2, Lcom/google/b/a/a/e;

    if-eqz v1, :cond_1

    .line 429
    move-object v0, v2

    check-cast v0, Lcom/google/b/a/a/e;

    move-object v1, v0

    .line 430
    iget-object v3, p0, Lcom/google/android/gms/gcm/az;->a:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    iget-object v2, p0, Lcom/google/android/gms/gcm/az;->b:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/gcm/az;->c:Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/gcm/az;->d:Lcom/google/b/a/a;

    invoke-virtual {v1, v2}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid tag for resend "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
