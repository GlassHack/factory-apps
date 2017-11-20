.class public final Lcom/google/android/location/fused/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/bf;
.implements Lcom/google/android/location/fused/ap;


# instance fields
.field private final a:Lcom/google/android/location/fused/b/h;

.field private final b:Lcom/google/android/location/fused/b/a;

.field private final c:Lcom/google/android/location/fused/aq;

.field private final d:Lcom/google/android/location/fused/c;

.field private final e:[Landroid/location/Location;

.field private f:Lcom/google/android/gms/wearable/s;

.field private g:Ljava/util/Collection;

.field private h:Z

.field private final i:Lcom/google/android/location/fused/ao;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/b/a;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;)V
    .locals 6

    .prologue
    .line 54
    new-instance v5, Lcom/google/android/location/fused/c;

    invoke-direct {v5}, Lcom/google/android/location/fused/c;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/fused/b/d;-><init>(Lcom/google/android/location/fused/b/a;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;Lcom/google/android/location/fused/c;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/fused/b/a;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;Lcom/google/android/location/fused/c;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/location/fused/b/h;

    invoke-direct {v0}, Lcom/google/android/location/fused/b/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/b/d;->a:Lcom/google/android/location/fused/b/h;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/location/fused/b/d;->e:[Landroid/location/Location;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/b/d;->f:Lcom/google/android/gms/wearable/s;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/b/d;->g:Ljava/util/Collection;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/b/d;->h:Z

    .line 64
    iput-object p1, p0, Lcom/google/android/location/fused/b/d;->b:Lcom/google/android/location/fused/b/a;

    .line 65
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->b:Lcom/google/android/location/fused/b/a;

    invoke-static {p2}, Lcom/google/android/location/fused/ah;->a(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-static {p0, p3, v1}, Lcom/google/android/location/wearable/a;->a(Lcom/google/android/gms/wearable/internal/bf;Landroid/os/Looper;Landroid/os/PowerManager$WakeLock;)Lcom/google/android/gms/wearable/internal/bf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/b/a;->a(Lcom/google/android/gms/wearable/internal/bf;)V

    .line 67
    iput-object p4, p0, Lcom/google/android/location/fused/b/d;->c:Lcom/google/android/location/fused/aq;

    .line 68
    iput-object p5, p0, Lcom/google/android/location/fused/b/d;->d:Lcom/google/android/location/fused/c;

    .line 69
    new-instance v0, Lcom/google/android/location/fused/ao;

    invoke-direct {v0, p5}, Lcom/google/android/location/fused/ao;-><init>(Lcom/google/android/location/fused/c;)V

    iput-object v0, p0, Lcom/google/android/location/fused/b/d;->i:Lcom/google/android/location/fused/ao;

    .line 70
    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->f:Lcom/google/android/gms/wearable/s;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->g:Ljava/util/Collection;

    .line 185
    iget-boolean v1, p0, Lcom/google/android/location/fused/b/d;->h:Z

    if-nez v1, :cond_1

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/fused/b/d;->b:Lcom/google/android/location/fused/b/a;

    iget-object v2, p0, Lcom/google/android/location/fused/b/d;->f:Lcom/google/android/gms/wearable/s;

    invoke-interface {v2}, Lcom/google/android/gms/wearable/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1}, Lcom/google/android/location/fused/b/c;->a(Ljava/util/Collection;Z)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    const-string v3, "com.google.android.location.fused.LOCATION_REQUESTS"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/location/fused/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wearable/m;)Lcom/google/android/gms/wearable/q;

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 1

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->i:Lcom/google/android/location/fused/ao;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ao;->a()Landroid/location/Location;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->i:Lcom/google/android/location/fused/ao;

    iget-object v0, v0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/d;->h:Z

    if-nez v0, :cond_0

    .line 81
    iput-boolean v1, p0, Lcom/google/android/location/fused/b/d;->h:Z

    .line 82
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, v1}, Lcom/google/android/location/fused/b/d;->b(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/i;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/r;)V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->b:Lcom/google/android/location/fused/b/a;

    const-string v0, "com.google.android.location.fused.ACTION_LOCATION"

    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/m;->a([B)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/android/location/fused/b/b;->a(Lcom/google/android/gms/wearable/m;)Landroid/location/Location;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/google/android/location/fused/b/d;->i:Lcom/google/android/location/fused/ao;

    invoke-virtual {v1, v0}, Lcom/google/android/location/fused/ao;->a(Landroid/location/Location;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/location/fused/b/d;->d:Lcom/google/android/location/fused/c;

    iget-object v1, p0, Lcom/google/android/location/fused/b/d;->d:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v2

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/fused/b/d;->e:[Landroid/location/Location;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 170
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->c:Lcom/google/android/location/fused/aq;

    iget-object v1, p0, Lcom/google/android/location/fused/b/d;->e:[Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/google/android/location/fused/aq;->a([Landroid/location/Location;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->f:Lcom/google/android/gms/wearable/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->f:Lcom/google/android/gms/wearable/s;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "GCoreFlp"

    const-string v1, "Clockwork device should only have one peer"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/google/android/location/fused/b/d;->f:Lcom/google/android/gms/wearable/s;

    .line 141
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/fused/b/d;->h:Z

    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/fused/b/d;->b(Z)V

    .line 147
    :cond_1
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/location/fused/b/d;->g:Ljava/util/Collection;

    .line 75
    invoke-direct {p0, p2}, Lcom/google/android/location/fused/b/d;->b(Z)V

    .line 76
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/d;->h:Z

    if-eqz v0, :cond_0

    .line 92
    iput-boolean v1, p0, Lcom/google/android/location/fused/b/d;->h:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0, v1}, Lcom/google/android/location/fused/b/d;->b(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/b/d;->f:Lcom/google/android/gms/wearable/s;

    .line 152
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/location/fused/b/d;->a:Lcom/google/android/location/fused/b/h;

    return-object v0
.end method
