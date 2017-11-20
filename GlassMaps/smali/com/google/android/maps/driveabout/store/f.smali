.class final Lcom/google/android/maps/driveabout/store/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bq;


# instance fields
.field final a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/f;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 276
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/aw;[BIJJ)Lcom/google/android/maps/driveabout/model/av;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    .line 281
    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/util/a;->skipBytes(I)I

    .line 282
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/f;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/model/n;->a(Lcom/google/android/maps/driveabout/model/aw;Ljava/io/DataInput;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/model/n;

    move-result-object v0

    return-object v0
.end method
