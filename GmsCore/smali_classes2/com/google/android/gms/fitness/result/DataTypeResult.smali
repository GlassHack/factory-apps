.class public Lcom/google/android/gms/fitness/result/DataTypeResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/aa;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/api/Status;

.field private final c:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/gms/fitness/result/d;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/DataTypeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->a:I

    .line 49
    iput-object p2, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->b:Lcom/google/android/gms/common/api/Status;

    .line 50
    iput-object p3, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->a:I

    .line 58
    iput-object p1, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->b:Lcom/google/android/gms/common/api/Status;

    .line 59
    iput-object p2, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->c:Lcom/google/android/gms/fitness/data/DataType;

    .line 60
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/gms/fitness/result/DataTypeResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/result/DataTypeResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->c:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/result/DataTypeResult;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/result/DataTypeResult;

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->b:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/DataTypeResult;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->c:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/DataTypeResult;->c:Lcom/google/android/gms/fitness/data/DataType;

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

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->b:Lcom/google/android/gms/common/api/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->c:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataType"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/DataTypeResult;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 116
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/d;->a(Lcom/google/android/gms/fitness/result/DataTypeResult;Landroid/os/Parcel;I)V

    .line 117
    return-void
.end method
