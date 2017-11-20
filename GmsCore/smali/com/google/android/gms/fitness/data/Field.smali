.class public final Lcom/google/android/gms/fitness/data/Field;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/gms/fitness/data/m;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/gms/fitness/data/Field;->a:I

    .line 44
    iput-object p2, p0, Lcom/google/android/gms/fitness/data/Field;->b:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/google/android/gms/fitness/data/Field;->c:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/data/Field;-><init>(ILjava/lang/String;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->c:I

    return v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->a:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Field;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Field;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Field;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Field;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Field;->c:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Field;->c:I

    if-ne v2, v3, :cond_2

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

.method public final hashCode()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    const-string v1, "%s(%s)"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Field;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->c:I

    if-ne v0, v4, :cond_0

    const-string v0, "i"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "f"

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/data/m;->a(Lcom/google/android/gms/fitness/data/Field;Landroid/os/Parcel;)V

    .line 96
    return-void
.end method
