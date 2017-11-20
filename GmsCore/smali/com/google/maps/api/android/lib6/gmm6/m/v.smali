.class public final Lcom/google/maps/api/android/lib6/gmm6/m/v;
.super Lcom/google/maps/api/android/lib6/gmm6/m/a;


# static fields
.field private static final e:Ljava/util/List;


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

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/v;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/Locale;Ljava/io/File;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rgts"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/m/v;->e:Ljava/util/List;

    const/4 v5, 0x1

    const/16 v6, 0x18

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v12}, Lcom/google/maps/api/android/lib6/gmm6/m/a;-><init>(Lcom/google/maps/api/android/lib6/b/o;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/List;IIFZLjava/util/Locale;ZLjava/io/File;Lcom/google/maps/api/android/lib6/gmm6/m/b/g;)V

    return-void
.end method


# virtual methods
.method protected final h()Lcom/google/maps/api/android/lib6/gmm6/m/h;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/w;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/v;)V

    return-object v0
.end method
