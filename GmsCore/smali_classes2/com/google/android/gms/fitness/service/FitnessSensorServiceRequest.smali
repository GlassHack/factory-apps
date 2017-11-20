.class public Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataSource;

.field private final c:Lcom/google/android/gms/fitness/data/o;

.field private final d:J

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/gms/fitness/service/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/service/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Landroid/os/IBinder;JJ)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->a:I

    .line 54
    iput-object p2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 55
    invoke-static {p3}, Lcom/google/android/gms/fitness/data/p;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->c:Lcom/google/android/gms/fitness/data/o;

    .line 56
    iput-wide p4, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->d:J

    .line 57
    iput-wide p6, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->e:J

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/service/g;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->a:I

    .line 62
    iget-object v0, p1, Lcom/google/android/gms/fitness/service/g;->a:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 63
    iget-object v0, p1, Lcom/google/android/gms/fitness/service/g;->b:Lcom/google/android/gms/fitness/data/o;

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->c:Lcom/google/android/gms/fitness/data/o;

    .line 64
    iget-wide v0, p1, Lcom/google/android/gms/fitness/service/g;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->d:J

    .line 65
    iget-wide v0, p1, Lcom/google/android/gms/fitness/service/g;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->e:J

    .line 66
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/fitness/service/g;B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;-><init>(Lcom/google/android/gms/fitness/service/g;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->d:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->e:J

    return-wide v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method final e()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->c:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

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

.method public hashCode()I
    .locals 4

    .prologue
    .line 223
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    const-string v0, "FitnessSensorServiceRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 206
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/service/h;->a(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Landroid/os/Parcel;I)V

    .line 207
    return-void
.end method
