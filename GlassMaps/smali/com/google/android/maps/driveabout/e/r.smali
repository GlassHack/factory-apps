.class public final Lcom/google/android/maps/driveabout/e/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Thread;

.field private volatile b:Lcom/google/android/maps/driveabout/e/t;

.field private final c:Lcom/google/android/maps/driveabout/f/b;

.field private final d:Lcom/google/android/maps/driveabout/e/e;

.field private final e:Lcom/google/android/maps/driveabout/e/a;

.field private final f:Lcom/google/android/maps/driveabout/e/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/store/bv;Ljava/lang/Thread;)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/r;->a:Ljava/lang/Thread;

    .line 64
    new-instance v0, Lcom/google/android/maps/driveabout/f/b;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/android/maps/driveabout/f/b;-><init>(Lcom/google/android/maps/driveabout/store/bv;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->c:Lcom/google/android/maps/driveabout/f/b;

    .line 65
    new-instance v0, Lcom/google/android/maps/driveabout/e/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/r;->c:Lcom/google/android/maps/driveabout/f/b;

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/e/a;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/f/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->e:Lcom/google/android/maps/driveabout/e/a;

    .line 66
    new-instance v0, Lcom/google/android/maps/driveabout/e/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/r;->c:Lcom/google/android/maps/driveabout/f/b;

    .line 67
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->y()Lcom/google/android/maps/driveabout/util/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/e;-><init>(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/util/m;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->d:Lcom/google/android/maps/driveabout/e/e;

    .line 68
    new-instance v0, Lcom/google/android/maps/driveabout/e/x;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/r;->c:Lcom/google/android/maps/driveabout/f/b;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/e/x;-><init>(Lcom/google/android/maps/driveabout/f/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->f:Lcom/google/android/maps/driveabout/e/x;

    .line 69
    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/model/am;
    .locals 5

    .prologue
    .line 165
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/maps/driveabout/model/ab;

    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    .line 168
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    aput-object v0, v3, v1

    move v1, v2

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    .line 171
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    aput-object v0, v3, v1

    move v1, v2

    .line 172
    goto :goto_1

    .line 173
    :cond_1
    invoke-static {v3}, Lcom/google/android/maps/driveabout/model/am;->a([Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    .line 175
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v2

    .line 176
    double-to-int v0, v2

    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->y()Lcom/google/android/maps/driveabout/util/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/m;->a()I

    move-result v2

    mul-int/2addr v0, v2

    .line 176
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/model/am;->b(I)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)Lcom/google/android/maps/driveabout/e/s;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 113
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/r;->b()V

    .line 117
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->c:Lcom/google/android/maps/driveabout/f/b;

    invoke-virtual {v0, v7}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/model/am;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->d:Lcom/google/android/maps/driveabout/e/e;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/e;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Ljava/util/Collection;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/google/android/maps/driveabout/e/s;

    invoke-direct {v0, v7, v3}, Lcom/google/android/maps/driveabout/e/s;-><init>(Lcom/google/android/maps/driveabout/nav/w;I)V

    .line 152
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->d:Lcom/google/android/maps/driveabout/e/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/e/e;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)Ljava/util/Collection;

    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lcom/google/android/maps/driveabout/e/s;

    invoke-direct {v0, v7, v3}, Lcom/google/android/maps/driveabout/e/s;-><init>(Lcom/google/android/maps/driveabout/nav/w;I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    const-string v0, "RouteFinderInternal"

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Startpoints found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    .line 129
    const-string v4, "RouteFinderInternal"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_2
    const-string v0, "RouteFinderInternal"

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x1c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Endpoints found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    .line 133
    const-string v4, "RouteFinderInternal"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 139
    :cond_3
    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/e/r;->a(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    .line 140
    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/r;->c:Lcom/google/android/maps/driveabout/f/b;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/model/am;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->f:Lcom/google/android/maps/driveabout/e/x;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/x;->a(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/e/aa;

    move-result-object v0

    .line 143
    if-nez v0, :cond_4

    .line 144
    new-instance v0, Lcom/google/android/maps/driveabout/e/s;

    const/4 v1, 0x2

    invoke-direct {v0, v7, v1}, Lcom/google/android/maps/driveabout/e/s;-><init>(Lcom/google/android/maps/driveabout/nav/w;I)V

    goto/16 :goto_0

    .line 147
    :cond_4
    const-string v1, "RouteFinderInternal"

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/aa;->a:Lcom/google/android/maps/driveabout/e/d;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/maps/driveabout/e/aa;->b:Lcom/google/android/maps/driveabout/e/d;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Found path from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/model/m;)V

    .line 150
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/r;->e:Lcom/google/android/maps/driveabout/e/a;

    .line 151
    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/maps/driveabout/e/a;->a(Lcom/google/android/maps/driveabout/e/aa;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/w;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    .line 152
    new-instance v0, Lcom/google/android/maps/driveabout/e/s;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/s;-><init>(Lcom/google/android/maps/driveabout/nav/w;I)V

    goto/16 :goto_0
.end method

.method private final b()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be called on RouteFinderThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->f:Lcom/google/android/maps/driveabout/e/x;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/x;->a()V

    .line 76
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/t;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/r;->b:Lcom/google/android/maps/driveabout/e/t;

    .line 86
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/r;->b()V

    .line 96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->b:Lcom/google/android/maps/driveabout/e/t;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/e/r;->b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)Lcom/google/android/maps/driveabout/e/s;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/r;->b:Lcom/google/android/maps/driveabout/e/t;

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/s;->a:Lcom/google/android/maps/driveabout/nav/w;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/s;->b:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/e/t;->a(Lcom/google/android/maps/driveabout/nav/w;I)V

    goto :goto_0
.end method
