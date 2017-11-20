.class final Lcom/google/android/maps/driveabout/store/ao;
.super Lcom/google/android/maps/driveabout/model/o;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/store/a;)V
    .locals 6

    .prologue
    .line 70
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/model/o;-><init>(Lcom/google/android/maps/driveabout/model/p;Ljava/util/List;IZLcom/google/android/maps/driveabout/store/a;)V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/store/a;Lcom/google/android/maps/driveabout/store/an;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/ao;-><init>(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/store/a;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ao;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[NotFoundBuilding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
