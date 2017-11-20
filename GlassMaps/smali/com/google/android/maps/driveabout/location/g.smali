.class final Lcom/google/android/maps/driveabout/location/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:D

.field e:D

.field f:Lcom/google/android/maps/driveabout/store/bj;

.field g:Lcom/google/android/maps/driveabout/location/h;

.field h:Lcom/google/android/maps/driveabout/nav/aa;

.field i:D

.field j:Lcom/google/android/maps/driveabout/model/ab;

.field k:I


# direct methods
.method constructor <init>(ILcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/location/h;Lcom/google/android/maps/driveabout/util/l;)V
    .locals 5

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput p1, p0, Lcom/google/android/maps/driveabout/location/g;->k:I

    .line 920
    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    .line 921
    iput-object p3, p0, Lcom/google/android/maps/driveabout/location/g;->g:Lcom/google/android/maps/driveabout/location/h;

    .line 924
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/model/ab;

    .line 925
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->c()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/model/ab;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZLcom/google/android/maps/driveabout/model/ab;)V

    .line 927
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->c()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/model/ab;

    .line 926
    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->i:D

    .line 930
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->b()Lcom/google/android/maps/driveabout/model/ao;

    move-result-object v0

    .line 931
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    .line 932
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v2

    float-to-double v2, v2

    .line 931
    invoke-virtual {p3, v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/location/h;->a(Lcom/google/android/maps/driveabout/model/ab;DLcom/google/android/maps/driveabout/model/ao;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->c:D

    .line 933
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/util/l;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    .line 934
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/location/g;)I
    .locals 4

    .prologue
    .line 985
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    iget-wide v2, p1, Lcom/google/android/maps/driveabout/location/g;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 986
    const/4 v0, -0x1

    .line 990
    :goto_0
    return v0

    .line 987
    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    iget-wide v2, p1, Lcom/google/android/maps/driveabout/location/g;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 988
    const/4 v0, 0x1

    goto :goto_0

    .line 990
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/text/DecimalFormat;D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1008
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, "-inf"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a()D
    .locals 2

    .prologue
    .line 953
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    return-wide v0
.end method

.method final a(Z)D
    .locals 5

    .prologue
    .line 937
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->c:D

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    .line 938
    if-eqz p1, :cond_0

    .line 940
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->g:Lcom/google/android/maps/driveabout/location/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    .line 941
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v2

    float-to-double v2, v2

    .line 940
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/location/h;->a(Lcom/google/android/maps/driveabout/model/ab;D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    .line 942
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->g:Lcom/google/android/maps/driveabout/location/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    .line 944
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v3

    float-to-double v3, v3

    .line 943
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/location/h;->a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/model/ab;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->b:D

    .line 945
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->g:Lcom/google/android/maps/driveabout/location/h;

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/location/g;->b:D

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/location/h;->b(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    .line 949
    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    return-wide v0
.end method

.method final a(D)V
    .locals 2

    .prologue
    .line 957
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    .line 958
    return-void
.end method

.method final b()V
    .locals 4

    .prologue
    .line 975
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->e:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    .line 976
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->e:D

    .line 977
    return-void
.end method

.method final b(D)V
    .locals 2

    .prologue
    .line 965
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->e:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 966
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/location/g;->e:D

    .line 968
    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 981
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    .line 982
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 875
    check-cast p1, Lcom/google/android/maps/driveabout/location/g;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/g;->a(Lcom/google/android/maps/driveabout/location/g;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 996
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 997
    iget v1, p0, Lcom/google/android/maps/driveabout/location/g;->k:I

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    .line 998
    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/g;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/location/g;->b:D

    .line 999
    invoke-static {v0, v3, v4}, Lcom/google/android/maps/driveabout/location/g;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/g;->c:D

    .line 1000
    invoke-static {v0, v4, v5}, Lcom/google/android/maps/driveabout/location/g;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    .line 1001
    invoke-static {v0, v5, v6}, Lcom/google/android/maps/driveabout/location/g;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/location/g;->i:D

    iget-object v7, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    .line 1003
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x67

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Candidate[id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ",L:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",OnRouteL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",EmitL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TransL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
