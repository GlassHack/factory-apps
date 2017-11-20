.class public Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;
.super Lcom/google/android/gms/location/places/personalized/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/internal/a;


# instance fields
.field final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/location/places/personalized/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Lcom/google/android/gms/location/places/personalized/internal/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/location/places/personalized/d;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->a:I

    .line 45
    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Lcom/google/android/gms/location/places/personalized/internal/a;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 55
    if-ne p0, p1, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    .line 58
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;

    if-nez v0, :cond_1

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "testName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;->CREATOR:Lcom/google/android/gms/location/places/personalized/internal/a;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/personalized/internal/a;->a(Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;Landroid/os/Parcel;)V

    .line 80
    return-void
.end method
