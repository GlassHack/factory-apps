.class final Lcom/google/android/gms/playlog/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/playlog/b/a/e;


# instance fields
.field final synthetic a:Lcom/google/android/gms/playlog/b/a/a;

.field private b:[B


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/b;->a:Lcom/google/android/gms/playlog/b/a/a;

    invoke-static {v0}, Lcom/google/android/gms/playlog/b/a/a;->a(Lcom/google/android/gms/playlog/b/a/a;)Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/b;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/b;->a:Lcom/google/android/gms/playlog/b/a/a;

    invoke-static {v0}, Lcom/google/android/gms/playlog/b/a/a;->a(Lcom/google/android/gms/playlog/b/a/a;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 277
    return-void
.end method
