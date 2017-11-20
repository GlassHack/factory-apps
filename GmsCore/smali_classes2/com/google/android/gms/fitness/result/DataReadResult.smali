.class public Lcom/google/android/gms/fitness/result/DataReadResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/aa;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/common/api/Status;

.field private final d:Ljava/util/List;

.field private e:I

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/google/android/gms/fitness/result/b;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/DataReadResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Lcom/google/android/gms/common/api/Status;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->a:I

    .line 86
    iput-object p3, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->c:Lcom/google/android/gms/common/api/Status;

    .line 87
    iput p5, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->e:I

    .line 89
    iput-object p6, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->f:Ljava/util/List;

    .line 90
    iput-object p7, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->g:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    .line 92
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/RawDataSet;

    .line 93
    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {v3, v0, p6, p7}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    .line 96
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/RawBucket;

    .line 97
    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-direct {v3, v0, p6, p7}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(Lcom/google/android/gms/fitness/data/RawBucket;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->a:I

    .line 106
    iput-object p1, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    .line 107
    iput-object p3, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->c:Lcom/google/android/gms/common/api/Status;

    .line 108
    iput-object p2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->e:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->f:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->g:Ljava/util/List;

    .line 112
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;
    .locals 4

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 123
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 126
    new-instance v3, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    iput-object v0, v3, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v0, 0x1

    iput v0, v3, Lcom/google/android/gms/fitness/data/h;->b:I

    const-string v0, "Default"

    iput-object v0, v3, Lcom/google/android/gms/fitness/data/h;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/fitness/result/DataReadResult;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->e:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 227
    iput p1, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->e:I

    .line 228
    return-void
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->a:I

    return v0
.end method

.method final d()Ljava/util/List;
    .locals 6

    .prologue
    .line 309
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Bucket;

    .line 311
    new-instance v3, Lcom/google/android/gms/fitness/data/RawBucket;

    iget-object v4, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->g:Ljava/util/List;

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/gms/fitness/data/RawBucket;-><init>(Lcom/google/android/gms/fitness/data/Bucket;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_0
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method final e()Ljava/util/List;
    .locals 6

    .prologue
    .line 318
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 320
    new-instance v3, Lcom/google/android/gms/fitness/data/RawDataSet;

    iget-object v4, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->g:Ljava/util/List;

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/gms/fitness/data/RawDataSet;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 277
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/result/DataReadResult;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/result/DataReadResult;

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->c:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/DataReadResult;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method final f()Ljava/util/List;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->f:Ljava/util/List;

    return-object v0
.end method

.method final g()Ljava/util/List;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->g:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->c:Lcom/google/android/gms/common/api/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 293
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v1

    const-string v2, "dataSets"

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " data sets"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v1

    const-string v2, "buckets"

    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " buckets"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->b:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataReadResult;->d:Ljava/util/List;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 342
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/b;->a(Lcom/google/android/gms/fitness/result/DataReadResult;Landroid/os/Parcel;I)V

    .line 343
    return-void
.end method
