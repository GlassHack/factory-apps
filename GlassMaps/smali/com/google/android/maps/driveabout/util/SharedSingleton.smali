.class public abstract Lcom/google/android/maps/driveabout/util/SharedSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field protected b:Landroid/content/Context;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    .line 86
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->c:Z

    .line 90
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    .line 117
    iget v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method protected final declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    if-nez v0, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->c:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/google/android/maps/driveabout/util/SharedSingleton$CircularDependencyException;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/util/SharedSingleton$CircularDependencyException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->c:Z

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->b:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/util/SharedSingleton;->b(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->c:Z

    .line 112
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    monitor-exit p0

    return-void
.end method
