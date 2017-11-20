.class final Lcom/google/android/maps/driveabout/nav/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/nav/ad;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/nav/ad;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/af;->a:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/nav/ad;Lcom/google/android/maps/driveabout/nav/ae;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/af;-><init>(Lcom/google/android/maps/driveabout/nav/ad;)V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    .prologue
    .line 90
    instance-of v0, p1, Lcom/google/android/maps/driveabout/nav/f;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/af;->a:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/ad;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    check-cast p1, Lcom/google/android/maps/driveabout/nav/f;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final onNetworkError(IZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/af;->a:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/ad;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/nav/q;->a(IZ)V

    .line 99
    return-void
.end method

.method public final onPermanentFailure(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    .prologue
    .line 105
    instance-of v0, p1, Lcom/google/android/maps/driveabout/nav/f;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Lcom/google/android/maps/driveabout/nav/f;

    .line 107
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/f;->a(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/af;->a:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/ad;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 111
    :cond_0
    return-void
.end method
