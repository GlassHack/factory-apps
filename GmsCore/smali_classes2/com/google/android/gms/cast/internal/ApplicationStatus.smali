.class public Lcom/google/android/gms/cast/internal/ApplicationStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/cast/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/ApplicationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/internal/ApplicationStatus;-><init>(ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/google/android/gms/cast/internal/ApplicationStatus;->a:I

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/ApplicationStatus;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/gms/cast/internal/ApplicationStatus;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/ApplicationStatus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 62
    if-ne p1, p0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/cast/internal/ApplicationStatus;

    if-nez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/internal/ApplicationStatus;

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/ApplicationStatus;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/cast/internal/ApplicationStatus;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/ApplicationStatus;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/google/android/gms/cast/internal/a;->a(Lcom/google/android/gms/cast/internal/ApplicationStatus;Landroid/os/Parcel;)V

    .line 58
    return-void
.end method
