.class final Lcom/google/android/maps/driveabout/b/u;
.super Lcom/google/android/maps/driveabout/util/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/x;

.field final synthetic b:Lcom/google/android/maps/driveabout/b/z;

.field final synthetic c:Lcom/google/android/maps/driveabout/b/t;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/b/t;Ljava/lang/String;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/u;->c:Lcom/google/android/maps/driveabout/b/t;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/b/u;->a:Lcom/google/android/maps/driveabout/b/x;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/b/u;->b:Lcom/google/android/maps/driveabout/b/z;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->b()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const-string v1, "RouteFetcher"

    const-string v2, "Offline Rerouting Enabled"

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/u;->a:Lcom/google/android/maps/driveabout/b/x;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->y()Lcom/google/android/maps/driveabout/util/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/m;->m()I

    move-result v0

    .line 101
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/b/x;->a(I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/u;->b:Lcom/google/android/maps/driveabout/b/z;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/z;->b()V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "RouteFetcher"

    const-string v1, "Offline Rerouting Disabled"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
