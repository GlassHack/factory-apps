.class public final Lcom/google/android/gms/playlog/service/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;)Lcom/google/android/gms/playlog/b/h;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/playlog/b/h;

    invoke-direct {v0}, Lcom/google/android/gms/playlog/b/h;-><init>()V

    .line 24
    iget v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    .line 26
    iget v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    .line 27
    iget v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    .line 30
    iget-boolean v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    .line 31
    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    .line 32
    return-object v0
.end method
