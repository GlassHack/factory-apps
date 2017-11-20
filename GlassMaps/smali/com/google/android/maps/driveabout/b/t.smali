.class public final Lcom/google/android/maps/driveabout/b/t;
.super Lcom/google/android/maps/driveabout/util/SharedSingleton;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/b/t;


# instance fields
.field private c:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private d:Lcom/google/android/maps/driveabout/nav/q;

.field private e:Lcom/google/android/maps/driveabout/b/z;

.field private f:Lcom/google/android/maps/driveabout/b/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/maps/driveabout/b/t;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/b/t;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/b/t;->a:Lcom/google/android/maps/driveabout/b/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/SharedSingleton;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/b/t;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/maps/driveabout/b/t;->a:Lcom/google/android/maps/driveabout/b/t;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/b/t;->c(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/google/android/maps/driveabout/b/t;->a:Lcom/google/android/maps/driveabout/b/t;

    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/nav/q;)Lcom/google/android/maps/driveabout/b/z;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/maps/driveabout/b/z;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/b/z;-><init>(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;)V

    .line 125
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/n;)V

    .line 128
    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/b/x;)V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/maps/driveabout/b/u;

    const-string v1, "OfflineReroutingHelper"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/google/android/maps/driveabout/b/u;-><init>(Lcom/google/android/maps/driveabout/b/t;Ljava/lang/String;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/b/z;)V

    .line 108
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/u;->start()V

    .line 109
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->e:Lcom/google/android/maps/driveabout/b/z;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/z;->c()V

    .line 79
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->f:Lcom/google/android/maps/driveabout/b/z;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->f:Lcom/google/android/maps/driveabout/b/z;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/z;->c()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->d:Lcom/google/android/maps/driveabout/nav/q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/q;->b()V

    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->c:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o()V

    .line 84
    return-void
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->c:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 61
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/q;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->d:Lcom/google/android/maps/driveabout/nav/q;

    .line 63
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/cb;

    .line 64
    new-instance v1, Lcom/google/android/maps/driveabout/b/x;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/b/x;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/t;->d:Lcom/google/android/maps/driveabout/nav/q;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/b/t;->a(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/nav/q;)Lcom/google/android/maps/driveabout/b/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->e:Lcom/google/android/maps/driveabout/b/z;

    .line 66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->e:Lcom/google/android/maps/driveabout/b/z;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/z;->b()V

    .line 68
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bk;

    .line 70
    new-instance v1, Lcom/google/android/maps/driveabout/b/x;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/b/x;-><init>()V

    .line 71
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/t;->d:Lcom/google/android/maps/driveabout/nav/q;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/b/t;->a(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/nav/q;)Lcom/google/android/maps/driveabout/b/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->f:Lcom/google/android/maps/driveabout/b/z;

    .line 73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->f:Lcom/google/android/maps/driveabout/b/z;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/t;->a(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/b/x;)V

    .line 75
    return-void
.end method
