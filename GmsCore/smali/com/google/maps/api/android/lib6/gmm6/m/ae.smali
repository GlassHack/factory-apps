.class public Lcom/google/maps/api/android/lib6/gmm6/m/ae;
.super Lcom/google/maps/api/android/lib6/gmm6/m/a;


# static fields
.field private static final e:Ljava/util/List;


# instance fields
.field protected f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;IFLjava/util/Locale;ZLjava/io/File;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vts"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/o;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "DriveAbout"

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->e:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v12}, Lcom/google/maps/api/android/lib6/gmm6/m/a;-><init>(Lcom/google/maps/api/android/lib6/b/o;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/List;IIFZLjava/util/Locale;ZLjava/io/File;Lcom/google/maps/api/android/lib6/gmm6/m/b/g;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->f:J

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/o;->o()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final g()V
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/p;->a()V

    :try_start_0
    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/p;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/p;->b()V

    throw v0
.end method

.method protected final h()Lcom/google/maps/api/android/lib6/gmm6/m/h;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/af;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/af;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/ae;)V

    return-object v0
.end method

.method public final k()V
    .locals 2

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->f:J

    return-void
.end method
