.class public final Lcom/google/android/gms/wearable/internal/bg;
.super Lcom/google/android/gms/wearable/internal/ag;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/wearable/f;

.field private final b:Lcom/google/android/gms/wearable/p;

.field private final c:Lcom/google/android/gms/wearable/v;

.field private final d:[Landroid/content/IntentFilter;


# virtual methods
.method public final a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->a:Lcom/google/android/gms/wearable/f;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->a:Lcom/google/android/gms/wearable/f;

    new-instance v1, Lcom/google/android/gms/wearable/i;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/i;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/f;->a(Lcom/google/android/gms/wearable/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    .line 56
    :goto_0
    return-void

    .line 51
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    throw v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->b:Lcom/google/android/gms/wearable/p;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->b:Lcom/google/android/gms/wearable/p;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/p;->a(Lcom/google/android/gms/wearable/r;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->c:Lcom/google/android/gms/wearable/v;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->c:Lcom/google/android/gms/wearable/v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/v;->a(Lcom/google/android/gms/wearable/s;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final a()[Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->d:[Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->c:Lcom/google/android/gms/wearable/v;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bg;->c:Lcom/google/android/gms/wearable/v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/v;->b(Lcom/google/android/gms/wearable/s;)V

    .line 77
    :cond_0
    return-void
.end method
