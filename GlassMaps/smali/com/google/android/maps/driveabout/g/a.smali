.class public final Lcom/google/android/maps/driveabout/g/a;
.super Lcom/google/android/maps/driveabout/g/f;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/g/j;

.field private b:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/f;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x190

    new-array v0, v0, [Lcom/google/android/maps/driveabout/g/j;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/a;->a:[Lcom/google/android/maps/driveabout/g/j;

    .line 23
    iput v1, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    .line 24
    iput v1, p0, Lcom/google/android/maps/driveabout/g/a;->d:I

    .line 28
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 5

    .prologue
    const/16 v1, 0x190

    .line 33
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/g/a;->d:I

    if-ge v0, v1, :cond_0

    .line 34
    iget v0, p0, Lcom/google/android/maps/driveabout/g/a;->d:I

    new-array v0, v0, [Lcom/google/android/maps/driveabout/g/j;

    .line 35
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/a;->a:[Lcom/google/android/maps/driveabout/g/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/maps/driveabout/g/a;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 37
    :cond_0
    const/16 v0, 0x190

    :try_start_1
    new-array v0, v0, [Lcom/google/android/maps/driveabout/g/j;

    .line 38
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/a;->a:[Lcom/google/android/maps/driveabout/g/j;

    iget v2, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    rsub-int v4, v4, 0x190

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/a;->a:[Lcom/google/android/maps/driveabout/g/j;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    rsub-int v3, v3, 0x190

    iget v4, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/g/j;)V
    .locals 3

    .prologue
    const/16 v2, 0x190

    .line 48
    monitor-enter p0

    if-nez p1, :cond_0

    .line 49
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/g/a;->d:I

    if-ne v0, v2, :cond_2

    .line 53
    iget v0, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    .line 54
    iget v1, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    .line 55
    iget v1, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    if-ne v1, v2, :cond_1

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    .line 62
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/a;->a:[Lcom/google/android/maps/driveabout/g/j;

    aput-object p1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 59
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/maps/driveabout/g/a;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/g/a;->d:I

    add-int/2addr v0, v1

    .line 60
    iget v1, p0, Lcom/google/android/maps/driveabout/g/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/g/a;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
