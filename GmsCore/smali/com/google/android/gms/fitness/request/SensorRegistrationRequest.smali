.class public Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:I

.field b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/fitness/data/DataSource;

.field private final e:Lcom/google/android/gms/fitness/data/DataType;

.field private f:Lcom/google/android/gms/fitness/data/o;

.field private final g:J

.field private final h:J

.field private final i:Landroid/app/PendingIntent;

.field private final j:J

.field private final k:I

.field private final l:Ljava/util/List;

.field private final m:J

.field private final n:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/google/android/gms/fitness/request/l;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;IIJJLandroid/app/PendingIntent;JILjava/util/List;J)V
    .locals 5

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c:I

    .line 92
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->d:Lcom/google/android/gms/fitness/data/DataSource;

    .line 93
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e:Lcom/google/android/gms/fitness/data/DataType;

    .line 94
    if-nez p4, :cond_2

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f:Lcom/google/android/gms/fitness/data/o;

    .line 97
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_0

    int-to-long p7, p5

    :cond_0
    iput-wide p7, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g:J

    .line 99
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j:J

    .line 100
    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-nez v2, :cond_1

    int-to-long p9, p6

    :cond_1
    iput-wide p9, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h:J

    .line 102
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->l:Ljava/util/List;

    .line 103
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->i:Landroid/app/PendingIntent;

    .line 104
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k:I

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->n:Ljava/util/List;

    .line 106
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->m:J

    .line 107
    return-void

    .line 94
    :cond_2
    invoke-static {p4}, Lcom/google/android/gms/fitness/data/p;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;JJJLjava/util/List;Ljava/util/List;)V
    .locals 16

    .prologue
    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v10, 0x2

    const-wide v13, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V

    .line 156
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c:I

    .line 174
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->d:Lcom/google/android/gms/fitness/data/DataSource;

    .line 175
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e:Lcom/google/android/gms/fitness/data/DataType;

    .line 176
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f:Lcom/google/android/gms/fitness/data/o;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->i:Landroid/app/PendingIntent;

    .line 178
    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g:J

    .line 179
    iput-wide p6, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j:J

    .line 180
    iput-wide p8, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h:J

    .line 181
    iput p10, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k:I

    .line 182
    iput-object p11, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->l:Ljava/util/List;

    .line 183
    iput-object p12, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->n:Ljava/util/List;

    .line 184
    iput-wide p13, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->m:J

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V
    .locals 15

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V

    .line 138
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->d:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f:Lcom/google/android/gms/fitness/data/o;

    .line 265
    return-void
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/o;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f:Lcom/google/android/gms/fitness/data/o;

    return-object v0
.end method

.method public final d()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->i:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 306
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->d:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->d:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k:I

    iget v3, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->l:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->l:Ljava/util/List;

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

.method public final f()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h:J

    return-wide v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->l:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 323
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->d:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f:Lcom/google/android/gms/fitness/data/o;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->l:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->n:Ljava/util/List;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k:I

    return v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->m:J

    return-wide v0
.end method

.method final l()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c:I

    return v0
.end method

.method final m()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f:Lcom/google/android/gms/fitness/data/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 274
    const-string v0, "SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->d:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 301
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/l;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Landroid/os/Parcel;I)V

    .line 302
    return-void
.end method
