.class public final Lcom/google/android/maps/driveabout/c/a;
.super Lcom/google/android/maps/driveabout/c/b;
.source "SourceFile"


# instance fields
.field private final b:[Lcom/google/android/maps/driveabout/g/j;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/b;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x190

    new-array v0, v0, [Lcom/google/android/maps/driveabout/g/j;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    .line 22
    iput v1, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    .line 23
    iput v1, p0, Lcom/google/android/maps/driveabout/c/a;->e:I

    .line 27
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 5

    .prologue
    const/16 v1, 0x190

    .line 32
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/c/a;->e:I

    if-ge v0, v1, :cond_0

    .line 33
    iget v0, p0, Lcom/google/android/maps/driveabout/c/a;->e:I

    new-array v0, v0, [Lcom/google/android/maps/driveabout/g/j;

    .line 34
    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/maps/driveabout/c/a;->e:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 36
    :cond_0
    const/16 v0, 0x190

    :try_start_1
    new-array v0, v0, [Lcom/google/android/maps/driveabout/g/j;

    .line 37
    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    iget v2, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    rsub-int v4, v4, 0x190

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    rsub-int v3, v3, 0x190

    iget v4, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/g/j;)V
    .locals 4

    .prologue
    const/16 v2, 0x190

    .line 47
    monitor-enter p0

    if-nez p1, :cond_0

    .line 48
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 50
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/c/a;->e:I

    if-ne v0, v2, :cond_3

    .line 51
    iget v0, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    .line 52
    iget v1, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    .line 53
    iget v1, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    if-ne v1, v2, :cond_1

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/google/android/maps/driveabout/c/o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    iget v2, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/google/android/maps/driveabout/c/o;

    if-nez v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    iget v2, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 61
    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    iget v2, p0, Lcom/google/android/maps/driveabout/c/a;->d:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/g/j;->e()V

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    aput-object p1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/a;->b:[Lcom/google/android/maps/driveabout/g/j;

    iget v1, p0, Lcom/google/android/maps/driveabout/c/a;->e:I

    aput-object p1, v0, v1

    .line 66
    iget v0, p0, Lcom/google/android/maps/driveabout/c/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/c/a;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
