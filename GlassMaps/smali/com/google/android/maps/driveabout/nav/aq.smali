.class public final Lcom/google/android/maps/driveabout/nav/aq;
.super Lcom/google/android/maps/driveabout/nav/ao;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/aq;->a:Z

    .line 25
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/nav/aq;->a(Lcom/google/android/maps/driveabout/nav/w;)V

    .line 26
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 5

    .prologue
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aq;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    iput-wide v3, p0, Lcom/google/android/maps/driveabout/nav/aq;->b:D

    .line 38
    iput-wide v3, p0, Lcom/google/android/maps/driveabout/nav/aq;->c:D

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v1

    .line 42
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v0

    .line 41
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 43
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/model/ab;D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/nav/aq;->b:D

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/w;->b(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/aq;->c:D

    goto :goto_0

    .line 50
    :cond_1
    iput-wide v3, p0, Lcom/google/android/maps/driveabout/nav/aq;->b:D

    .line 51
    iput-wide v3, p0, Lcom/google/android/maps/driveabout/nav/aq;->c:D

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/nav/aq;->a:Z

    .line 69
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/aq;->a:Z

    return v0
.end method

.method public final k()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/aq;->b:D

    return-wide v0
.end method
