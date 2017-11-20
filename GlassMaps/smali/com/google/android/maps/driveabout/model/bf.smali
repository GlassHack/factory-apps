.class public final Lcom/google/android/maps/driveabout/model/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/model/aw;

.field private b:I

.field private c:I

.field private d:[Lcom/google/android/maps/driveabout/model/j;

.field private e:Lcom/google/android/maps/driveabout/model/ar;

.field private f:[Ljava/lang/String;

.field private g:J

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:I

.field private k:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field private l:[Lcom/google/android/maps/driveabout/model/bb;

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v0, p0, Lcom/google/android/maps/driveabout/model/bf;->c:I

    .line 107
    iput-wide v1, p0, Lcom/google/android/maps/driveabout/model/bf;->g:J

    .line 110
    iput v0, p0, Lcom/google/android/maps/driveabout/model/bf;->j:I

    .line 111
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/bf;->k:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 113
    iput-wide v1, p0, Lcom/google/android/maps/driveabout/model/bf;->m:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/be;
    .locals 17

    .prologue
    .line 181
    new-instance v1, Lcom/google/android/maps/driveabout/model/be;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/model/bf;->e:Lcom/google/android/maps/driveabout/model/ar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/model/bf;->f:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/model/bf;->a:Lcom/google/android/maps/driveabout/model/aw;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/model/bf;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/maps/driveabout/model/bf;->c:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/model/bf;->h:[Ljava/lang/String;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/model/bf;->i:[Ljava/lang/String;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/maps/driveabout/model/bf;->j:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/model/bf;->d:[Lcom/google/android/maps/driveabout/model/j;

    if-nez v10, :cond_2

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/android/maps/driveabout/model/j;

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/model/bf;->k:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/model/bf;->l:[Lcom/google/android/maps/driveabout/model/bb;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/maps/driveabout/model/bf;->g:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/maps/driveabout/model/bf;->m:J

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/model/be;-><init>(Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aw;II[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/android/maps/driveabout/model/j;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;[Lcom/google/android/maps/driveabout/model/bb;JJ)V

    return-object v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/model/bf;->h:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/model/bf;->i:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/model/bf;->d:[Lcom/google/android/maps/driveabout/model/j;

    goto :goto_2
.end method

.method public final a(J)Lcom/google/android/maps/driveabout/model/bf;
    .locals 0

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/model/bf;->g:J

    .line 127
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ar;)Lcom/google/android/maps/driveabout/model/bf;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/bf;->e:Lcom/google/android/maps/driveabout/model/ar;

    .line 117
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/bf;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/bf;->a:Lcom/google/android/maps/driveabout/model/aw;

    .line 142
    return-object p0
.end method

.method public final a([Lcom/google/android/maps/driveabout/model/j;)Lcom/google/android/maps/driveabout/model/bf;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/bf;->d:[Lcom/google/android/maps/driveabout/model/j;

    .line 167
    return-object p0
.end method
