.class public final Lcom/google/android/maps/driveabout/store/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/maps/driveabout/model/aw;

.field final b:Lcom/google/android/maps/driveabout/store/bt;

.field final c:Z

.field final d:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

.field final e:Z

.field f:I

.field private g:Lcom/google/android/maps/driveabout/store/p;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V
    .locals 6

    .prologue
    .line 1228
    sget-object v3, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->NORMAL:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;ZI)V

    .line 1230
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;ZI)V
    .locals 1

    .prologue
    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    .line 1218
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/p;->a:Lcom/google/android/maps/driveabout/model/aw;

    .line 1219
    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/p;->b:Lcom/google/android/maps/driveabout/store/bt;

    .line 1220
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/p;->d:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    .line 1221
    sget-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_AREA:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_ROUTE:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    .line 1222
    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/p;->c:Z

    .line 1223
    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/store/p;->e:Z

    .line 1224
    iput p5, p0, Lcom/google/android/maps/driveabout/store/p;->f:I

    .line 1225
    return-void

    .line 1222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ILcom/google/android/maps/driveabout/model/av;)V
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->b:Lcom/google/android/maps/driveabout/store/bt;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/p;->a:Lcom/google/android/maps/driveabout/model/aw;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/maps/driveabout/store/bt;->handleTile(Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V

    .line 1278
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/maps/driveabout/model/aw;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->a:Lcom/google/android/maps/driveabout/model/aw;

    return-object v0
.end method

.method protected final a(I)V
    .locals 0

    .prologue
    .line 1266
    iput p1, p0, Lcom/google/android/maps/driveabout/store/p;->f:I

    .line 1267
    return-void
.end method

.method final a(ILcom/google/android/maps/driveabout/model/av;)V
    .locals 0

    .prologue
    .line 1286
    :goto_0
    if-eqz p0, :cond_0

    .line 1287
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/p;->b(ILcom/google/android/maps/driveabout/model/av;)V

    .line 1286
    iget-object p0, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    goto :goto_0

    .line 1289
    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/p;)V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    iput-object v0, p1, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    .line 1273
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    .line 1274
    return-void
.end method

.method protected final b()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->d:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    return-object v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/p;->c:Z

    return v0
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 1249
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/p;->e:Z

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 1253
    iget v0, p0, Lcom/google/android/maps/driveabout/store/p;->f:I

    return v0
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 1257
    :goto_0
    if-eqz p0, :cond_1

    .line 1258
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1259
    const/4 v0, 0x0

    .line 1262
    :goto_1
    return v0

    .line 1257
    :cond_0
    iget-object p0, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    goto :goto_0

    .line 1262
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
