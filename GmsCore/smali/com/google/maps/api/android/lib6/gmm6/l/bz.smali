.class public final Lcom/google/maps/api/android/lib6/gmm6/l/bz;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field b:I

.field c:I

.field public d:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

.field public e:Lcom/google/maps/api/android/lib6/gmm6/l/ab;

.field public f:J

.field g:[Ljava/lang/String;

.field h:[Ljava/lang/String;

.field i:I

.field j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field k:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->c:I

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->f:J

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->i:I

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->k:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/by;
    .locals 18

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->e:Lcom/google/maps/api/android/lib6/gmm6/l/ab;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->b:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->g:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    new-array v8, v2, [Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->h:[Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->i:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    new-array v11, v2, [Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->f:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->k:J

    move-wide/from16 v16, v0

    invoke-direct/range {v3 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/l/by;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;IBI[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/l/av;[Lcom/google/maps/api/android/lib6/gmm6/l/bt;JJ)V

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->g:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->h:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    goto :goto_2
.end method
