.class public final Lcom/google/android/gms/fitness/data/Value;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/x;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->a:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    iput p4, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/Value;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->b:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/Value;->c:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->e()I

    move-result v2

    invoke-direct {p1}, Lcom/google/android/gms/fitness/data/Value;->e()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->f()F

    move-result v2

    invoke-direct {p1}, Lcom/google/android/gms/fitness/data/Value;->f()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "Value is not in int format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/j;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()F
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/j;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    return v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->a:I

    return v0
.end method

.method final d()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Value;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Value;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Value;->a(Lcom/google/android/gms/fitness/data/Value;)Z

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

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/g;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/Value;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/x;->a(Lcom/google/android/gms/fitness/data/Value;Landroid/os/Parcel;I)V

    return-void
.end method
