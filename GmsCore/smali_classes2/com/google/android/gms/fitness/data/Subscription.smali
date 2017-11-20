.class public Lcom/google/android/gms/fitness/data/Subscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataSource;

.field private final c:Lcom/google/android/gms/fitness/data/DataType;

.field private final d:J

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/google/android/gms/fitness/data/y;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Subscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;JI)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/android/gms/fitness/data/Subscription;->a:I

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 56
    iput-object p3, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 57
    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    .line 58
    iput p6, p0, Lcom/google/android/gms/fitness/data/Subscription;->e:I

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/x;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->a:I

    .line 63
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/x;->b:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 64
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/x;->a:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 65
    iget-wide v0, p1, Lcom/google/android/gms/fitness/data/x;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    .line 66
    iget v0, p1, Lcom/google/android/gms/fitness/data/x;->d:I

    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->e:I

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/data/x;B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Subscription;-><init>(Lcom/google/android/gms/fitness/data/x;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/data/Subscription;)J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/fitness/data/Subscription;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->e:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription;
    .locals 7

    .prologue
    .line 269
    new-instance v0, Lcom/google/android/gms/fitness/data/Subscription;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    iget v6, p0, Lcom/google/android/gms/fitness/data/Subscription;->e:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/fitness/data/Subscription;-><init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;JI)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->e:I

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 227
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Subscription;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Subscription;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->e:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Subscription;->e:I

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

.method final f()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/google/android/gms/fitness/data/Subscription;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSource"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataType"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "samplingIntervalMicros"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "accuracyMode"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Subscription;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 287
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/y;->a(Lcom/google/android/gms/fitness/data/Subscription;Landroid/os/Parcel;I)V

    .line 288
    return-void
.end method
