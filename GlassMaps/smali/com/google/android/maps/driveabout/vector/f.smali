.class final Lcom/google/android/maps/driveabout/vector/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;

.field private b:[Lcom/google/android/maps/driveabout/vector/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static a(III)I
    .locals 2

    .prologue
    .line 99
    shr-int v0, p0, p2

    and-int/lit8 v0, v0, 0x1

    .line 100
    shr-int v1, p1, p2

    and-int/lit8 v1, v1, 0x1

    .line 101
    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(IIILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/vector/d;)V
    .locals 6

    .prologue
    .line 74
    if-gtz p3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->a:Ljava/util/Map;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->a:Ljava/util/Map;

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_1
    add-int/lit8 v3, p3, -0x1

    .line 82
    invoke-static {p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/f;->a(III)I

    move-result v1

    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->b:[Lcom/google/android/maps/driveabout/vector/f;

    if-nez v0, :cond_2

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/f;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->b:[Lcom/google/android/maps/driveabout/vector/f;

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->b:[Lcom/google/android/maps/driveabout/vector/f;

    aget-object v0, v0, v1

    .line 87
    if-nez v0, :cond_3

    .line 88
    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/f;-><init>()V

    .line 89
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/f;->b:[Lcom/google/android/maps/driveabout/vector/f;

    aput-object v0, v2, v1

    :cond_3
    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/f;->a(IIILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/vector/d;)V

    goto :goto_0
.end method
