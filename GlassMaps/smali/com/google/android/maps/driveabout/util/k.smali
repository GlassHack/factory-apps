.class public final Lcom/google/android/maps/driveabout/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field private volatile a:I

.field private final b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/k;->a:I

    .line 35
    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/k;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 36
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/maps/driveabout/g/i;

    iget v1, p0, Lcom/google/android/maps/driveabout/util/k;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/k;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 74
    invoke-virtual {v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/util/k;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 75
    invoke-virtual {v3}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/util/k;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 76
    invoke-virtual {v4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/maps/driveabout/util/k;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 77
    invoke-virtual {v6}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->n()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/g/i;-><init>(IIIJI)V

    .line 72
    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/googlenav/datarequest/d;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/maps/driveabout/g/g;

    const-string v1, "onComplete"

    invoke-direct {v0, v1, p1}, Lcom/google/android/maps/driveabout/g/g;-><init>(Ljava/lang/String;Lcom/google/googlenav/datarequest/d;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 41
    iget v0, p0, Lcom/google/android/maps/driveabout/util/k;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/util/k;->a:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/k;->a()V

    .line 58
    :cond_0
    return-void
.end method

.method public final onNetworkError(IZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/maps/driveabout/g/h;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/g/h;-><init>(IZ)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 64
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/k;->a()V

    .line 65
    return-void
.end method

.method public final onPermanentFailure(Lcom/google/googlenav/datarequest/d;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
