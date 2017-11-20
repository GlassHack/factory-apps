.class public Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/be/proximity/registration/v1/c;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:[B

.field final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->CREATOR:Lcom/google/android/gms/auth/be/proximity/registration/v1/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p4}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p5}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p6}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput p1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->a:I

    .line 56
    iput-object p2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->c:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->d:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->e:[B

    .line 60
    iput-object p6, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->f:[B

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 7

    .prologue
    .line 69
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 70
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()[B
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->e:[B

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->f:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;

    if-eqz v1, :cond_0

    .line 95
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->e:[B

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->e:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->f:[B

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->f:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 102
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->e:[B

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->f:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/c;->a(Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;Landroid/os/Parcel;)V

    .line 119
    return-void
.end method
