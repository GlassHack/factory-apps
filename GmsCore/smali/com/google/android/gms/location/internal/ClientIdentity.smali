.class public Lcom/google/android/gms/location/internal/ClientIdentity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/a;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/gms/location/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/ClientIdentity;->CREATOR:Lcom/google/android/gms/location/internal/a;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->c:I

    .line 41
    iput p2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    .line 42
    iput-object p3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(IILjava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    instance-of v1, p1, Lcom/google/android/gms/location/internal/ClientIdentity;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 58
    iget v1, p1, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    iget v2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    const-string v0, "%d:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/google/android/gms/location/internal/a;->a(Lcom/google/android/gms/location/internal/ClientIdentity;Landroid/os/Parcel;)V

    .line 76
    return-void
.end method
