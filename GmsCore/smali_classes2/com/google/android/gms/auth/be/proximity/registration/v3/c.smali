.class public final Lcom/google/android/gms/auth/be/proximity/registration/v3/c;
.super Lcom/google/android/gms/auth/be/proximity/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/a/a;-><init>(B)V

    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    instance-of v0, p1, Lcom/google/android/gms/auth/be/proximity/registration/v3/c;

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
