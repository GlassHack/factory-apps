.class public abstract Lcom/google/android/gms/common/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/e;

.field private b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->a:Lcom/google/android/gms/common/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/g;->c:Z

    .line 166
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)V
.end method

.method protected abstract c()V
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 188
    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/g;->c:Z

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Callback proxy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " being reused. This is not safe."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz v0, :cond_1

    .line 194
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    :goto_0
    monitor-enter p0

    .line 205
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/g;->c:Z

    .line 206
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/g;->e()V

    .line 208
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/g;->c()V

    .line 197
    throw v0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/g;->c()V

    goto :goto_0

    .line 206
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/g;->f()V

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->a:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->b(Lcom/google/android/gms/common/internal/e;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->a:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->b(Lcom/google/android/gms/common/internal/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 226
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
