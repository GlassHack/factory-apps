.class public final Lcom/google/android/gms/fitness/data/Field;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_FLOAT:I = 0x2

.field public static final FORMAT_INT32:I = 0x1


# instance fields
.field private final CZ:I

.field private final mName:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Field;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "format"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Field;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/fitness/data/Field;->CZ:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/data/Field;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/Field;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->CZ:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Field;->CZ:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Field;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Field;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Field;->a(Lcom/google/android/gms/fitness/data/Field;)Z

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

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->CZ:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string v1, "%s(%s)"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Field;->mName:Ljava/lang/String;

    aput-object v3, v2, v0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Field;->CZ:I

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/i;->a(Lcom/google/android/gms/fitness/data/Field;Landroid/os/Parcel;I)V

    return-void
.end method
