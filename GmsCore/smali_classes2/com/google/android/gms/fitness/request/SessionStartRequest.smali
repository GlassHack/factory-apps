.class public Lcom/google/android/gms/fitness/request/SessionStartRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/gms/fitness/request/q;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Session;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->a:I

    .line 49
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 89
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/SessionStartRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionStartRequest;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SessionStartRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionStartRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/q;->a(Lcom/google/android/gms/fitness/request/SessionStartRequest;Landroid/os/Parcel;I)V

    .line 116
    return-void
.end method
