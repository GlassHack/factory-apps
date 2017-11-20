.class public final Lcom/google/android/gms/playlog/b/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public final b:Lcom/google/android/gms/playlog/b/a/d;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/b/a/d;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/google/android/gms/playlog/b/a/h;->a:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 538
    iput-object p2, p0, Lcom/google/android/gms/playlog/b/a/h;->b:Lcom/google/android/gms/playlog/b/a/d;

    .line 539
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/b/a/d;B)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/b/a/h;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/b/a/d;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/h;->b:Lcom/google/android/gms/playlog/b/a/d;

    iget-boolean v1, v0, Lcom/google/android/gms/playlog/b/a/d;->c:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one call to delete() or save() is permitted."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/playlog/b/a/d;->c:Z

    iget-object v1, v0, Lcom/google/android/gms/playlog/b/a/d;->d:Lcom/google/android/gms/playlog/b/a/a;

    iget-object v0, v0, Lcom/google/android/gms/playlog/b/a/d;->a:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/google/android/gms/playlog/b/a/a;->a(Lcom/google/android/gms/playlog/b/a/a;Ljava/io/File;)V

    .line 554
    return-void
.end method
