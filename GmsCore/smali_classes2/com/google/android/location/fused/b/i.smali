.class public final Lcom/google/android/location/fused/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/bf;
.implements Lcom/google/android/location/fused/ap;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field private final a:Lcom/google/android/location/wearable/b;

.field private final b:Lcom/google/android/location/fused/ap;

.field private final c:Lcom/google/android/location/fused/ap;

.field private d:Lcom/google/android/location/fused/ap;

.field private e:Lcom/google/android/gms/wearable/s;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/wearable/b;Lcom/google/android/location/fused/ap;Lcom/google/android/location/fused/ap;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/b/i;->e:Lcom/google/android/gms/wearable/s;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/b/i;->f:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/location/fused/b/i;->a:Lcom/google/android/location/wearable/b;

    .line 43
    iput-object p2, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    .line 44
    iput-object p3, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    .line 45
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    iput-object v0, p0, Lcom/google/android/location/fused/b/i;->d:Lcom/google/android/location/fused/ap;

    .line 46
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/i;->f:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 151
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->e:Lcom/google/android/gms/wearable/s;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->a()V

    .line 155
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 156
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    iput-object v0, p0, Lcom/google/android/location/fused/b/i;->d:Lcom/google/android/location/fused/ap;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 159
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->a()V

    .line 160
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    iput-object v0, p0, Lcom/google/android/location/fused/b/i;->d:Lcom/google/android/location/fused/ap;

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1}, Lcom/google/android/location/fused/ap;->a(Z)Landroid/location/Location;

    move-result-object v1

    .line 99
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1}, Lcom/google/android/location/fused/ap;->a(Z)Landroid/location/Location;

    move-result-object v0

    .line 100
    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    .line 107
    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/i;->f:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/b/i;->f:Z

    .line 52
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->a:Lcom/google/android/location/wearable/b;

    invoke-virtual {v0, p0}, Lcom/google/android/location/wearable/b;->a(Lcom/google/android/gms/wearable/internal/bf;)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/location/fused/b/i;->f()V

    .line 55
    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Landroid/location/Location;I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Landroid/location/Location;I)V

    .line 93
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/i;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/r;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->e:Lcom/google/android/gms/wearable/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->e:Lcom/google/android/gms/wearable/s;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "GCoreFlp"

    const-string v1, "Clockwork device should only have one peer"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/google/android/location/fused/b/i;->e:Lcom/google/android/gms/wearable/s;

    .line 129
    invoke-direct {p0}, Lcom/google/android/location/fused/b/i;->f()V

    .line 130
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/fused/ap;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/fused/ap;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Ljava/util/Collection;Z)V

    .line 71
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Ljava/util/Collection;Z)V

    .line 72
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/i;->f:Z

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/b/i;->f:Z

    .line 61
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->a:Lcom/google/android/location/wearable/b;

    iget-object v1, v0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/b/i;->e:Lcom/google/android/gms/wearable/s;

    .line 63
    invoke-direct {p0}, Lcom/google/android/location/fused/b/i;->f()V

    .line 65
    :cond_0
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/b/i;->e:Lcom/google/android/gms/wearable/s;

    .line 135
    invoke-direct {p0}, Lcom/google/android/location/fused/b/i;->f()V

    .line 136
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->c()V

    .line 78
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->c()V

    .line 79
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->d()V

    .line 85
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->d()V

    .line 86
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/location/fused/b/i;->d:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->e()Lcom/google/android/location/o/k;

    move-result-object v0

    return-object v0
.end method
