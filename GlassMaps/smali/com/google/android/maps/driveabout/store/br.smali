.class public final Lcom/google/android/maps/driveabout/store/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bs;


# static fields
.field protected static final b:Lcom/google/android/maps/driveabout/model/av;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/maps/driveabout/model/y;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/y;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/store/br;->b:Lcom/google/android/maps/driveabout/model/av;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->clear()V

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/av;)Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/maps/driveabout/store/br;->b:Lcom/google/android/maps/driveabout/model/av;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(Lcom/google/android/maps/driveabout/model/aw;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/maps/driveabout/store/br;->b:Lcom/google/android/maps/driveabout/model/av;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/br;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V

    .line 39
    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/model/aw;)Z
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/store/br;->c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/av;

    .line 52
    if-nez v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
