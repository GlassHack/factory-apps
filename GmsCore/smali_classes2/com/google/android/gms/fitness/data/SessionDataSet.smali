.class public Lcom/google/android/gms/fitness/data/SessionDataSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field private final b:Lcom/google/android/gms/fitness/data/Session;

.field private final c:Lcom/google/android/gms/fitness/data/DataSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/gms/fitness/data/w;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/SessionDataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/fitness/data/DataSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->a:I

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->b:Lcom/google/android/gms/fitness/data/Session;

    .line 33
    iput-object p3, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->c:Lcom/google/android/gms/fitness/data/DataSet;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/fitness/data/DataSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->a:I

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->b:Lcom/google/android/gms/fitness/data/Session;

    .line 42
    iput-object p2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->c:Lcom/google/android/gms/fitness/data/DataSet;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->b:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataSet;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->c:Lcom/google/android/gms/fitness/data/DataSet;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/SessionDataSet;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/SessionDataSet;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->b:Lcom/google/android/gms/fitness/data/Session;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/SessionDataSet;->b:Lcom/google/android/gms/fitness/data/Session;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->c:Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/SessionDataSet;->c:Lcom/google/android/gms/fitness/data/DataSet;

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
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->b:Lcom/google/android/gms/fitness/data/Session;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->c:Lcom/google/android/gms/fitness/data/DataSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->b:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSet"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/SessionDataSet;->c:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/w;->a(Lcom/google/android/gms/fitness/data/SessionDataSet;Landroid/os/Parcel;I)V

    .line 86
    return-void
.end method
