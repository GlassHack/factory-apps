.class public Lcom/google/android/gms/fitness/data/Bucket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private final d:Lcom/google/android/gms/fitness/data/Session;

.field private final e:I

.field private final f:Ljava/util/List;

.field private final g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/google/android/gms/fitness/data/e;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Bucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->h:Z

    .line 105
    iput p1, p0, Lcom/google/android/gms/fitness/data/Bucket;->a:I

    .line 106
    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/Bucket;->b:J

    .line 107
    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/Bucket;->c:J

    .line 108
    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Bucket;->d:Lcom/google/android/gms/fitness/data/Session;

    .line 109
    iput p7, p0, Lcom/google/android/gms/fitness/data/Bucket;->e:I

    .line 110
    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    .line 111
    iput p9, p0, Lcom/google/android/gms/fitness/data/Bucket;->g:I

    .line 112
    iput-boolean p10, p0, Lcom/google/android/gms/fitness/data/Bucket;->h:Z

    .line 113
    return-void
.end method

.method public constructor <init>(JJLcom/google/android/gms/fitness/data/Session;III)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->h:Z

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->a:I

    .line 130
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/Bucket;->b:J

    .line 131
    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/Bucket;->c:J

    .line 132
    iput-object p5, p0, Lcom/google/android/gms/fitness/data/Bucket;->d:Lcom/google/android/gms/fitness/data/Session;

    .line 133
    iput p6, p0, Lcom/google/android/gms/fitness/data/Bucket;->e:I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    .line 135
    iput p8, p0, Lcom/google/android/gms/fitness/data/Bucket;->g:I

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/RawBucket;Ljava/util/List;Ljava/util/List;)V
    .locals 11

    .prologue
    .line 143
    const/4 v1, 0x2

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/RawBucket;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawBucket;->c:J

    iget-object v6, p1, Lcom/google/android/gms/fitness/data/RawBucket;->d:Lcom/google/android/gms/fitness/data/Session;

    iget v7, p1, Lcom/google/android/gms/fitness/data/RawBucket;->e:I

    iget-object v0, p1, Lcom/google/android/gms/fitness/data/RawBucket;->f:Ljava/util/List;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/fitness/data/Bucket;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget v9, p1, Lcom/google/android/gms/fitness/data/RawBucket;->g:I

    iget-boolean v10, p1, Lcom/google/android/gms/fitness/data/RawBucket;->h:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V

    .line 151
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    packed-switch p0, :pswitch_data_0

    .line 305
    const-string v0, "bug"

    :goto_0
    return-object v0

    .line 295
    :pswitch_0
    const-string v0, "time"

    goto :goto_0

    .line 297
    :pswitch_1
    const-string v0, "type"

    goto :goto_0

    .line 299
    :pswitch_2
    const-string v0, "segment"

    goto :goto_0

    .line 301
    :pswitch_3
    const-string v0, "session"

    goto :goto_0

    .line 303
    :pswitch_4
    const-string v0, "unknown"

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/RawDataSet;

    .line 159
    new-instance v3, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {v3, v0, p1, p2}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->b:J

    return-wide v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSet;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/google/android/gms/fitness/data/Bucket;->h:Z

    .line 249
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->c:J

    return-wide v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->d:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->e:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 218
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Bucket;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Bucket;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Bucket;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Bucket;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->e:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Bucket;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->g:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Bucket;->g:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/Bucket;->h:Z

    if-ne v2, v3, :cond_2

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

.method public final f()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->g:I

    return v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 258
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 266
    :goto_0
    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 262
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 315
    .line 316
    const/16 v0, 0x28

    .line 317
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->d:Lcom/google/android/gms/fitness/data/Session;

    if-eqz v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->d:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    .line 320
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 271
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final i()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "activity"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "bucketType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->g:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Bucket;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "serverHasMoreData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 335
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/e;->a(Lcom/google/android/gms/fitness/data/Bucket;Landroid/os/Parcel;I)V

    .line 336
    return-void
.end method
