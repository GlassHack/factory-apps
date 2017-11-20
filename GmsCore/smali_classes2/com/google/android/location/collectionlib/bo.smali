.class public final Lcom/google/android/location/collectionlib/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Set;

.field public b:Lcom/google/android/location/collectionlib/aj;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[B

.field public f:J

.field public g:Z

.field public h:Lcom/google/android/location/collectionlib/SensorScannerConfig;

.field public i:Z

.field public j:Lcom/google/android/location/p/j;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object v2, p0, Lcom/google/android/location/collectionlib/bo;->c:Ljava/lang/String;

    .line 269
    iput-object v2, p0, Lcom/google/android/location/collectionlib/bo;->d:Ljava/lang/String;

    .line 271
    iput-object v2, p0, Lcom/google/android/location/collectionlib/bo;->e:[B

    .line 274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/bo;->k:J

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bo;->g:Z

    .line 278
    iput-object v2, p0, Lcom/google/android/location/collectionlib/bo;->h:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bo;->i:Z

    .line 283
    iput-object v2, p0, Lcom/google/android/location/collectionlib/bo;->j:Lcom/google/android/location/p/j;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/location/collectionlib/RealCollectorConfig;
    .locals 18

    .prologue
    .line 481
    new-instance v3, Lcom/google/android/location/collectionlib/RealCollectorConfig;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/bo;->a:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/location/collectionlib/bo;->g:Z

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/collectionlib/bo;->k:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/location/collectionlib/bo;->f:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/collectionlib/bo;->h:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/collectionlib/bo;->b:Lcom/google/android/location/collectionlib/aj;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/location/collectionlib/bo;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/location/collectionlib/bo;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/location/collectionlib/bo;->e:[B

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/location/collectionlib/bo;->i:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bo;->j:Lcom/google/android/location/p/j;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/location/collectionlib/RealCollectorConfig;-><init>(Ljava/util/Set;ZJJLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/aj;Ljava/lang/String;Ljava/lang/String;[BZLcom/google/android/location/p/j;B)V

    return-object v3
.end method

.method public final a(J)Lcom/google/android/location/collectionlib/bo;
    .locals 1

    .prologue
    .line 407
    iput-wide p1, p0, Lcom/google/android/location/collectionlib/bo;->f:J

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/bo;->g:Z

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bo;->h:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    .line 410
    return-object p0
.end method
