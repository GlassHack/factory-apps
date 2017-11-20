.class public final Lcom/google/android/location/fused/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/fused/ap;
.implements Lcom/google/android/location/fused/bb;


# instance fields
.field final a:Lcom/google/android/location/fused/aq;

.field final b:Ljava/lang/Object;

.field final c:[Landroid/location/Location;

.field d:Z

.field e:Landroid/location/Location;

.field private final f:Lcom/google/android/location/fused/ap;

.field private final g:Lcom/google/android/location/fused/az;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/ap;Lcom/google/android/location/fused/aq;Lcom/google/android/location/fused/az;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/bc;->b:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/location/fused/bc;->c:[Landroid/location/Location;

    .line 28
    iput-boolean v1, p0, Lcom/google/android/location/fused/bc;->h:Z

    .line 29
    iput-boolean v1, p0, Lcom/google/android/location/fused/bc;->d:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/bc;->e:Landroid/location/Location;

    .line 43
    iput-object p1, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    .line 44
    iput-object p2, p0, Lcom/google/android/location/fused/bc;->a:Lcom/google/android/location/fused/aq;

    .line 45
    iput-object p3, p0, Lcom/google/android/location/fused/bc;->g:Lcom/google/android/location/fused/az;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/location/fused/bc;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/bc;->d:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->e:Landroid/location/Location;

    monitor-exit v1

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1}, Lcom/google/android/location/fused/ap;->a(Z)Landroid/location/Location;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/location/fused/bc;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/bc;->h:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/bc;->h:Z

    .line 93
    iget-boolean v0, p0, Lcom/google/android/location/fused/bc;->d:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->a()V

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Landroid/location/Location;I)V

    .line 131
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/fused/ap;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Ljava/util/Collection;Z)V

    .line 116
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/google/android/location/fused/bc;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/bc;->h:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/bc;->h:Z

    .line 106
    iget-boolean v0, p0, Lcom/google/android/location/fused/bc;->d:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/bc;->c(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->c()V

    .line 121
    return-void
.end method

.method public final c(Z)V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/location/fused/bc;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/bc;->d:Z

    if-eq p1, v0, :cond_0

    .line 54
    iput-boolean p1, p0, Lcom/google/android/location/fused/bc;->d:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/bc;->e:Landroid/location/Location;

    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->g:Lcom/google/android/location/fused/az;

    invoke-virtual {v0, p0}, Lcom/google/android/location/fused/az;->a(Lcom/google/android/location/fused/bb;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 66
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->g:Lcom/google/android/location/fused/az;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/location/fused/az;->c:Lcom/google/android/location/fused/bb;

    iget-object v2, v0, Lcom/google/android/location/fused/az;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/location/fused/az;->b:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    iget-boolean v0, p0, Lcom/google/android/location/fused/bc;->h:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->d()V

    .line 126
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/location/fused/bc;->f:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->e()Lcom/google/android/location/o/k;

    move-result-object v0

    return-object v0
.end method
