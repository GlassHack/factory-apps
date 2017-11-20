.class public final Lcom/google/android/location/os/real/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/b/n;


# instance fields
.field public a:Lcom/google/j/c/a;

.field public b:Z

.field private c:Lcom/google/g/a/b/b/a;


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/j/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/j/c/a;-><init>(Lcom/google/j/q;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/an;->a:Lcom/google/j/c/a;

    .line 52
    iput-object p1, p0, Lcom/google/android/location/os/real/an;->c:Lcom/google/g/a/b/b/a;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/os/real/an;->b:Z

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/os/real/an;->b:Z

    .line 60
    :try_start_0
    invoke-virtual {p2}, Lcom/google/j/b/o;->t_()Ljava/io/InputStream;

    move-result-object v0

    .line 61
    iget v1, p2, Lcom/google/j/b/o;->d:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/location/os/real/an;->c:Lcom/google/g/a/b/b/a;

    invoke-static {v0, v1}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/a;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/location/os/real/an;->a:Lcom/google/j/c/a;

    iget-object v1, p0, Lcom/google/android/location/os/real/an;->c:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1}, Lcom/google/j/c/a;->a(Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "ProtoRequestListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestCompleted() HTTP response code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/google/j/b/o;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/real/an;->a:Lcom/google/j/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/j/c/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "ProtoRequestListener"

    const-string v2, "requestCompleted()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/os/real/an;->a:Lcom/google/j/c/a;

    invoke-virtual {v0, v3}, Lcom/google/j/c/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/os/real/an;->b:Z

    .line 78
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ProtoRequestListener"

    const-string v1, "requestFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method
