.class public final Lcom/google/android/maps/driveabout/store/al;
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
    .line 19
    new-instance v0, Lcom/google/android/maps/driveabout/model/y;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/y;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/store/al;->b:Lcom/google/android/maps/driveabout/model/av;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->clear()V

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v0, 0x1

    return v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/av;)Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/maps/driveabout/store/al;->b:Lcom/google/android/maps/driveabout/model/av;

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
    .line 34
    sget-object v0, Lcom/google/android/maps/driveabout/store/al;->b:Lcom/google/android/maps/driveabout/model/av;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/al;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V

    .line 35
    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/model/aw;)Z
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/al;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/av;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
