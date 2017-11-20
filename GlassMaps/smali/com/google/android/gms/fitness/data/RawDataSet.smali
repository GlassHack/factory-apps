.class public final Lcom/google/android/gms/fitness/data/RawDataSet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:Ljava/util/List;

.field final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/s;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/RawDataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILjava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->a:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->b:I

    iput p3, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->c:I

    iput-object p4, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->d:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSet;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->a:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->e:Z

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/fitness/data/w;->a(Ljava/lang/Object;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/fitness/data/w;->a(Ljava/lang/Object;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->c:I

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/RawDataSet;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->b:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->c:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->c:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->e:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/RawDataSet;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/RawDataSet;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/RawDataSet;->a(Lcom/google/android/gms/fitness/data/RawDataSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/g;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "RawDataSet{%s@[%s, %s]}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/RawDataSet;->d:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/s;->a(Lcom/google/android/gms/fitness/data/RawDataSet;Landroid/os/Parcel;I)V

    return-void
.end method
