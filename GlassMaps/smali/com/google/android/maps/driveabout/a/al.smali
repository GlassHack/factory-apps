.class public final Lcom/google/android/maps/driveabout/a/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/a/ar;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/a/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/a/ar;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;
    .locals 5

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    instance-of v1, p1, Lcom/google/android/maps/driveabout/a/au;

    if-eqz v1, :cond_1

    .line 72
    check-cast p1, Lcom/google/android/maps/driveabout/a/au;

    .line 73
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/au;->e()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/au;->f()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v2

    .line 75
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 76
    new-instance v0, Lcom/google/android/maps/driveabout/a/ai;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/maps/driveabout/a/a;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/a/ai;-><init>([Lcom/google/android/maps/driveabout/a/a;)V

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->a()V

    .line 87
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V
    .locals 3

    .prologue
    .line 57
    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/au;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/google/android/maps/driveabout/a/au;

    .line 59
    new-instance v0, Lcom/google/android/maps/driveabout/a/am;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/a/am;-><init>(Lcom/google/android/maps/driveabout/a/au;Lcom/google/android/maps/driveabout/a/as;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/au;->e()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    .line 62
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/au;->f()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->b()V

    .line 92
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
