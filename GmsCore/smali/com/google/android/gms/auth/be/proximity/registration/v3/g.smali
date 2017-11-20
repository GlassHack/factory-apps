.class public final Lcom/google/android/gms/auth/be/proximity/registration/v3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/registration/v3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/g;->a:Lcom/google/android/gms/auth/be/proximity/registration/v3/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/android/gms/auth/be/proximity/registration/v3/f;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/g;->a:Lcom/google/android/gms/auth/be/proximity/registration/v3/g;

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;-><init>(Ljava/io/OutputStream;B)V

    return-object v0
.end method
