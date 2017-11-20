.class final Lcom/google/android/gms/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/d/c;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/android/gms/d/c;

.field final synthetic c:Lcom/google/android/gms/d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/a/b;Lcom/google/android/gms/d/c;)V
    .locals 1

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/gms/d/a/c;->c:Lcom/google/android/gms/d/a/b;

    iput-object p2, p0, Lcom/google/android/gms/d/a/c;->b:Lcom/google/android/gms/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/d/a/c;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/d/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 102
    monitor-exit p0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/d/a/c;->a:Z

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/d/a/c;->b:Lcom/google/android/gms/d/c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/d/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
