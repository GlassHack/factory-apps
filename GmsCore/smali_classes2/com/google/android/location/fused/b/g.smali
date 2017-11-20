.class public final Lcom/google/android/location/fused/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/location/fused/ap;
.implements Lcom/google/android/location/fused/bo;


# instance fields
.field private final a:Lcom/google/android/location/o/k;

.field private final b:Lcom/google/android/location/fused/aq;

.field private final c:Landroid/location/LocationManager;

.field private final d:[Landroid/location/Location;

.field private final e:Landroid/os/Looper;

.field private final f:Lcom/google/android/location/fused/bm;

.field private final g:Z

.field private h:Landroid/location/Location;

.field private i:Z

.field private j:Ljava/util/Collection;

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;)V
    .locals 1

    .prologue
    .line 48
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/location/fused/b/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;Landroid/location/LocationManager;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;Landroid/location/LocationManager;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v2, Lcom/google/android/location/o/k;

    invoke-direct {v2, v1}, Lcom/google/android/location/o/k;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/location/fused/b/g;->a:Lcom/google/android/location/o/k;

    .line 34
    new-array v2, v0, [Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/location/fused/b/g;->d:[Landroid/location/Location;

    .line 39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/location/fused/b/g;->h:Landroid/location/Location;

    .line 40
    iput-boolean v1, p0, Lcom/google/android/location/fused/b/g;->i:Z

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/location/fused/b/g;->j:Ljava/util/Collection;

    .line 42
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/google/android/location/fused/b/g;->k:J

    .line 61
    iput-object p3, p0, Lcom/google/android/location/fused/b/g;->b:Lcom/google/android/location/fused/aq;

    .line 62
    iput-object p2, p0, Lcom/google/android/location/fused/b/g;->e:Landroid/os/Looper;

    .line 63
    iput-object p4, p0, Lcom/google/android/location/fused/b/g;->c:Landroid/location/LocationManager;

    .line 64
    new-instance v2, Lcom/google/android/location/fused/bm;

    invoke-direct {v2, p1, p2}, Lcom/google/android/location/fused/bm;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/location/fused/b/g;->f:Lcom/google/android/location/fused/bm;

    .line 65
    iget-object v2, p0, Lcom/google/android/location/fused/b/g;->f:Lcom/google/android/location/fused/bm;

    iput-object p0, v2, Lcom/google/android/location/fused/bm;->a:Lcom/google/android/location/fused/bo;

    .line 66
    iget-object v2, p0, Lcom/google/android/location/fused/b/g;->c:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/fused/b/g;->g:Z

    .line 67
    return-void

    :cond_0
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method private f()V
    .locals 8

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 130
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/g;->g:Z

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/g;->i:Z

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->j:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v0

    .line 138
    cmp-long v7, v0, v2

    if-gez v7, :cond_5

    :goto_2
    move-wide v2, v0

    .line 141
    goto :goto_1

    :cond_2
    move-wide v2, v4

    .line 144
    :cond_3
    iget-wide v0, p0, Lcom/google/android/location/fused/b/g;->k:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 147
    iput-wide v2, p0, Lcom/google/android/location/fused/b/g;->k:J

    .line 149
    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/android/location/fused/b/g;->e:Landroid/os/Looper;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 1

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->h:Landroid/location/Location;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/g;->i:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/b/g;->i:Z

    .line 73
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->f:Lcom/google/android/location/fused/bm;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bm;->a()V

    .line 74
    invoke-direct {p0}, Lcom/google/android/location/fused/b/g;->f()V

    .line 76
    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/location/fused/b/g;->j:Ljava/util/Collection;

    .line 90
    invoke-direct {p0}, Lcom/google/android/location/fused/b/g;->f()V

    .line 91
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/b/g;->h:Landroid/location/Location;

    .line 184
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/location/fused/b/g;->i:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/b/g;->i:Z

    .line 82
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->f:Lcom/google/android/location/fused/bm;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bm;->b()V

    .line 83
    invoke-direct {p0}, Lcom/google/android/location/fused/b/g;->f()V

    .line 85
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->a:Lcom/google/android/location/o/k;

    return-object v0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/location/fused/b/g;->h:Landroid/location/Location;

    .line 160
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->d:[Landroid/location/Location;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 161
    iget-object v0, p0, Lcom/google/android/location/fused/b/g;->b:Lcom/google/android/location/fused/aq;

    iget-object v1, p0, Lcom/google/android/location/fused/b/g;->d:[Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/google/android/location/fused/aq;->a([Landroid/location/Location;)V

    .line 162
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method
