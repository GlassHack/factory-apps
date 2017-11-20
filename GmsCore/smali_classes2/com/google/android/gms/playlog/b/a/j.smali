.class final Lcom/google/android/gms/playlog/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Class;

.field private final b:I

.field private c:I

.field private d:I

.field private e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p2, p0, Lcom/google/android/gms/playlog/b/a/j;->b:I

    .line 110
    iput v0, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    .line 111
    iput v0, p0, Lcom/google/android/gms/playlog/b/a/j;->d:I

    .line 112
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/j;->e:[Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Lcom/google/android/gms/playlog/b/a/j;->a:Ljava/lang/Class;

    .line 114
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    if-lez v1, :cond_0

    .line 124
    iget v0, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/j;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    aget-object v0, v0, v1

    .line 126
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/j;->e:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :goto_0
    return-object v0

    .line 129
    :cond_0
    monitor-exit p0

    .line 132
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/a/j;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    invoke-static {}, Lcom/google/android/gms/playlog/b/a/i;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception from mClazz.newInstance "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    .line 152
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    iget v1, p0, Lcom/google/android/gms/playlog/b/a/j;->b:I

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/j;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    aput-object p1, v0, v1

    .line 154
    iget v0, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    .line 155
    iget v0, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    iget v1, p0, Lcom/google/android/gms/playlog/b/a/j;->d:I

    if-le v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/google/android/gms/playlog/b/a/j;->c:I

    iput v0, p0, Lcom/google/android/gms/playlog/b/a/j;->d:I

    .line 163
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
