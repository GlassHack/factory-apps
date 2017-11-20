.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:F

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/av;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/av;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(FLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/c/bb;->q(F)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->b:I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->d:I

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 4

    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(I)F

    move-result v0

    const/16 v1, 0x36

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    const/16 v3, 0x38

    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;-><init>(FLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->d:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->d:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
