.class public final Lcom/google/android/maps/driveabout/store/aj;
.super Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;
.source "SourceFile"


# static fields
.field private static final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x5

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 25
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/store/aj;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;IILjava/util/Locale;Ljava/io/File;)V
    .locals 12

    .prologue
    .line 46
    const-string v0, "its"

    iget-object v1, p2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mSuffix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/16 v4, 0x100

    sget-object v5, Lcom/google/android/maps/driveabout/store/aj;->g:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V

    .line 49
    return-void

    .line 46
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final g()Lcom/google/android/maps/driveabout/store/m;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/maps/driveabout/store/ak;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/store/ak;-><init>(Lcom/google/android/maps/driveabout/store/aj;)V

    return-object v0
.end method
