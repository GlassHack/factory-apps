.class public final Lcom/google/android/location/fused/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/fused/ap;
.implements Lcom/google/android/location/o/aa;


# instance fields
.field private final a:Lcom/google/android/location/fused/ap;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/location/o/y;

.field private final d:Ljava/util/ArrayList;

.field private e:Ljava/util/Collection;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/ap;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/ay;->d:Ljava/util/ArrayList;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/ay;->e:Ljava/util/Collection;

    .line 42
    iput-boolean v1, p0, Lcom/google/android/location/fused/ay;->f:Z

    .line 43
    iput-boolean v1, p0, Lcom/google/android/location/fused/ay;->g:Z

    .line 44
    iput-boolean v1, p0, Lcom/google/android/location/fused/ay;->h:Z

    .line 48
    iput-object p1, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    .line 49
    iput-object p2, p0, Lcom/google/android/location/fused/ay;->b:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/google/android/location/o/y;

    invoke-direct {v0, p2, p0, p3}, Lcom/google/android/location/o/y;-><init>(Landroid/content/Context;Lcom/google/android/location/o/aa;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/ay;->c:Lcom/google/android/location/o/y;

    .line 51
    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/fused/ay;->d:Ljava/util/ArrayList;

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    iget-boolean v1, p0, Lcom/google/android/location/fused/ay;->f:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v0, v1}, Lcom/google/android/location/fused/ap;->a(Ljava/util/Collection;Z)V

    .line 155
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->f:Z

    if-eqz v0, :cond_4

    .line 156
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->h:Z

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->d()V

    .line 166
    :cond_1
    :goto_2
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->e:Ljava/util/Collection;

    goto :goto_0

    .line 154
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 160
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->h:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->c()V

    goto :goto_2
.end method


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1}, Lcom/google/android/location/fused/ap;->a(Z)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->g:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/ay;->g:Z

    .line 57
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->c:Lcom/google/android/location/o/y;

    invoke-virtual {v0}, Lcom/google/android/location/o/y;->a()V

    .line 60
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->a()V

    .line 62
    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Landroid/location/Location;I)V

    .line 119
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/fused/ap;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 9

    .prologue
    const/16 v8, 0x64

    .line 75
    iput-object p1, p0, Lcom/google/android/location/fused/ay;->e:Ljava/util/Collection;

    .line 76
    sget-object v0, Lcom/google/android/location/x;->F:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 77
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-ltz v5, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 82
    :cond_0
    new-instance v5, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v5, v1}, Lcom/google/android/gms/location/LocationRequest;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    .line 83
    new-instance v1, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-direct {v1, v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;-><init>(Lcom/google/android/gms/location/internal/LocationRequestInternal;)V

    .line 84
    invoke-virtual {v1, v5}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 85
    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 86
    const/16 v0, 0x66

    invoke-virtual {v5, v0}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    .line 88
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    .line 89
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    :cond_2
    move-object v0, v1

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/fused/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/android/location/fused/ay;->c(Z)V

    .line 96
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->g:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/ay;->g:Z

    .line 68
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->c:Lcom/google/android/location/o/y;

    invoke-virtual {v0}, Lcom/google/android/location/o/y;->b()V

    .line 69
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 71
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->f:Z

    if-eq p1, v0, :cond_0

    .line 142
    iput-boolean p1, p0, Lcom/google/android/location/fused/ay;->f:Z

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/fused/ay;->c(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->h:Z

    if-nez v0, :cond_0

    .line 101
    iput-boolean v1, p0, Lcom/google/android/location/fused/ay;->h:Z

    .line 102
    invoke-direct {p0, v1}, Lcom/google/android/location/fused/ay;->c(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/google/android/location/fused/ay;->h:Z

    if-eqz v0, :cond_0

    .line 110
    iput-boolean v1, p0, Lcom/google/android/location/fused/ay;->h:Z

    .line 111
    invoke-direct {p0, v1}, Lcom/google/android/location/fused/ay;->c(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/location/fused/ay;->a:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->e()Lcom/google/android/location/o/k;

    move-result-object v0

    return-object v0
.end method
