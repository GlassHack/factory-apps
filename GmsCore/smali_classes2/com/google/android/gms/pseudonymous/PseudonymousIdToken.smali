.class public Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/pseudonymous/a;

    invoke-direct {v0}, Lcom/google/android/gms/pseudonymous/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a:I

    .line 34
    iput-object p2, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;-><init>(ILjava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    instance-of v1, p1, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    if-eqz v1, :cond_0

    .line 48
    check-cast p1, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a:I

    iget v2, p1, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 52
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PseudonymousIdToken("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/google/android/gms/pseudonymous/a;->a(Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;Landroid/os/Parcel;)V

    .line 73
    return-void
.end method
