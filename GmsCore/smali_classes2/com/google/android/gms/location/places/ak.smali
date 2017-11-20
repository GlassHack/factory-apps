.class public final Lcom/google/android/gms/location/places/ak;
.super Lcom/google/android/gms/location/places/internal/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/places/z;

.field private final b:Lcom/google/android/gms/location/places/ah;

.field private final c:Lcom/google/android/gms/location/places/af;

.field private final d:Lcom/google/android/gms/location/places/ai;

.field private final e:Lcom/google/android/gms/location/places/aj;

.field private final f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/af;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/location/places/ak;->a:Lcom/google/android/gms/location/places/z;

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/b;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->b:Lcom/google/android/gms/location/places/ah;

    .line 61
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->d:Lcom/google/android/gms/location/places/ai;

    .line 62
    iput-object p2, p0, Lcom/google/android/gms/location/places/ak;->c:Lcom/google/android/gms/location/places/af;

    .line 63
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->e:Lcom/google/android/gms/location/places/aj;

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->f:Landroid/content/Context;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/af;B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/ak;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/af;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/ah;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/location/places/ak;->a:Lcom/google/android/gms/location/places/z;

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/b;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/google/android/gms/location/places/ak;->b:Lcom/google/android/gms/location/places/ah;

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->d:Lcom/google/android/gms/location/places/ai;

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->c:Lcom/google/android/gms/location/places/af;

    .line 47
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->e:Lcom/google/android/gms/location/places/aj;

    .line 48
    iput-object p3, p0, Lcom/google/android/gms/location/places/ak;->f:Landroid/content/Context;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/ah;Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/location/places/ak;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/ah;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/ai;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/location/places/ak;->a:Lcom/google/android/gms/location/places/z;

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/b;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->b:Lcom/google/android/gms/location/places/ah;

    .line 53
    iput-object p2, p0, Lcom/google/android/gms/location/places/ak;->d:Lcom/google/android/gms/location/places/ai;

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->c:Lcom/google/android/gms/location/places/af;

    .line 55
    iput-object v0, p0, Lcom/google/android/gms/location/places/ak;->e:Lcom/google/android/gms/location/places/aj;

    .line 56
    iput-object p3, p0, Lcom/google/android/gms/location/places/ak;->f:Landroid/content/Context;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/ai;Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/location/places/ak;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/ai;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->b:Lcom/google/android/gms/location/places/ah;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/location/places/ak;->d:Lcom/google/android/gms/location/places/ai;

    if-eqz v4, :cond_2

    move v4, v1

    :goto_1
    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_2
    const-string v4, "Only one of placeEstimator or placeReturner can be null"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->b:Lcom/google/android/gms/location/places/ah;

    if-eqz v0, :cond_4

    move v0, v1

    .line 82
    :goto_3
    if-nez p1, :cond_6

    .line 83
    invoke-static {}, Lcom/google/android/gms/location/places/z;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lcom/google/android/gms/location/places/z;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPlaceEstimated received null DataHolder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/util/u;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->b:Lcom/google/android/gms/location/places/ah;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/ah;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 108
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 77
    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    .line 80
    goto :goto_3

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->d:Lcom/google/android/gms/location/places/ai;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/ai;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_4

    .line 95
    :cond_6
    new-instance v4, Lcom/google/android/gms/location/places/k;

    const/16 v5, 0x64

    iget-object v6, p0, Lcom/google/android/gms/location/places/ak;->f:Landroid/content/Context;

    invoke-direct {v4, p1, v5, v6}, Lcom/google/android/gms/location/places/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V

    .line 97
    iget-object v5, p0, Lcom/google/android/gms/location/places/ak;->a:Lcom/google/android/gms/location/places/z;

    invoke-static {v5, v4}, Lcom/google/android/gms/location/places/z;->a(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/k;)V

    .line 98
    if-eqz v0, :cond_7

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->b:Lcom/google/android/gms/location/places/ah;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/location/places/ah;->a(Lcom/google/android/gms/common/api/aa;)V

    goto :goto_4

    .line 101
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/location/places/k;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    .line 102
    invoke-virtual {v4}, Lcom/google/android/gms/location/places/k;->c()I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {v4, v2}, Lcom/google/android/gms/location/places/k;->c(I)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    .line 103
    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v0

    .line 104
    :goto_6
    invoke-virtual {v4}, Lcom/google/android/gms/location/places/k;->a()V

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/location/places/ak;->d:Lcom/google/android/gms/location/places/ai;

    new-instance v2, Lcom/google/android/gms/location/places/y;

    invoke-direct {v2, v5, v0}, Lcom/google/android/gms/location/places/y;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/places/h;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/places/ai;->a(Lcom/google/android/gms/common/api/aa;)V

    goto :goto_4

    :cond_8
    move-object v0, v3

    .line 102
    goto :goto_5

    :cond_9
    move-object v0, v3

    .line 103
    goto :goto_6
.end method

.method public final b(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    .prologue
    .line 112
    if-nez p1, :cond_1

    .line 113
    invoke-static {}, Lcom/google/android/gms/location/places/z;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/google/android/gms/location/places/z;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAutocompletePrediction received null DataHolder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/util/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->c:Lcom/google/android/gms/location/places/af;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/af;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->c:Lcom/google/android/gms/location/places/af;

    new-instance v1, Lcom/google/android/gms/location/places/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/location/places/c;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/af;->a(Lcom/google/android/gms/common/api/aa;)V

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 127
    invoke-static {}, Lcom/google/android/gms/location/places/z;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/google/android/gms/location/places/z;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlaceUserDataFetched received null DataHolder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/util/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->e:Lcom/google/android/gms/location/places/aj;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/aj;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/location/places/ak;->e:Lcom/google/android/gms/location/places/aj;

    new-instance v1, Lcom/google/android/gms/location/places/personalized/b;

    invoke-direct {v1, p1}, Lcom/google/android/gms/location/places/personalized/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/aj;->a(Lcom/google/android/gms/common/api/aa;)V

    goto :goto_0
.end method
