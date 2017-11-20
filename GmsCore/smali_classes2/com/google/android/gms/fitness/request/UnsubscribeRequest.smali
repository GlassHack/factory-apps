.class public Lcom/google/android/gms/fitness/request/UnsubscribeRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataType;

.field private final c:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/gms/fitness/request/x;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->a:I

    .line 49
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 50
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->c:Lcom/google/android/gms/fitness/data/DataSource;

    .line 51
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->c:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->c:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->c:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

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
    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->c:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 138
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/x;->a(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;Landroid/os/Parcel;I)V

    .line 139
    return-void
.end method
