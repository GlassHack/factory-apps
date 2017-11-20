.class public final Lcom/google/android/gms/fitness/data/Value;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .prologue
    .line 169
    new-instance v0, Lcom/google/android/gms/fitness/data/aa;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/gms/fitness/data/Value;-><init>(IIZF)V

    .line 40
    return-void
.end method

.method constructor <init>(IIZF)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->a:I

    .line 49
    iput p2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    .line 50
    iput-boolean p3, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    .line 51
    iput p4, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    .line 52
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 75
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 78
    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    .line 79
    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    .line 80
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 61
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 64
    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    .line 65
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    .line 66
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/Value;)V
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Value;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Values have incompatible format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 89
    iget-boolean v0, p1, Lcom/google/android/gms/fitness/data/Value;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    .line 90
    iget v0, p1, Lcom/google/android/gms/fitness/data/Value;->d:F

    iput v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    .line 91
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 116
    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "Value is not in int format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 118
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()F
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 129
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method final e()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Value;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Value;

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->b:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->c:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/Value;->c:Z

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final f()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->d:F

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 154
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

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->b:I

    packed-switch v0, :pswitch_data_0

    .line 165
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 188
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/data/aa;->a(Lcom/google/android/gms/fitness/data/Value;Landroid/os/Parcel;)V

    .line 189
    return-void
.end method
